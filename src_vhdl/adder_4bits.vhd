----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    16:39:09 07/25/2016
-- Design Name:
-- Module Name:    adder_4bits - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use work.pr0_package.all;

entity adder_4bits is
  port (
    --     A0 : in  std_logic;
    --     A1 : in  std_logic;
    --     A2 : in  std_logic;
    --     A3 : in  std_logic;
    A    : in  std_logic_vector(3 downto 0);
    B    : in  std_logic_vector(3 downto 0);
    Cin  : in  std_logic;
    S    : out std_logic_vector(3 downto 0);
    Cout : out std_logic
  );
end adder_4bits;

architecture Behavioral of adder_4bits is
  --   signal carry_1 : std_logic;
  --   signal carry_2 : std_logic;
  --   signal carry_3 : std_logic;
  signal carry   : std_logic_vector(3 downto 1);
begin

  fa0 : full_adder
  port map (
    A    => A(0),
    B    => B(0),
    Cin  => Cin,
    Cout => carry(1),
    S    => S(0)
  );

  fa1 : full_adder
  port map (
    A    => A(1),
    B    => B(1),
    Cin  => carry(1),
    Cout => carry(2),
    S    => S(1)
  );

  fa2 : full_adder
  port map (
    A    => A(2),
    B    => B(2),
    Cin  => carry(2),
    Cout => carry(3),
    S    => S(2)
  );

  fa3 : full_adder
  port map (
    A    => A(3),
    B    => B(3),
    Cin  => carry(3),
    Cout => Cout,
    S    => S(3)
  );


end Behavioral;

