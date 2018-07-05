--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   16:57:35 07/25/2016
-- Design Name:
-- Module Name:   /home/federico/Documents/LSE/Curso_TESCo_2016/clases/ise_projects/dia1_pr0/tb_adder_4bits.vhd
-- Project Name:  dia1_pr0
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: adder_4bits
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

ENTITY tb_adder_4bits IS
END tb_adder_4bits;

ARCHITECTURE behavior OF tb_adder_4bits IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT adder_4bits
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;


   --Inputs
   signal A_s    : std_logic_vector(3 downto 0) := (others => '0');
   signal B_s    : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin_s  : std_logic := '0';

 	--Outputs
   signal S_s    : std_logic_vector(3 downto 0);
   signal Cout_s : std_logic;
   -- No clocks detected in port list. Replace <clock> below with
   -- appropriate port name

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: adder_4bits
   PORT MAP (
      A    => A_s,
      B    => B_s,
      Cin  => Cin_s,
      S    => S_s,
      Cout => Cout_s
    );


   -- Stimulus process
   stim_proc: process
   begin
      -- hold reset state for 100 ns.
      wait for 100 ns;

      wait for 10 ns;
      A_s   <= "1010";
      B_s   <= "0011";
      Cin_s <= '0';

      wait for 10 ns;
      A_s   <= "1010";
      B_s   <= "1011";
      Cin_s <= '0';

      -- insert stimulus here

      wait;
   end process;

END;
