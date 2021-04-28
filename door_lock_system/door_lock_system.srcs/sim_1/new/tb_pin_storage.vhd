----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2021 06:02:02 PM
-- Design Name: 
-- Module Name: tb_pin_storage - Behavioral
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
use work.lock_controller_typedef.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_pin_storage is
--  Port ( );
end tb_pin_storage;

architecture Behavioral of tb_pin_storage is
    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;
    
    --Local signals
    signal s_clk_100MHz     : std_logic;
    signal s_reset          : std_logic;
    
    signal pin              : pin_queue_t;
    signal c_pin            : pin_queue_t;
    
    signal s_store_new_pin  : std_logic;
begin

    -- (Unit Under Test 1) -- pin storage
    uut_db_3 : entity work.pin_storage
        port map(
            clk             => s_clk_100MHz,
            rst             => s_reset,
            
            new_pin         => pin,
            currnet_pin     => c_pin,
            store_new_pin   => s_store_new_pin
        );

    --------------------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 45000 ns loop         -- 75 periods of 100MHz clock
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

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        wait for 50 ns;
        pin(0)              <=  0;
        pin(1)              <=  1;
        pin(2)              <=  2;
        pin(3)              <=  3;  
        s_store_new_pin     <=  '1';
        wait for 10ns;
        s_store_new_pin     <=  '0';
        
        wait for 20 ns;
        assert(pin = c_pin) report "Pins are not equal";
        
        wait for 50 ns;
        pin(0)              <=  1;
        pin(1)              <=  3;
        pin(2)              <=  3;
        pin(3)              <=  7;  
        s_store_new_pin     <=  '1';
        wait for 10ns;
        s_store_new_pin     <=  '0';
        
        pin(0)              <=  9;
        pin(1)              <=  5;
        pin(2)              <=  9;
        pin(3)              <=  5;  

        wait for 20 ns;
        assert(pin = c_pin) report "Pins are not equal";
        
        report "Stimulus process finished" severity note;
        
        wait;
    end process p_stimulus;

end Behavioral;
