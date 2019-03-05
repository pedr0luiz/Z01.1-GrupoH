library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			e:   in  STD_LOGIC;
			f:   in  STD_LOGIC;
			g:   in  STD_LOGIC;
			h:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q:   out STD_LOGIC);
end entity;

architecture arch of Mux8Way is
begin

q <= a when sel = "000" else '0';
q <= b when sel = "001" else '0';
q <= c when sel = "010" else '0';
q <= d when sel = "011" else '0';
q <= e when sel = "100" else '0';
q <= f when sel = "101" else '0';
q <= g when sel = "110" else '0';
q <= h when sel = "111" else '0';

end architecture;
