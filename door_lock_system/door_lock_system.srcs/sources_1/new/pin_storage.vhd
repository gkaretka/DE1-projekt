----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2021 09:33:33 AM
-- Design Name: 
-- Module Name: pin_storage - Behavioral
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

entity pin_storage is
    Port (
        clk             : in    STD_LOGIC;
        rst             : in    STD_LOGIC;
        
        store_new_pin   : in    std_logic;
        new_pin         : in    pin_queue_t;
        
        currnet_pin     : out   pin_queue_t
    );
end pin_storage;

architecture Behavioral of pin_storage is
    constant    pin_0       : natural := 7;
    constant    pin_1       : natural := 5;
    constant    pin_2       : natural := 3;
    constant    pin_3       : natural := 3;
begin

    p_pin_system : process(clk)
    begin
        if (rising_edge(clk)) then
            if (rst = '1') then
                currnet_pin(0) <= pin_0;
                currnet_pin(1) <= pin_1;
                currnet_pin(2) <= pin_2;
                currnet_pin(3) <= pin_3;
            else
                if (store_new_pin = '1') then
                    currnet_pin <= new_pin;
                end if;
            end if;
        end if;
    end process p_pin_system;

end Behavioral;
