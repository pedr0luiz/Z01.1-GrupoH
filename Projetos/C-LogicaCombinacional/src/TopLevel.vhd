--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br 
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de 
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		HEX0    : out std_logic_vector(6 downto 0);
		HEX1    : out std_logic_vector(6 downto 0);
		HEX2    : out std_logic_vector(6 downto 0)
		
		
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

---------------
-- implementacao
---------------


begin

--HEX0(0) <= '1' when SW = "0001" else '1' when SW = "0100" else '1' when SW = "1101" else '1' when SW = "1011" else '0'; 

HEX0(0) <= ((not SW(3) and not SW(1)) and (SW(2) xor SW(0))) or ((SW(3) and SW(0)) 
and (SW(2) xor SW(1)));

HEX0(1) <= '1' when SW(3 downto 0) = "0101" else '1' when SW(3 downto 0) = "1110" else '1' when SW(3 downto 0) = "1011" else '1' when SW(3 downto 0) = "1111" 
else '1' when SW(3 downto 0) = "0110" else '1' when SW(3 downto 0) = "1100" else '0'; 

HEX0(2) <= ((SW(1) and not SW(0)) and (SW(3) xnor SW(2))) or (SW(3) and SW(2) and (SW(1) xnor SW(0))) ; 

HEX0(3) <= '1' when SW(3 downto 0) = "0001" else '1' when SW(3 downto 0) = "0100" else '1' when SW(3 downto 0) = "0111" else '1' when SW(3 downto 0) = "1111" 
else '1' when SW(3 downto 0) = "1010" else '0'; 

HEX0(4) <= '1' when SW(3 downto 0) = "0001" else '1' when SW(3 downto 0) = "0100" else '1' when SW(3 downto 0) = "0011" else '1' when SW(3 downto 0) = "0101"
else '1' when SW(3 downto 0) = "1001" else '1' when SW(3 downto 0) = "0111" else '0';

HEX0(5) <= '1' when SW(3 downto 0) = "0001" else '1' when SW(3 downto 0) = "0010" else '1' when SW(3 downto 0) = "0011" else '1' when SW(3 downto 0) = "0111"
else '1' when SW(3 downto 0) = "1101" else '0'; 

HEX0(6) <= '1' when SW(3 downto 0) = "0000" else '1' when SW(3 downto 0) = "0001" else '1' when SW(3 downto 0) = "0111" else '1' when SW(3 downto 0) = "1100" else '0'; 


HEX1(0) <= ((not SW(7) and not SW(5)) and (SW(6) xor SW(4))) or ((SW(7) and SW(4)) 
and (SW(6) xor SW(5)));

HEX1(1) <= '1' when SW(7 downto 4) = "0101" else '1' when SW(7 downto 4) = "1110" else '1' when SW(7 downto 4) = "1011" else '1' when SW(7 downto 4) = "1111" 
else '1' when SW(7 downto 4) = "0110" else '1' when SW(7 downto 4) = "1100" else '0'; 

HEX1(2) <= ((SW(5) and not SW(4)) and (SW(7) xnor SW(6))) or (SW(7) and SW(6) and (SW(5) xnor SW(4))) ; 

HEX1(3) <= '1' when SW(7 downto 4) = "0001" else '1' when SW(7 downto 4) = "0100" else '1' when SW(7 downto 4) = "0111" else '1' when SW(7 downto 4) = "1111" 
else '1' when SW(7 downto 4) = "1010" else '0'; 

HEX1(4) <= '1' when SW(7 downto 4) = "0001" else '1' when SW(7 downto 4) = "0100" else '1' when SW(7 downto 4) = "0011" else '1' when SW(7 downto 4) = "0101"
else '1' when SW(7 downto 4) = "1001" else '1' when SW(7 downto 4) = "0111" else '0';

HEX1(5) <= '1' when SW(7 downto 4) = "0001" else '1' when SW(7 downto 4) = "0010" else '1' when SW(7 downto 4) = "0011" else '1' when SW(7 downto 4) = "0111"
else '1' when SW(7 downto 4) = "1101" else '0'; 

HEX1(6) <= '1' when SW(7 downto 4) = "0000" else '1' when SW(7 downto 4) = "0001" else '1' when SW(7 downto 4) = "0111" else '1' when SW(7 downto 4) = "1100" else '0'; 

--------------------------------------------------------------------------------------------------

HEX2(0) <= not SW(9) and SW(8);

HEX2(1) <= '0';

HEX2(2) <= SW(9) and (not SW(8));  

HEX2(3) <= (not SW(9)) and SW(8);

HEX2(4) <= SW(8);

HEX2(5) <= SW(8) or SW(9);

HEX2(6) <= not SW(9);

end rtl;
