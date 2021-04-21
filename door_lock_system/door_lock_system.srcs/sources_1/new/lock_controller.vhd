----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2021 02:46:47 PM
-- Design Name: 
-- Module Name: lock_controller - Behavioral
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

package lock_controller_typedef is
    type pin_queue_t is array (0 to 3) of natural;
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.keyboard_decoder_typedef.all;
use work.lock_controller_typedef.all;

entity lock_controller is
    Port (
        clk             : in    STD_LOGIC;
        rst             : in    STD_LOGIC;
        
        pin             : in    pin_queue_t;
        number_queue    : out   pin_queue_t;
        str_new_pin     : out   std_logic;
        
        cmd             : in    cmd_t;    
        data            : in    natural;
        
        fpga_do         : out   std_logic
    );
end lock_controller;

architecture Behavioral of lock_controller is
    constant c_cnt_bit_cnt  : natural := 10; -- 21 for production, 10 for simulation so we can test new pin

    type lock_machine_state_t is (LOCKED, CHECK_PIN, FAILED, UNLOCKED);
    
    signal s_lock_state     :   lock_machine_state_t;
    signal s_queue_pointer  :   natural;
    signal s_number_queue   :   pin_queue_t;
    
    signal s_30s_cnt        :   std_logic_vector(c_cnt_bit_cnt - 1 downto 0);
    signal s_f_tim_done     :   std_logic;
    signal s_f_tim_enalbe   :   std_logic;
    signal s_f_atps_cnt     :   natural;
begin
    
    number_queue    <=  s_number_queue;
    
    p_keyboard_data : process (clk)
    begin
        if (rising_edge(clk)) then
            if (rst = '1') then
                fpga_do             <=  '0';
                s_lock_state        <=  LOCKED;
                s_queue_pointer     <=  0;
                s_f_tim_done        <=  '0';
                s_f_atps_cnt        <=  0;
                s_30s_cnt           <= (others => '0');
                s_f_tim_enalbe      <=  '0';
                str_new_pin         <=  '0';
                
                s_number_queue(0)   <=  0;
                s_number_queue(1)   <=  0;
                s_number_queue(2)   <=  0;
                s_number_queue(3)   <=  0;
            else
                case s_lock_state is
                    -- locked case - processing input numbers/commands
                    when LOCKED =>
                        case cmd is
                            when NUMBER => -- number input
                                s_number_queue(s_queue_pointer) <= data;
                                if (s_queue_pointer = 3) then
                                    s_lock_state <= CHECK_PIN;         
                                else
                                    s_queue_pointer <= s_queue_pointer + 1;
                                end if;
                                
                            when RESET => -- reset signal input
                                s_queue_pointer     <=  0;
                                s_number_queue(0)   <=  0;
                                s_number_queue(1)   <=  0;
                                s_number_queue(2)   <=  0;
                                s_number_queue(3)   <=  0;
                            when others =>
                                -- do nothing
                        end case;
                        
                    when CHECK_PIN =>
                        if (pin = s_number_queue) then
                            s_lock_state    <=  UNLOCKED;
                        else
                            s_lock_state    <=  FAILED;
                            s_f_atps_cnt    <=  s_f_atps_cnt + 1;
                        end if;
                        
                    when FAILED =>
                        if (s_f_tim_enalbe = '0' and s_f_atps_cnt = 3) then
                            s_f_tim_enalbe  <= '1';
                            s_30s_cnt       <=  std_logic_vector(unsigned(s_30s_cnt) + 1);
                            -- run timer for 30 seconds
                        elsif (s_f_tim_enalbe = '1' and s_f_tim_done = '0') then
                            if (unsigned(s_30s_cnt) = 0) then
                                s_f_tim_done    <=  '1';
                                s_f_atps_cnt    <= 0;
                            else
                                s_30s_cnt       <=  std_logic_vector(unsigned(s_30s_cnt) + 1); 
                            end if;
                        else
                            s_30s_cnt       <= (others => '0');
                            s_f_tim_enalbe  <= '0';
                            s_f_tim_done    <= '0';
                            s_lock_state    <= LOCKED;
                            
                            s_queue_pointer     <=  0;
                            s_number_queue(0)   <=  0;
                            s_number_queue(1)   <=  0;
                            s_number_queue(2)   <=  0;
                            s_number_queue(3)   <=  0;
                        end if;
                        
                    when UNLOCKED =>
                        if (s_f_tim_enalbe = '0') then
                            fpga_do         <= '1';
                            s_f_tim_enalbe  <= '1';
                            
                            s_queue_pointer     <=  0;
                            s_number_queue(0)   <=  0;
                            s_number_queue(1)   <=  0;
                            s_number_queue(2)   <=  0;
                            s_number_queue(3)   <=  0;
                            
                            s_30s_cnt       <=  std_logic_vector(unsigned(s_30s_cnt) + 1);
                            -- run timer for 30 seconds
                        elsif (s_f_tim_enalbe = '1' and s_f_tim_done = '0') then
                            case cmd is
                                when NUMBER => -- number input -- new pin
                                    s_number_queue(s_queue_pointer) <= data;
                                    if (s_queue_pointer = 3) then
                                        s_queue_pointer       <=  0;
                                    else
                                        s_queue_pointer <= s_queue_pointer + 1;
                                    end if;
                                
                                when SET =>
                                    str_new_pin         <=  '1';
                                    s_lock_state        <= LOCKED;
                                
                                when RESET => -- reset signal input
                                    s_queue_pointer     <=  0;
                                    s_number_queue(0)   <=  0;
                                    s_number_queue(1)   <=  0;
                                    s_number_queue(2)   <=  0;
                                    s_number_queue(3)   <=  0;
                                when others =>
                                    -- do nothing
                            end case;
                        
                            if (unsigned(s_30s_cnt) = 0) then
                                s_f_tim_done    <=  '1';
                            else
                                s_30s_cnt       <=  std_logic_vector(unsigned(s_30s_cnt) + 1); 
                            end if;
                        else
                            s_30s_cnt       <= (others => '0');
                            s_f_atps_cnt    <= 0;
                            fpga_do         <= '0';
                            s_f_tim_enalbe  <= '0';
                            s_f_tim_done    <= '0';
                            s_lock_state    <= LOCKED;

                            s_queue_pointer     <=  0;
                            s_number_queue(0)   <=  0;
                            s_number_queue(1)   <=  0;
                            s_number_queue(2)   <=  0;
                            s_number_queue(3)   <=  0;
                        end if;
                    when others =>
                        -- od nothing
                end case;
            end if;
        end if;
        
    end process p_keyboard_data;

end Behavioral;
