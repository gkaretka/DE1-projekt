----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2021 02:04:08 PM
-- Design Name: 
-- Module Name: tb_top - Behavioral
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

entity tb_top is
--  Port ( );
end tb_top;

architecture Behavioral of tb_top is
    constant c_CLK_100MHZ_PERIOD : time    := 10 ns;

    --Local signals
    signal s_clk_100MHz         : std_logic;
    signal s_reset              : std_logic;
    
    type s_row_type is array (0 to 3 - 1) of std_logic_vector(4 - 1 downto 0);
    signal s_rows               : s_row_type;
    
    signal s_col_sel            : STD_LOGIC_VECTOR (3 - 1 downto 0);
    signal s_row_in             : STD_LOGIC_VECTOR (4 - 1 downto 0);
    
    -- common anode
    signal s_ca                 : STD_LOGIC_VECTOR (4 - 1 downto 0);
    signal s_cathodes           : STD_LOGIC_VECTOR (8 - 1 downto 0);
    
    signal s_unlocked           : std_logic;
    signal s_locked             : std_logic;
    signal s_checking_status    : std_logic;
    
    signal s_door_open          : std_logic;
begin

    uut_top : entity work.top
        port map (
            CLK100MHZ           =>  s_clk_100MHz,
            rst                 =>  s_reset,
        
            keyboard_cols       =>  s_col_sel,
            keyboard_rows       =>  s_row_in,
        
            CA                  =>  s_ca,
            sev_seg_cathodes    =>  s_cathodes,
        
            unlocked_state      =>  s_unlocked,
            locked_state        =>  s_locked,
            checking_state      =>  s_checking_status,
        
            FPGA_DO             =>  s_door_open
        );

    --------------------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 45000 ns loop
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
        
        -- unlock and update then wait and unlock again
        
        -- Set data
        wait for 500 ns;
        
        ----------------------------------------------
        -- here we insert pin to unlock device (after successful unlock we have 30s to change pin)
        ----------------------------------------------
        
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
        
        ----------------------------------------------
        -- here we insert new pin
        ----------------------------------------------
        
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
        
        ----------------------------------------------
        -- here we press SET(button labeled A) 
        ----------------------------------------------
        
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
        
        ----------------------------------------------
        -- here we unlock using new pin
        ----------------------------------------------
        
        wait for 5000 ns; -- we need to wait for closing
        
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
        
        ----------------------------------------------
        -- here we test double reset, this causes device to close before timer goes off
        -- single reset is for clearing pin buffer
        -- double reset (or single reset when buffer is empty is for returning to locked state
        ----------------------------------------------
        wait for 1000 ns; -- some time to elapse 
        
        wait for 1000 ns;
        -- RESET KEY
        s_rows(2)   <=   "1000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        wait for 1000 ns;
        -- RESET KEY
        s_rows(2)   <=   "1000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";        
        wait for 700 ns; -- wait for recognition
        s_rows(2)   <=   "0000";
        s_rows(1)   <=   "0000";
        s_rows(0)   <=   "0000";
        wait for 700 ns; -- delay betwenn clicks
        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end Behavioral;
