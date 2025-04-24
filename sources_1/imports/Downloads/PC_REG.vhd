library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity PC_REG is
	port(
		clk : in std_logic;
		reset : in std_logic;
		Input : in std_logic_vector(15 downto 0);
		Output : out std_logic_vector(15 downto 0)
	);
end PC_REG;

architecture Behavioral of PC_REG is
    signal pc : std_logic_vector(15 downto 0) := (others => '0');
begin
	process(reset, clk)
	begin
	   if reset = '0' then 
	       pc <= (others => '0');
	   elsif rising_edge(clk) then
	       pc <= Input;
	   end if;
	end process;
	
	Output <= pc;
end Behavioral;
