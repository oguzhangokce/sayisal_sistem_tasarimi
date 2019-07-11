 LIBRARY ieee;
 USE ieee.std_logic_1164.all;
 
ENTITY yap_dav IS
PORT (a,b,clk : IN std_logic;
			q : OUT std_logic);
END yap_dav;

ARCHITECTURE mimari1 OF yap_dav IS
signal temp: std_logic;
BEGIN

temp<=a NAND b;

	process()
	begin
	if (clk='1' AND clk'EVENT) then q<=temp;
	end if;
	end process;
	
END mimari1;
