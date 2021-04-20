----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2021 09:43:22 PM
-- Design Name: 
-- Module Name: tb_keyboard_decoder - Behavioral
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
use work.keyboard_decoder_typedef.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_keyboard_decoder is
--  Port ( );
end tb_keyboard_decoder;

architecture Behavioral of tb_keyboard_decoder is
    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

    signal s_key_out    : STD_LOGIC_VECTOR (12 - 1 downto 0);
    signal s_take_key   : STD_LOGIC;
    
    signal s_cmd        : cmd_t;    
    signal s_data       : natural;

    --Local signals
    signal s_clk_100MHz : std_logic;
    signal s_reset      : std_logic;
begin
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

    -- (Unit Under Test)
    uut_db : entity work.keyboard_decoder
        port map(
            clk         => s_clk_100MHz,
            rst         => s_reset,
            
            cmd         => s_cmd,
            data        => s_data,
            
            key_out     => s_key_out,
            key_taken   => s_take_key
        );
    
    p_stimulus : process 
    begin
    
        report "Stimulus process started" severity note;
        s_take_key  <= '0';
        
        wait for 100 ns;
        s_take_key  <= '1';
        s_key_out   <= "100000000000"; -- RESET
        wait for 10 ns;
        assert(s_cmd = RESET and s_data = 0) report("Data failed RESET");
        s_take_key  <= '0';
        wait for 10 ns;
        
        s_take_key  <= '1';
        s_key_out   <= "000000000100"; -- 1
        wait for 10 ns;
        assert(s_cmd = NUMBER and s_data = 1) report("Data failed 1");
        s_take_key  <= '0';
        wait for 10 ns;
        
        s_take_key  <= '1';
        s_key_out   <= "010000000000"; -- 3
        wait for 10 ns;
        assert(s_cmd = NUMBER and s_data = 3) report("Data failed 3");
        s_take_key  <= '0';
        wait for 10 ns;
        
        s_take_key  <= '1';
        s_key_out   <= "010000000000"; -- 3
        wait for 10 ns;
        assert(s_cmd = NUMBER and s_data = 3) report("Data failed 3");
        s_take_key  <= '0';
        wait for 10 ns;
        
        s_take_key  <= '1';
        s_key_out   <= "000000000001"; -- 7
        wait for 10 ns;
        assert(s_cmd = NUMBER and s_data = 7) report("Data failed 7");
        s_take_key  <= '0';
        wait for 10 ns;
        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end Behavioral;
