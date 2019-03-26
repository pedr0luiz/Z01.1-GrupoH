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
		KEY     : in  std_logic_vector(3 downto 0);
		LEDR    : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is


component Ram8 is
	port(
		clock:  in std_logic;
		input:      in std_logic_vector(15 downto 0);
		load:  in std_logic;
		address: in std_logic_vector(2 downto 0);
		output:     out std_logic_vector(15 downto 0)
	);
end component;

--------------
-- signals
--------------

signal clock : std_logic;
signal x : std_logic_vector(15 downto 0);

---------------
-- implementacao
---------------
begin

Clock <= not KEY(0); -- os botoes quando nao apertado vale 1
                     -- e apertado 0, essa logica inverte isso
							
x <= x"0073" when SW(4)='1' else x"0343";

u0 : Ram8 port map (

		clock    				=> Clock,
		input    				=> x,
		load 						=> SW(3),
		address    				=> SW(2 downto 0),
		Output(7 downto 0)  	=> LEDR(7 downto 0),
		Output(15 downto 8) 	=> Open
		
	);	

end rtl;
