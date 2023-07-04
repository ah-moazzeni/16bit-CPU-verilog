--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:54:49 07/03/2023
-- Design Name:   
-- Module Name:   G:/verilog/singleCycle16bitCPU/regfile_test.vhd
-- Project Name:  singleCycle16bitCPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registerFile
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY regfile_test IS
END regfile_test;
 
ARCHITECTURE behavior OF regfile_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerFile
    PORT(
         ReadRegister1 : IN  std_logic_vector(3 downto 0);
         ReadRegister2 : IN  std_logic_vector(3 downto 0);
         WriteRegister : IN  std_logic_vector(3 downto 0);
         WriteData : IN  std_logic_vector(15 downto 0);
         RegWrite : IN  std_logic;
         ReadData1 : OUT  std_logic_vector(15 downto 0);
         ReadData2 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ReadRegister1 : std_logic_vector(3 downto 0) := (others => '0');
   signal ReadRegister2 : std_logic_vector(3 downto 0) := (others => '0');
   signal WriteRegister : std_logic_vector(3 downto 0) := (others => '0');
   signal WriteData : std_logic_vector(15 downto 0) := (others => '0');
   signal RegWrite : std_logic := '0';

 	--Outputs
   signal ReadData1 : std_logic_vector(15 downto 0);
   signal ReadData2 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          ReadRegister1 => ReadRegister1,
          ReadRegister2 => ReadRegister2,
          WriteRegister => WriteRegister,
          WriteData => WriteData,
          RegWrite => RegWrite,
          ReadData1 => ReadData1,
          ReadData2 => ReadData2
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
