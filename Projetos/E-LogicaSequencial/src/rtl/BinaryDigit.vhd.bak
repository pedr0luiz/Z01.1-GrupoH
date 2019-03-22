-- Elementos de Sistemas
-- by Luciano Soares
-- BinaryDigit.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity BinaryDigit is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC;
		load:    in STD_LOGIC;
		output: out STD_LOGIC
	);
end entity;

architecture rtl of BinaryDigit is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
  component FlipFlopD is
	port(
			clock:  in std_logic;
			d:      in std_logic;
			clear:  in std_logic;
			preset: in std_logic;
			q:     out std_logic
		);
	end component;
	
	component Mux2Way is
		port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			sel: in  STD_LOGIC;
			q:   out STD_LOGIC
			);
		end component;
signal outmux,outflip: std_logic;
begin
	
	u1: Mux2Way port map(outflip,input,load,outmux);
	u2: FlipFlopD port map(clock, outmux, '0', '0', outflip);
	output <= outflip;
	
end architecture;
