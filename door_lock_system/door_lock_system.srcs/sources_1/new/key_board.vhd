----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2021 09:15:31 PM
-- Design Name: 
-- Module Name: KeyBoard - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity key_board is
    Port (
            clk         : in    STD_LOGIC;
            rst         : in    STD_LOGIC;
            key_taken   : out   STD_LOGIC;
            key_out     : out   STD_LOGIC_VECTOR (12 - 1 downto 0);
            col_sel     : out   STD_LOGIC_VECTOR (3 - 1 downto 0);
            row_in      : in    STD_LOGIC_VECTOR (4 - 1 downto 0)
        );
end key_board;

architecture Behavioral of key_board is
    constant    fast_cnt_bit_n  : natural :=  4; -- 17 bit for production = 762 Hz counter, 3 bit for testing
    constant    slow_cnt_bit_n  : natural :=  5; -- 26 bit for production = ~2 Hz counter, 5 bit for testing
    
    signal  s_bounce_rst        : std_logic;
    signal  s_d_rst_single_shot : std_logic;
    signal  s_bounce_rst_sampler: std_logic_vector(2 - 1 downto 0);
    
    type    keyboard_stat_t is (COL1_CLEAR, COL1_SETUP, COL1_LOAD,
                                COL2_CLEAR, COL2_SETUP, COL2_LOAD,
                                COL3_CLEAR, COL3_SETUP, COL3_LOAD,
                                CLEAR_ALL, KEY_PRESSED_SUCCESFULLY);
    signal  s_keyboard_state    :   keyboard_stat_t;
    
    signal  s_col_selector_cnt  : std_logic_vector(2 - 1 downto 0);
    signal  s_col_fast_cnt      : std_logic_vector(fast_cnt_bit_n - 1 downto 0);
    signal  s_col_slow_cnt      : std_logic_vector(slow_cnt_bit_n - 1 downto 0);
    signal  s_row_in_dbn        : std_logic_vector(4 - 1 downto 0);
