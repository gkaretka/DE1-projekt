----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2021 09:14:10 PM
-- Design Name: 
-- Module Name: keyboard_decoder - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package typedef is
    type cmd_t is (NUMBER, SET, RESET, NONE);
end package;

library IEEE;
use work.typedef.all;
use IEEE.STD_LOGIC_1164.ALL;

entity keyboard_decoder is
    Port (
        clk         : in    STD_LOGIC;
        rst         : in    STD_LOGIC;
        
        key_taken   : in    STD_LOGIC;
        key_out     : in    STD_LOGIC_VECTOR (12 - 1 downto 0);
        
        cmd         : out   cmd_t;
        data        : out   natural
        
    );
end keyboard_decoder;

architecture Behavioral of keyboard_decoder is
    signal s_cmd    : cmd_t;    
    signal s_number : natural;
begin
    
    cmd     <= s_cmd;
    data    <= s_number;
    
    p_keyboard_mapper : process(clk)
    begin
        if (rising_edge(clk)) then
            if (rst = '1') then
                s_number    <=  0;
                s_cmd       <=  NONE;
            else
                if (key_taken = '1') then
                    -- key remap from 12 row data to number
                    case key_out is
                        -- first col
                        when "000000000001" =>
                            s_number    <=  7;
                            s_cmd       <= NUMBER;  
                        
                        when "000000000010" =>
                            s_number    <=  4;
                            s_cmd       <= NUMBER;
                            
                        when "000000000100" =>
                            s_number    <=  1;
                            s_cmd       <= NUMBER;
                            
                        when "000000001000" =>
                            s_number    <=  0;
                            s_cmd       <= SET;
                            
                        -- second col
                        when "000000010000" =>
                            s_number    <=  8;
                            s_cmd       <= NUMBER;  
                        
                        when "000000100000" =>
                            s_number    <=  5;
                            s_cmd       <= NUMBER;
                            
                        when "000001000000" =>
                            s_number    <=  2;
                            s_cmd       <= NUMBER;
                            
                        when "000010000000" =>
                            s_number    <=  0;
                            s_cmd       <= NUMBER;
                            
                        -- third col
                        when "000100010000" =>
                            s_number    <=  9;
                            s_cmd       <= NUMBER;  
                        
                        when "001000000000" =>
                            s_number    <=  6;
                            s_cmd       <= NUMBER;
                            
                        when "010000000000" =>
                            s_number    <=  3;
                            s_cmd       <= NUMBER;
                            
                        when "100000000000" =>
                            s_number    <=  0;
                            s_cmd       <= RESET;
                        when others =>
                            s_number    <=  0;
                            s_cmd       <=  NONE;
                    end case;
                else
                    s_number    <=  0;
                    s_cmd       <=  NONE;
                end if;
            end if;
        end if;
    end process p_keyboard_mapper;

end Behavioral;
