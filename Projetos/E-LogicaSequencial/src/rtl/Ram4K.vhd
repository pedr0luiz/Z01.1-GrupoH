-- Elementos de Sistemas
-- by Luciano Soares
-- Ram4K.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram4K is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR(11 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram4k is

component Ram512 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR(8 downto 0);
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
	
signal qual_512 : std_logic_vector(2 downto 0);
signal add_512 : std_logic_vector(8 downto 0);
signal outlocal0,outlocal1,outlocal2,outlocal3,outlocal4,outlocal5,outlocal6,outlocal7 : std_logic_vector(15 downto 0);
signal q0,q1,q2,q3,q4,q5,q6,q7 : std_logic;

begin

qual_512 <= address(11 downto 9);

add_512 <= address(8 downto 0);

demux: DMux8Way port map(load, qual_512, q0, q1, q2, q3, q4, q5, q6, q7);

ram0: Ram512 port map(clock, input, q0, add_512, outlocal0);
ram1: Ram512 port map(clock, input, q1, add_512, outlocal1);
ram2: Ram512 port map(clock, input, q2, add_512, outlocal2);
ram3: Ram512 port map(clock, input, q3, add_512, outlocal3);
ram4: Ram512 port map(clock, input, q4, add_512, outlocal4);
ram5: Ram512 port map(clock, input, q5, add_512, outlocal5);
ram6: Ram512 port map(clock, input, q6, add_512, outlocal6);
ram7: Ram512 port map(clock, input, q7, add_512, outlocal7);

mux: Mux8Way16 port map(outlocal0,outlocal1,outlocal2,outlocal3,outlocal4,outlocal5,outlocal6,outlocal7,qual_512,output);
end architecture;