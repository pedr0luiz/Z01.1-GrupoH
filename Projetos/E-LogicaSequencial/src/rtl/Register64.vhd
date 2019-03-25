-- Elementos de Sistemas
-- by Luciano Soares
-- Register32.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register64 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(63 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(63 downto 0)
	);
end entity;

architecture arch of Register64 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
component Register32 is
port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(31 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end component;

signal signal1, signal2 : STD_LOGIC_VECTOR(31 downto 0);

begin
	bite1: Register32 port map(
		clock  => clock,
		input  => input(31 downto 0),
		load   => load,
		output => signal1);

	bite2: Register32 port map(
		clock    => clock,
		input => input(63 downto 32),
		load => load,
		output => signal2);		

	output <= signal2 & signal1;
	
end architecture;
