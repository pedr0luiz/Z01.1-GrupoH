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
		SW      : in  std_logic_vector(3 downto 0);
		HEX0    : out std_logic_vector(6 downto 0)
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
 
<<<<<<< HEAD
<<<<<<< HEAD
  HEX0(0) <= (((not SW(3) and (not SW(1))) and (SW(2) xnor SW(0))) or ((SW(3) and Sw(0)) and (SW(2) xnor SW(1))));  

=======
  HEX0(0) <= SW(0);
>>>>>>> or8way_mux16
=======
>>>>>>> upstream/master

end rtl;
