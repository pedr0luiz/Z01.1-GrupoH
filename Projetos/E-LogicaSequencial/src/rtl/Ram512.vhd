-- Elementos de Sistemas
-- by Luciano Soares
-- Ram512.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram512 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 8 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram512 is

component Ram64 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR(5 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

component Mux8Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			e:   in  STD_LOGIC_VECTOR(15 downto 0);
			f:   in  STD_LOGIC_VECTOR(15 downto 0);
			g:   in  STD_LOGIC_VECTOR(15 downto 0);
			h:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
component DMux8Way is
	port ( 
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC;
			q4:  out STD_LOGIC;
			q5:  out STD_LOGIC;
			q6:  out STD_LOGIC;
			q7:  out STD_LOGIC);
end component;
	
signal qual_64 : std_logic_vector(2 downto 0);
signal add_64 : std_logic_vector(5 downto 0);
signal outlocal0,outlocal1,outlocal2,outlocal3,outlocal4,outlocal5,outlocal6,outlocal7 : std_logic_vector(15 downto 0);
signal q0,q1,q2,q3,q4,q5,q6,q7 : std_logic;

begin

qual_64 <= address(8 downto 6);

add_64 <= address(5 downto 0);

demux: DMux8Way port map(load, qual_64, q0, q1, q2, q3, q4, q5, q6, q7);

ram0: Ram64 port map(clock, input, q0, add_64, outlocal0);
ram1: Ram64 port map(clock, input, q1, add_64, outlocal1);
ram2: Ram64 port map(clock, input, q2, add_64, outlocal2);
ram3: Ram64 port map(clock, input, q3, add_64, outlocal3);
ram4: Ram64 port map(clock, input, q4, add_64, outlocal4);
ram5: Ram64 port map(clock, input, q5, add_64, outlocal5);
ram6: Ram64 port map(clock, input, q6, add_64, outlocal6);
ram7: Ram64 port map(clock, input, q7, add_64, outlocal7);

mux: Mux8Way16 port map(outlocal0,outlocal1,outlocal2,outlocal3,outlocal4,outlocal5,outlocal6,outlocal7,qual_64,output);
end architecture;
