----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2021 02:03:54 PM
-- Design Name: 
-- Module Name: top - Behavioral
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
use IEEE.numeric_std.all;
use work.keyboard_decoder_typedef.all;
use work.lock_controller_typedef.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port (
        CLK100MHZ           :   in  std_logic;                          -- Clk 100 MHz
        rst                 :   in  std_logic;                          -- Reset
        
        keyboard_cols       :   out std_logic_vector(3 - 1 downto 0);   -- Columns out
        keyboard_rows       :   in  std_logic_vector(4 - 1 downto 0);   -- Rows in
        
        CA                  :   out std_logic_vector(4 - 1 downto 0);   -- Common anode outputs
        sev_seg_cathodes    :   out std_logic_vector(8 - 1 downto 0);   -- Cathodes outputs (schematic CX, X=(A, B...)
        
        unlocked_state      :   out std_logic;                          -- Green LED output
        locked_state        :   out std_logic;                          -- Red  LED output
        checking_state      :   out std_logic;                          -- Blue LED output
        
        FPGA_DO             :   out std_logic                           -- Door open output
    );
end top;

architecture Behavioral of top is
    signal s_key_out        : STD_LOGIC_VECTOR (12 - 1 downto 0);
    signal s_take_key       : STD_LOGIC;
    
    signal s_c_valid_pin    : pin_queue_t;
    signal s_number_queue   : pin_queue_t;
    
    signal s_data0          : std_logic_vector(4 - 1 downto 0);
    signal s_data1          : std_logic_vector(4 - 1 downto 0);
    signal s_data2          : std_logic_vector(4 - 1 downto 0);
    signal s_data3          : std_logic_vector(4 - 1 downto 0);
    
    signal s_str_n_pin      : std_logic;
    
    signal s_cmd            : cmd_t;
    signal s_data           : natural;
begin


    -- keyboard
    d_keyboard : entity work.key_board
        port map(
            clk         => CLK100MHZ,
            rst         => rst,
            
            row_in      => keyboard_rows,
            col_sel     => keyboard_cols,
            key_taken   => s_take_key,
            key_out     => s_key_out
        );
    
    
    -- keyboard decoder
    d_keyboard_decoder : entity work.keyboard_decoder
        port map(
            clk         => CLK100MHZ,
            rst         => rst,
            
            cmd         => s_cmd,
            data        => s_data,
            
            key_out     => s_key_out,
            key_taken   => s_take_key
        );
        
        
    -- lock controller
    d_lock_controller : entity work.lock_controller
        port map(
            clk             => CLK100MHZ,
            rst             => rst,
            
            pin             => s_c_valid_pin,
            
            str_new_pin     => s_str_n_pin,
            
            unlocked_state  => unlocked_state,
            locked_state    => locked_state,
            checking_state  => checking_state,
            
            number_queue    => s_number_queue,
            
            fpga_do         => FPGA_DO,
            
            cmd             => s_cmd,
            data            => s_data
        );


    -- pin storage
    d_pin_storage : entity work.pin_storage
        port map(
            clk             => CLK100MHZ,
            rst             => rst,
            
            new_pin         => s_number_queue,
            store_new_pin   => s_str_n_pin,
            
            currnet_pin     => s_c_valid_pin
        );


    -- integers to std_logic_vector
    s_data0 <= std_logic_vector(to_unsigned(s_number_queue(0), 4));
    s_data1 <= std_logic_vector(to_unsigned(s_number_queue(1), 4));
    s_data2 <= std_logic_vector(to_unsigned(s_number_queue(2), 4));
    s_data3 <= std_logic_vector(to_unsigned(s_number_queue(3), 4));
    
    d_driver_7_seg_4digits : entity work.driver_7seg_4digits
        port map (
            clk         =>  CLK100MHZ,
            reset       =>  rst,
            
            data0_i     =>  s_data0,
            data1_i     =>  s_data1,
            data2_i     =>  s_data2,
            data3_i     =>  s_data3,
            
            -- not care (masked out)
            data4_i     => "0000",        
            data5_i     => "0000",
            data6_i     => "0000",
            data7_i     => "0000",
            
            dp_i        => "0000",
            
            seg_o(7 - 1 downto 0)   => sev_seg_cathodes(7 - 1 downto 0),
            dp_o                    => sev_seg_cathodes(7),
            -- Common anode signals to individual displays
            dig_o(4 - 1 downto 0)   => CA(4 - 1 downto 0)
        ); 

end Behavioral;
