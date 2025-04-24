library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jump_insr is
  Port ( Address : in STD_LOGIC_VECTOR (11 DOWNTO 0);
         PC : in STD_LOGIC_VECTOR (15 DOWNTO 0);
         PC_Jump : out STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
end jump_insr;

architecture Behavioral of jump_insr is

begin
    PC_jump <= PC(15 DOWNTO 12) & Address;


end Behavioral;
