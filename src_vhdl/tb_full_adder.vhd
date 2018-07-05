--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:   16:16:16 07/25/2016
-- Design Name:
-- Module Name:   /home/federico/Documents/LSE/Curso_TESCo_2016/clases/ise_projects/dia1_pr0/tb_full_adder.vhd
-- Project Name:  dia1_pr0
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: full_adder
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

ENTITY tb_full_adder IS
END tb_full_adder;

ARCHITECTURE behavior OF tb_full_adder IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT full_adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;


   --Inputs
   signal A_s   : std_logic := '0';
   signal B_s   : std_logic := '0';
   signal Cin_s : std_logic := '0';

 	--Outputs
   signal S_s    : std_logic;
   signal Cout_s : std_logic;
   -- No clocks detected in port list. Replace <clock> below with
   -- appropriate port name


BEGIN

	-- Instantiate the Unit Under Test (UUT)
  uut: full_adder
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

      -- insert stimulus here
        A_s   <= '0';
        B_s   <= '0';
        Cin_s <= '0';

      wait for 10 ns;
        A_s   <= '1';
        B_s   <= '0';
        Cin_s <= '0';

      wait for 10 ns;
        A_s   <= '0';
        B_s   <= '1';
        Cin_s <= '0';

      wait for 10 ns;
        A_s   <= '1';
        B_s   <= '1';
        Cin_s <= '0';

      wait for 10 ns;
        A_s   <= '0';
        B_s   <= '0';
        Cin_s <= '1';

      wait for 10 ns;
        A_s   <= '1';
        B_s   <= '0';
        Cin_s <= '1';

      wait for 10 ns;
        A_s   <= '0';
        B_s   <= '1';
        Cin_s <= '1';

      wait for 10 ns;
        A_s   <= '1';
        B_s   <= '1';
        Cin_s <= '1';

      wait for 10 ns;
        A_s   <= '0';
        B_s   <= '0';
        Cin_s <= '0';


      wait;
   end process;

END;
