----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2021 09:31:24 AM
-- Design Name: 
-- Module Name: tb_lock_controller_change_pin - Behavioral
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
use work.lock_controller_typedef.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_lock_controller_change_pin is
--  Port ( );
end tb_lock_controller_change_pin;

architecture Behavioral of tb_lock_controller_change_pin is
    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

    --Local signals
    signal s_clk_100MHz : std_logic;
    signal s_reset      : std_logic;
    
    type s_row_type is array (0 to 3 - 1) of std_logic_vector(4 - 1 downto 0);
    signal s_rows           : s_row_type;
    
    signal s_col_sel        : STD_LOGIC_VECTOR (3 - 1 downto 0);
    signal s_row_in         : STD_LOGIC_VECTOR (4 - 1 downto 0);
    
    signal s_key_out        : STD_LOGIC_VECTOR (12 - 1 downto 0);
    signal s_take_key       : STD_LOGIC;
    
    signal pin              : pin_queue_t;
    signal s_number_queue   : pin_queue_t;
    
    signal s_fpga_do        : std_logic;
    
    signal s_str_n_pin      : std_logic;
    
    signal s_cmd            : cmd_t;
    signal s_data           : natural;
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
        
    -- (Unit Under Test 3) -- lock controller
    uut_db_3 : entity work.lock_controller
        port map(
            clk             => s_clk_100MHz,
            rst             => s_reset,
            
            pin             => pin,
            
            str_new_pin     => s_str_n_pin,
            
            number_queue    => s_number_queue,
            
            fpga_do         => s_fpga_do,
            
            cmd             => s_cmd,
            data            => s_data
        );

    -- (Unit Under Test 3) -- pin storage
    uut_db_4 : entity work.pin_storage
        port map(
            clk             => s_clk_100MHz,
            rst             => s_reset,
            
            new_pin         => s_number_queue,
            store_new_pin   => s_str_n_pin,
            
            currnet_pin     => pin
        );
        
    --------------------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 36000 ns loop         -- 75 periods of 100MHz clock
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
        
        -- pin stored internally in pin storage (7 5 3 3)
        -- for more info see pin_storage module
        
        -- unlock and update
        
        -- Set data
        wait for 500 ns;
        
        -- CORRECT DATA 1 ----------------------------
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0001"; -- 7
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks

        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0010"; -- 5
        s_rows(0)   <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        s_rows(2)   <=   "0100"; -- 3
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        s_rows(2)   <=   "0100"; -- 3
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        wait for 1000 ns;
        -- CORRECT DATA 1 ----------------------------
        s_rows(2)   <=   "0100";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000"; -- 3
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks

        s_rows(2)   <=   "0100";
        s_rows(1)   <=   "0000"; -- 3
        s_rows(0)   <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        s_rows(2)   <=   "0000"; -- 5
        s_rows(1)   <=   "0010";
        s_rows(0)   <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        s_rows(2)   <=   "0000"; -- 7
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0001";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        wait for 1000 ns;
        -- SET KEY
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "1000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;    

end Behavioral;
