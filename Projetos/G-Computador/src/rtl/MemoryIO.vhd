library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MemoryIO is
   PORT(
     -- Sistema
     CLK_SLOW : IN  STD_LOGIC;
     CLK_FAST : IN  STD_LOGIC;
     RST      : IN  STD_LOGIC;

     -- RAM 16K
     ADDRESS  : IN  STD_LOGIC_VECTOR (14 DOWNTO 0);
     INPUT		: IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
     LOAD	  	: IN  STD_LOGIC ;
     OUTPUT		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);

     -- LCD EXTERNAL I/OS
     LCD_CS_N     : OUT   STD_LOGIC;
     LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
     LCD_RD_N     : OUT   STD_LOGIC;
     LCD_RESET_N  : OUT   STD_LOGIC;
     LCD_RS       : OUT   STD_LOGIC;
     LCD_WR_N     : OUT   STD_LOGIC;
     LCD_ON       : OUT   STD_LOGIC := '1';	-- liga e desliga o LCD
     LCD_INIT_OK  : OUT   STD_LOGIC;

     -- I/Os
     SW  : in std_logic_vector(9 downto 0);
     LED : OUT std_logic_vector(9 downto 0)

		);
end entity;


ARCHITECTURE logic OF MemoryIO IS

  component Screen is
    PORT(
      -- Sistema
      CLK_FAST : IN  STD_LOGIC;
      CLK_SLOW : IN  STD_LOGIC;
      RST 	   : IN  STD_LOGIC;

      -- interface
      INPUT        : IN STD_LOGIC_VECTOR(15 downto 0); -- vetor de pxs
      LOAD         : IN  STD_LOGIC;                    -- grava dado
      ADDRESS      : IN STD_LOGIC_VECTOR(13 downto 0); -- endereço

      -- LCD EXTERNAL I/OS
      LCD_INIT_OK  : OUT STD_LOGIC;
      LCD_CS_N     : OUT   STD_LOGIC;
      LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
      LCD_RD_N     : OUT   STD_LOGIC;
      LCD_RESET_N  : OUT   STD_LOGIC;
      LCD_RS       : OUT   STD_LOGIC;
      LCD_WR_N     : OUT   STD_LOGIC);
  end component;

  component RAM16K is
    port  (
      clock		: IN STD_LOGIC;
      address	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
      data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      wren		: IN STD_LOGIC;
      q		   : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
  end component;

  component Mux4Way16 is
    Port (
      sel : in  STD_LOGIC_VECTOR ( 1 downto 0);
      a   : in  STD_LOGIC_VECTOR (15 downto 0);
      b   : in  STD_LOGIC_VECTOR (15 downto 0);
      c   : in  STD_LOGIC_VECTOR (15 downto 0);
      d   : in  STD_LOGIC_VECTOR (15 downto 0);
      q   : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  component DMux4Way is
  port ( 
      a:   in  STD_LOGIC;
      sel: in  STD_LOGIC_VECTOR(1 downto 0);
      q0:  out STD_LOGIC;
      q1:  out STD_LOGIC;
      q2:  out STD_LOGIC;
      q3:  out STD_LOGIC);
  end component;

  component Register16 is
  port(
    clock:   in STD_LOGIC;
    input:   in STD_LOGIC_VECTOR(15 downto 0);
    load:    in STD_LOGIC;
    output: out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
signal selDMux,selMux : std_logic_vector(1 downto 0);
signal inputRam,inputRegister,inputScreen,inputVazio : std_logic;
signal outRam: std_logic_vector(15 downto 0);
signal LED16,SW16,INPUT16 : std_logic_vector(15 downto 0);
begin
-----------------------------------
-- Dicas de uso, screen e RAM16k --
-----------------------------------
selDMux <= "00" when ADDRESS(14) = '0' else
          "01" when ADDRESS = "101001011000000" else 
          "10";

demux4: DMux4Way port map (load,selDMux,inputRam,inputRegister,inputScreen,inputVazio);   

DISPLAY: Screen  port map (
    RST         => RST,
    CLK_FAST    => CLK_FAST,
    CLK_SLOW    => CLK_SLOW,
    INPUT       => INPUT,
    LOAD        => inputScreen,
    ADDRESS     => ADDRESS(13 downto 0),
    LCD_INIT_OK => LCD_INIT_OK,
    LCD_CS_N 	  => LCD_CS_N ,
    LCD_D       => LCD_D,
    LCD_RD_N 	  => LCD_RD_N,
    LCD_RESET_N => LCD_RESET_N,
    LCD_RS 	    => LCD_RS,
    LCD_WR_N 	  => LCD_WR_N
    );

    LED <= LED16(9 DOWNTO 0);
    SW16 <= "000000" & SW;
    INPUT16 <= "000000" & INPUT(9 downto 0);

  Reg16: Register16 port map(CLK_SLOW,INPUT16,inputRegister,LED16);



  RAM: RAM16K  PORT MAP(
      clock		=> CLK_FAST,
      address =>ADDRESS(13 downto 0),
      data		=>INPUT,
      wren		=>inputRam,
      q		    => outRam
    );

  selMux <= "00" when ADDRESS = "101001011000001" else "01";

  Mx4_16: Mux4Way16 port map(selMux,SW16,outRam,"0000000000000000","0000000000000000",OUTPUT);

END logic;
