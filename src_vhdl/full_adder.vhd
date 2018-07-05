----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    15:39:53 07/25/2016
-- Design Name:
-- Module Name:    full_adder - Behavioral
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
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity full_adder is
  port (
    A    : in  std_logic;
    B    : in  std_logic;
    Cin  : in  std_logic;
    S    : out std_logic;
    Cout : out std_logic
  );
end full_adder;

architecture Behavioral of full_adder is
  -- Declaración de señales
  signal aux_0 : std_logic;
  signal aux_1 : std_logic;
  signal aux_2 : std_logic;
begin

  -- Declaración del process para circuitos COMBINACIONALES
  aux_0_process : process (A, B) -- Lista de sensibilidad
  begin
    aux_0 <= A xor B;
  end process;

  aux_1_process : process (aux_0, Cin) -- Lista de sensibilidad
  begin
    aux_1 <= aux_0 and Cin;
  end process;

  aux_2_process : process (A, B)
  begin
    aux_2 <= A and B;
  end process;

  S_process : process (aux_0, Cin)
  begin
    S <= aux_0 xor Cin;
  end process;

  Cout_process : process (aux_1, aux_2)
  begin
    Cout <= aux_1 or aux_2;
  end process;



--   S_process : process (A, B, Cin)
--   begin
--     S <= (A xor B) xor Cin;
--   end process;
--
--   Cout_process : process (A, B, Cin)
--   begin
--     Cout <= ((A xor B) and Cin) or (A and B);
--   end process;


end Behavioral;

