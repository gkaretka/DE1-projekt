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
            clk     : in    STD_LOGIC;
            rst     : in    STD_LOGIC;
            key_out : out   STD_LOGIC_VECTOR (12 - 1 downto 0);
            col_sel : out   STD_LOGIC_VECTOR (3 - 1 downto 0);
            row_in  : in    STD_LOGIC_VECTOR (4 - 1 downto 0)
        );
end key_board;

architecture Behavioral of key_board is
    signal  bounce_rst          : std_logic;
    signal  s_col_selector_cnt  : std_logic_vector(2 - 1 downto 0);
    signal  s_col_slow_cnt      : std_logic_vector(17 - 1 downto 0);
    signal  s_row_in_dbn        : std_logic_vector(4 - 1 downto 0);
begin
    
    de_speed : entity work.cnt_up_down
    generic map(
        g_CNT_WIDTH =>  17  -- 762 Hz counter
    )    
    port map (
        clk         => clk,
        reset       => rst,
        en_i        => '1',
        cnt_up_i    => '0',
        cnt_o       => s_col_slow_cnt
    );
    
    de_bouncer : entity work.de_bouncer
    port map (
        clk         => clk,
        rst         => rst,
        d_rst       => bounce_rst,
        
        bouncy      => row_in,
        de_bouncy   => s_row_in_dbn
    );
    
    row_lookup : process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                key_out             <=  "000000000000";
                col_sel             <=  "000";
                s_col_selector_cnt  <=  "00";
                bounce_rst          <=  '1';
            else
                if (unsigned(s_col_slow_cnt) = 0) then
                    case s_col_selector_cnt is
                        when "01" =>
                            key_out(0)  <=  s_row_in_dbn(0);
                            key_out(1)  <=  s_row_in_dbn(1);
                            key_out(2)  <=  s_row_in_dbn(2);
                            key_out(3)  <=  s_row_in_dbn(3);
                            col_sel     <= "010";
                            bounce_rst  <= '1';
                            s_col_selector_cnt <= std_logic_vector(unsigned(s_col_selector_cnt) + 1);
                        when "10" =>
                            key_out(4)  <=  s_row_in_dbn(0);
                            key_out(5)  <=  s_row_in_dbn(1);
                            key_out(6)  <=  s_row_in_dbn(2);
                            key_out(7)  <=  s_row_in_dbn(3);
                            col_sel     <= "100";
                            bounce_rst  <= '1';
                            s_col_selector_cnt <= std_logic_vector(unsigned(s_col_selector_cnt) + 1);
                        when "11" =>
                            key_out(8)  <=  s_row_in_dbn(0);
                            key_out(9)  <=  s_row_in_dbn(1);
                            key_out(10) <=  s_row_in_dbn(2);
                            key_out(11) <=  s_row_in_dbn(3);
                            col_sel     <= "000";
                            bounce_rst  <= '1';
                            s_col_selector_cnt <= std_logic_vector(unsigned(s_col_selector_cnt) + 1);
                        when others =>  -- 00
                            col_sel     <= "001";
                            bounce_rst  <= '1';
                            s_col_selector_cnt <= std_logic_vector(unsigned(s_col_selector_cnt) + 1);
                    end case;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
