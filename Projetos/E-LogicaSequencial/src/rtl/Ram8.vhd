-- Elementos de Sistemas
-- by Luciano Soares
-- Ram8.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram8 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of ram8 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
  
 component Register16 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(15 downto 0)
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
	
signal q0,q1,q2,q3,q4,q5,q6,q7 : std_logic;
signal outlocal0,outlocal1,outlocal2,outlocal3,outlocal4,outlocal5,outlocal6,outlocal7 : std_logic_vector(15 downto 0);

begin

demux: DMux8Way port map(load, address, q0, q1, q2, q3, q4, q5, q6, q7);

r0: Register16 port map(clock, input, q0, outlocal0);
r1: Register16 port map(clock, input, q1, outlocal1);
r2: Register16 port map(clock, input, q2, outlocal2);
r3: Register16 port map(clock, input, q3, outlocal3);
r4: Register16 port map(clock, input, q4, outlocal4);
r5: Register16 port map(clock, input, q5, outlocal5);
r6: Register16 port map(clock, input, q6, outlocal6);
r7: Register16 port map(clock, input, q7, outlocal7);

mux: Mux8Way16 port map(outlocal0,outlocal1,outlocal2,outlocal3,outlocal4,outlocal5,outlocal6,outlocal7,address,output);

end architecture;