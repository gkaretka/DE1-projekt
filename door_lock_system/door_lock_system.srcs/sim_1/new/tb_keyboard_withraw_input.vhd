----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2021 10:07:52 PM
-- Design Name: 
-- Module Name: tb_keyboard_withraw_input - Behavioral
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
use work.typedef.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_keyboard_withraw_input is
--  Port ( );
end tb_keyboard_withraw_input;

architecture Behavioral of tb_keyboard_withraw_input is
    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;
    signal s_reset      : std_logic;
    
    type s_row_type is array (0 to 3 - 1) of std_logic_vector(4 - 1 downto 0);
    signal s_rows : s_row_type;
    
    signal s_col_sel    : STD_LOGIC_VECTOR (3 - 1 downto 0);
    signal s_row_in     : STD_LOGIC_VECTOR (4 - 1 downto 0);
    
    signal s_key_out    : STD_LOGIC_VECTOR (12 - 1 downto 0);
    signal s_take_key   : STD_LOGIC;
    
    signal s_cmd        : cmd_t;    
    signal s_data       : natural;
begin

    -- (Unit Under Test 1) -- keyboard
    uut_db_1 : entity work.key_board
        port map(
            clk         => s_clk_100MHz,
            rst         => s_reset,
            
            row_in      => s_row_in,
            col_sel     => s_col_sel,
            key_taken   => s_take_key,
            key_out     => s_key_out
        );
    
    -- (Unit Under Test 2) -- keyboard decoder
    uut_db_2 : entity work.keyboard_decoder
        port map(
            clk         => s_clk_100MHz,
            rst         => s_reset,
            
            cmd         => s_cmd,
            data        => s_data,
            
            key_out     => s_key_out,
            key_taken   => s_take_key
        );
        
    --------------------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 5000 ns loop         -- 75 periods of 100MHz clock
            s_clk_100MHz <= '0';
            wait for c_CLK_100MHZ_PERIOD / 2;
            s_clk_100MHz <= '1';
            wait for c_CLK_100MHZ_PERIOD / 2;
        end loop;
        wait;
    end process p_clk_gen;

    --------------------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------------------
    p_reset_gen : process
    begin
        s_reset <= '0';
        wait for 12 ns;
        s_reset <= '1';                 -- Reset activated
        wait for 20 ns;
        s_reset <= '0';
        wait;
    end process p_reset_gen;        

    -- button simulation
    p_update : process
    begin
        if (s_col_sel = "001") then
            s_row_in <= s_rows(0);
        elsif (s_col_sel = "010") then
            s_row_in <= s_rows(1);
        elsif (s_col_sel = "100") then
            s_row_in <= s_rows(2);
        end if;
        wait for 1 ns;
    end process p_update;
    
    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        -- Set data
        wait for 500 ns;
        s_rows(2)  <=   "0000";
        s_rows(1)  <=   "0000";
        s_rows(0)  <=   "0001"; -- 7
        wait for 700 ns; -- wait for recognition
        s_rows(2)  <=   "0000";
        s_rows(1)  <=   "0000";
        s_rows(0)  <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        -- Set data
        s_rows(2)  <=   "0000";
        s_rows(1)  <=   "0010"; -- 5
        s_rows(0)  <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)  <=   "0000";
        s_rows(1)  <=   "0000";
        s_rows(0)  <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        s_rows(2)  <=   "0100"; -- 3
        s_rows(1)  <=   "0000";
        s_rows(0)  <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)  <=   "0000";
        s_rows(1)  <=   "0000";
        s_rows(0)  <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;    

end Behavioral;