begin
    
    de_bouncer : entity work.de_bouncer
    port map (
        clk         => clk,
        rst         => rst,
        d_rst       => s_d_rst_single_shot,
        
        bouncy      => row_in,
        de_bouncy   => s_row_in_dbn
    );
    
    p_d_rst_single_show : process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                s_d_rst_single_shot     <=  '0';
                s_bounce_rst_sampler    <=  "00";
            else
                s_bounce_rst_sampler    <= s_bounce_rst & s_bounce_rst_sampler(0);
                if (s_bounce_rst_sampler = "10") then
                    s_d_rst_single_shot   <=  '1';
                else
                    s_d_rst_single_shot   <=  '0';
                end if;
            end if;
        end if;
    end process p_d_rst_single_show;
    
    p_row_lookup : process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                key_out             <=  "000000000000";
                col_sel             <=  "001";
                s_col_selector_cnt  <=  "00";
                s_bounce_rst        <=  '1';
                s_keyboard_state    <=  COL1_CLEAR;
                key_taken           <=  '0';
                s_col_fast_cnt      <=  "0000";
                s_col_slow_cnt      <=  "00000";
            else
                case s_keyboard_state is
                    when COL1_CLEAR =>
                        col_sel                 <= "001";
                        s_bounce_rst            <= '1';
                        s_keyboard_state        <=  COL1_SETUP;
                        s_col_fast_cnt          <= std_logic_vector(unsigned(s_col_fast_cnt) + 1);
                    when COL1_SETUP =>
                        s_bounce_rst            <= '0';
                        if (unsigned(s_col_fast_cnt) = 0) then
                            s_keyboard_state    <= COL1_LOAD;
                        else
                            s_col_fast_cnt      <= std_logic_vector(unsigned(s_col_fast_cnt) + 1);
                        end if;
                    when COL1_LOAD =>
                        key_out(0)  <=  s_row_in_dbn(0);
                        key_out(1)  <=  s_row_in_dbn(1);
                        key_out(2)  <=  s_row_in_dbn(2);
                        key_out(3)  <=  s_row_in_dbn(3);
                        if (s_row_in_dbn(0) ='1' 
                            or s_row_in_dbn(1) = '1' 
                            or s_row_in_dbn(2) = '1' 
                            or s_row_in_dbn(3) = '1') then
                            s_keyboard_state    <= KEY_PRESSED_SUCCESFULLY;
                        else
                            s_keyboard_state    <= COL2_CLEAR;
                        end if; 
                    -- col 2
                    when COL2_CLEAR =>
                        col_sel             <= "010";
                        s_bounce_rst        <= '1';
                        s_keyboard_state    <=  COL2_SETUP;
                        s_col_fast_cnt      <= std_logic_vector(unsigned(s_col_fast_cnt) + 1);
                    when COL2_SETUP =>
                        s_bounce_rst            <= '0';
                        if (unsigned(s_col_fast_cnt) = 0) then
                            s_keyboard_state    <= COL2_LOAD;
                        else
                            s_col_fast_cnt      <= std_logic_vector(unsigned(s_col_fast_cnt) + 1);
                        end if;
                    when COL2_LOAD =>
                        key_out(4)  <=  s_row_in_dbn(0);
                        key_out(5)  <=  s_row_in_dbn(1);
                        key_out(6)  <=  s_row_in_dbn(2);
                        key_out(7)  <=  s_row_in_dbn(3);
                        
                        if (s_row_in_dbn(0) ='1' 
                            or s_row_in_dbn(1) = '1' 
                            or s_row_in_dbn(2) = '1' 
                            or s_row_in_dbn(3) = '1') then
                            s_keyboard_state    <= KEY_PRESSED_SUCCESFULLY;
                        else
                            s_keyboard_state    <=  COL3_CLEAR;
                        end if;
                    -- col 3
                    when COL3_CLEAR =>
                        col_sel                 <= "100";
                        s_bounce_rst            <= '1';
                        s_keyboard_state        <=  COL3_SETUP;
                        s_col_fast_cnt          <= std_logic_vector(unsigned(s_col_fast_cnt) + 1);
                    when COL3_SETUP =>
                        s_bounce_rst            <= '0';
                        if (unsigned(s_col_fast_cnt) = 0) then
                            s_keyboard_state    <= COL3_LOAD;
                        else
                            s_col_fast_cnt      <= std_logic_vector(unsigned(s_col_fast_cnt) + 1);
                        end if;
                    when COL3_LOAD =>
                        key_out(8)  <=  s_row_in_dbn(0);
                        key_out(9)  <=  s_row_in_dbn(1);
                        key_out(10) <=  s_row_in_dbn(2);
                        key_out(11) <=  s_row_in_dbn(3);
                        
                        if (s_row_in_dbn(0) = '1' 
                            or s_row_in_dbn(1) = '1' 
                            or s_row_in_dbn(2) = '1' 
                            or s_row_in_dbn(3) = '1') then
                            s_keyboard_state    <= KEY_PRESSED_SUCCESFULLY;
                        else
                            s_keyboard_state    <= COL1_CLEAR;
                        end if;
                    
                    when KEY_PRESSED_SUCCESFULLY =>
                        -- put key for one cycle out, then end
                        key_taken           <=  '1';
                        s_keyboard_state    <=  CLEAR_ALL;
                        s_col_slow_cnt      <=  std_logic_vector(unsigned(s_col_slow_cnt) + 1);
                        
                    when CLEAR_ALL =>    
                        key_taken           <=  '0';
                        if (unsigned(s_col_slow_cnt) = 0) then -- pause between key presses
                            s_keyboard_state    <=  COL1_CLEAR;
                        else
                            s_col_slow_cnt      <=  std_logic_vector(unsigned(s_col_slow_cnt) + 1);    
                        end if;
                        
                    when others =>
                        s_keyboard_state    <=  COL1_CLEAR;
                end case;
            end if;
        end if;
    end process p_row_lookup;

end Behavioral;
