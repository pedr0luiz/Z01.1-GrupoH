--------------------------------------------------
--Conceito B e C
---------------------
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--use work.all;
--
------------------------------
---- Entrada e saidas do bloco
------------------------------
--entity TopLevel is
--	port(
--		SW      : in  std_logic_vector(9 downto 0);
--		HEX0    : out std_logic_vector(6 downto 0);
--		HEX1    : out std_logic_vector(6 downto 0);
--		HEX2    : out std_logic_vector(6 downto 0)
--		
--		
--	);
--end entity;
--
------------------------------
---- Implementacao do bloco -- 
------------------------------
--architecture rtl of TopLevel is
--
----------------
---- signals
----------------
--
-----------------
---- implementacao
-----------------
--
--
--begin
--
----HEX0(0) <= '1' when SW = "0001" else '1' when SW = "0100" else '1' when SW = "1101" else '1' when SW = "1011" else '0'; 
--
--HEX0(0) <= ((not SW(3) and not SW(1)) and (SW(2) xor SW(0))) or ((SW(3) and SW(0)) 
--and (SW(2) xor SW(1)));
--
--HEX0(1) <= '1' when SW(3 downto 0) = "0101" else '1' when SW(3 downto 0) = "1110" else '1' when SW(3 downto 0) = "1011" else '1' when SW(3 downto 0) = "1111" 
--else '1' when SW(3 downto 0) = "0110" else '1' when SW(3 downto 0) = "1100" else '0'; 
--
--HEX0(2) <= ((SW(1) and not SW(0)) and (SW(3) xnor SW(2))) or (SW(3) and SW(2) and (SW(1) xnor SW(0))) ; 
--
--HEX0(3) <= '1' when SW(3 downto 0) = "0001" else '1' when SW(3 downto 0) = "0100" else '1' when SW(3 downto 0) = "0111" else '1' when SW(3 downto 0) = "1111" 
--else '1' when SW(3 downto 0) = "1010" else '0'; 
--
--HEX0(4) <= '1' when SW(3 downto 0) = "0001" else '1' when SW(3 downto 0) = "0100" else '1' when SW(3 downto 0) = "0011" else '1' when SW(3 downto 0) = "0101"
--else '1' when SW(3 downto 0) = "1001" else '1' when SW(3 downto 0) = "0111" else '0';
--
--HEX0(5) <= '1' when SW(3 downto 0) = "0001" else '1' when SW(3 downto 0) = "0010" else '1' when SW(3 downto 0) = "0011" else '1' when SW(3 downto 0) = "0111"
--else '1' when SW(3 downto 0) = "1101" else '0'; 
--
--HEX0(6) <= '1' when SW(3 downto 0) = "0000" else '1' when SW(3 downto 0) = "0001" else '1' when SW(3 downto 0) = "0111" else '1' when SW(3 downto 0) = "1100" else '0'; 
--
--
--HEX1(0) <= ((not SW(7) and not SW(5)) and (SW(6) xor SW(4))) or ((SW(7) and SW(4)) 
--and (SW(6) xor SW(5)));
--
--HEX1(1) <= '1' when SW(7 downto 4) = "0101" else '1' when SW(7 downto 4) = "1110" else '1' when SW(7 downto 4) = "1011" else '1' when SW(7 downto 4) = "1111" 
--else '1' when SW(7 downto 4) = "0110" else '1' when SW(7 downto 4) = "1100" else '0'; 
--
--HEX1(2) <= ((SW(5) and not SW(4)) and (SW(7) xnor SW(6))) or (SW(7) and SW(6) and (SW(5) xnor SW(4))) ; 
--
--HEX1(3) <= '1' when SW(7 downto 4) = "0001" else '1' when SW(7 downto 4) = "0100" else '1' when SW(7 downto 4) = "0111" else '1' when SW(7 downto 4) = "1111" 
--else '1' when SW(7 downto 4) = "1010" else '0'; 
--
--HEX1(4) <= '1' when SW(7 downto 4) = "0001" else '1' when SW(7 downto 4) = "0100" else '1' when SW(7 downto 4) = "0011" else '1' when SW(7 downto 4) = "0101"
--else '1' when SW(7 downto 4) = "1001" else '1' when SW(7 downto 4) = "0111" else '0';
--
--HEX1(5) <= '1' when SW(7 downto 4) = "0001" else '1' when SW(7 downto 4) = "0010" else '1' when SW(7 downto 4) = "0011" else '1' when SW(7 downto 4) = "0111"
--else '1' when SW(7 downto 4) = "1101" else '0'; 
--
--HEX1(6) <= '1' when SW(7 downto 4) = "0000" else '1' when SW(7 downto 4) = "0001" else '1' when SW(7 downto 4) = "0111" else '1' when SW(7 downto 4) = "1100" else '0'; 
--
----------------------------------------------------------------------------------------------------
--
--HEX2(0) <= not SW(9) and SW(8);
--
--HEX2(1) <= '0';
--
--HEX2(2) <= SW(9) and (not SW(8));  
--
--HEX2(3) <= (not SW(9)) and SW(8);
--
--HEX2(4) <= SW(8);
--
--HEX2(5) <= SW(8) or SW(9);
--
--HEX2(6) <= not SW(9);
--
--end rtl;


----------------------------
-- Conceito A --
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
		HEX2    : out std_logic_vector(6 downto 0);
		HEX3    : out std_logic_vector(6 downto 0)
		
		
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is

---------------
-- implementacao
---------------

impure function Display(X: Integer) return std_logic_vector is

variable MySlv : std_logic_vector(0 to 6);
begin
	case X is
		when 0 => MySlv := "1000000";
		when 1 => MySlv := "1111001";
		when 2 => MySlv := "0100100";
		when 3 => MySlv := "0110000";
		when 4 => MySlv := "0011001";
		when 5 => MySlv := "0010010";
		when 6 => MySlv := "0000010";
		when 7 => MySlv := "1111000";
		when 8 => MySlv := "0000000";
		when 9 => MySlv := "0010000";
		when others => MySlv := "1111111";
	end case;
	return MySlv;
end Display;

type t_vector is array (0 to 3) of integer; 

impure function Parse(N: Integer) return t_vector is
variable vec : t_vector;
variable temp1 : Integer;
variable temp2 : Integer;
variable temp3 : Integer;

begin
	vec(0):= -1;
	vec(1):= -1;
	vec(2):= -1;
	vec(3):= -1;
	
	if (N<10) then 
		vec(3) := N;
	elsif (N<100) then
		temp1 := N/10;
		vec(2) := temp1;
		vec(3) := N - 10*temp1;
	elsif (N<1000) then
		temp2 := N/10;
		vec(3) := N - 10 * temp2;
		temp1 := N/100;
		vec(1) := temp1;
		vec(2) := (N - temp1*100)/10;
	else
		temp1 := N/10;
		vec(3) := N - 10*temp1;
		temp2 := N/100;
		vec(2) := (N - temp2*100)/10;
		temp3 := N/1000;
		vec(0) := temp3;
		vec(1) := (N - temp3*1000)/100;
	end if;
	return vec;
end Parse;


--------------
-- signals  --
--------------

signal vector : t_vector;


signal total_b10: Integer;

begin

total_b10 <= to_integer(unsigned(SW));
vector <= Parse(total_b10);
HEX3 <= Display(vector(0));
HEX2 <= Display(vector(1));
HEX1 <= Display(vector(2));
HEX0 <= Display(vector(3));

end rtl;