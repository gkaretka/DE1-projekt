----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2021 10:13:31 PM
-- Design Name: 
-- Module Name: de_bouncer - Behavioral
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

entity de_bouncer is
    Port (
        clk         : in    STD_LOGIC;
        rst         : in    STD_LOGIC;
        
        d_rst       : in    STD_LOGIC;
        bouncy      : in    std_logic_vector(4 - 1 downto 0);
        de_bouncy   : out   std_logic_vector(4 - 1 downto 0)
    );
end de_bouncer;

architecture Behavioral of de_bouncer is
    
    type debounce_type is array (0 to 3) of std_logic_vector(3 - 1 downto 0);
    signal debounce_array : debounce_type;
begin

    de_bouncy(0)   <=  '1' when unsigned(debounce_array(0)) > 4 else '0';
    de_bouncy(1)   <=  '1' when unsigned(debounce_array(1)) > 4 else '0';
    de_bouncy(2)   <=  '1' when unsigned(debounce_array(2)) > 4 else '0';
    de_bouncy(3)   <=  '1' when unsigned(debounce_array(3)) > 4 else '0';
    
    p_debouce : process(clk)
    begin
        if rising_edge(clk) then
            if (rst = '1') then
                debounce_array(0)   <=  "000";
                debounce_array(1)   <=  "000";
                debounce_array(2)   <=  "000";
                debounce_array(3)   <=  "000";
            elsif (d_rst = '1') then
                debounce_array(0)   <=  "000";
                debounce_array(1)   <=  "000";
                debounce_array(2)   <=  "000";
                debounce_array(3)   <=  "000";
            else
                if (bouncy(0) = '1' and not (debounce_array(0) = "111")) then
                    debounce_array(0)  <= std_logic_vector(unsigned(debounce_array(0)) + 1);
                elsif (bouncy(0) = '0' and not (debounce_array(0) = "000")) then
                    debounce_array(0)  <= std_logic_vector(unsigned(debounce_array(0)) - 1);
                end if;
                
                if (bouncy(1) = '1' and not (debounce_array(1) = "111")) then
                    debounce_array(1)  <= std_logic_vector(unsigned(debounce_array(1)) + 1);
                elsif (bouncy(1) = '0' and not (debounce_array(1) = "000")) then
                    debounce_array(1)  <= std_logic_vector(unsigned(debounce_array(1)) - 1);
                end if;
                
                if (bouncy(2) = '1' and not (debounce_array(2) = "111")) then
                    debounce_array(2)  <= std_logic_vector(unsigned(debounce_array(2)) + 1);
                elsif (bouncy(2) = '0' and not (debounce_array(2) = "000")) then
                    debounce_array(2)  <= std_logic_vector(unsigned(debounce_array(2)) - 1);
                end if;
                
                if (bouncy(3) = '1' and not (debounce_array(3) = "111")) then
                    debounce_array(3)  <= std_logic_vector(unsigned(debounce_array(3)) + 1);
                elsif (bouncy(3) = '0' and not (debounce_array(3) = "000")) then
                    debounce_array(3)  <= std_logic_vector(unsigned(debounce_array(3)) - 1);
                end if;
            end if;
        end if;
    end process p_debouce;

end Behavioral;
