----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    17:15:33 07/25/2016
-- Design Name:
-- Module Name:    ffd - Behavioral
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

entity ffd is
  port (
    clk : in  std_logic;
    d   : in  std_logic;
    q   : out std_logic
  );
end ffd;

architecture Behavioral of ffd is
  signal out_data : std_logic := '0';
begin

  clk_process : process (clk)
  begin
    if rising_edge(clk) then
      out_data <= d;
    end if;
  end process;

  q_process : process (out_data)
  begin
    q <= out_data;
  end process;

end Behavioral;

