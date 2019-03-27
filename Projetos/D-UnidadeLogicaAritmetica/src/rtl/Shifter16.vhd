-- Elementos de Sistemas

-- by Luciano Soares

-- ZERADOR16.vhd



library IEEE;

use IEEE.STD_LOGIC_1164.all;



entity Shifter16 is

  port(

	     a   : in STD_LOGIC_VECTOR(15 downto 0);
		  z   : in STD_LOGIC_VECTOR(1 downto 0);
        y   : out STD_LOGIC_VECTOR(15 downto 0)


      );

end Shifter16;


architecture rtl of Shifter16 is

component Add16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		b   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

signal outlocal: STD_LOGIC_VECTOR(15 downto 0);

begin

  -- Implementação vem aqui!
	u1: Add16 port map(a, a, outlocal);

	y <= outlocal when (z="0") else "0" & a(14 downto 0);

end architecture;


