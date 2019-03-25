-- Elementos de Sistemas
-- by Luciano Soares
-- Register16.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Register16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
component Register8 is
port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(7 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(7 downto 0)
	);
end component;

signal signal1, signal2 : STD_LOGIC_VECTOR(7 downto 0);

begin
	bite1: Register8 port map(
		clock  => clock,
		input  => input(7 downto 0),
		load   => load,
		output => signal1);
	
	bite2: Register8 port map(
		clock    => clock,
		input => input(15 downto 8),
		load => load,
		output => signal2);		

	output <= signal2 & signal1;

end architecture;

