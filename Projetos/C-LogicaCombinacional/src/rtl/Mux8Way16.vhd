library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8Way16 is
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
end entity;

architecture arch of Mux8Way16 is
begin

	q <= (a and not(sel(0)) and not(sel(1)) and not(sel(2))) 
	or (b and not(sel(0)) and not(sel(1)) and sel(2)) 
	or (c and not(sel(0)) and sel(1) and not(sel(2)))
	or (d and not(sel(0)) and sel(1) and sel(2))
	or (e and sel(0) and not(sel(1)) and not(sel(2)))
	or (f and sel(0) and not(sel(1)) and sel(2))
	or (g and sel(0) and sel(1) and not(sel(2)))
	or (h and sel(0) and sel(1) and sel(2));

end architecture;
