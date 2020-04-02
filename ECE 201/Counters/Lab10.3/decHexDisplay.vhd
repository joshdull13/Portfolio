LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY decHexDisplay IS
	PORT	(	SW		: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
				HEX0	: OUT STD_LOGIC_VECTOR(0 TO 6));
END decHexDisplay;

ARCHITECTURE Behavior OF decHexDisplay IS
BEGIN	
	HEX0(0) <= 	((NOT SW(3)) AND (NOT SW(2)) AND (NOT SW(1)) AND SW(0)) OR 
					(SW(2) AND (NOT SW(1)) AND (NOT SW(0)));
	
	HEX0(1) <=	(SW(2) AND (NOT SW(1)) AND SW(0)) OR (SW(2) AND SW(1) AND (NOT SW(0)));
	
	HEX0(2) <= 	((NOT SW(2)) AND SW(1) AND (NOT SW(0)));
	
	HEX0(3) <=	(SW(2) AND (NOT SW(1)) AND (NOT SW(0))) OR (SW(2) AND SW(1) AND SW(0))
					OR ((NOT SW(2)) AND (NOT SW(1)) AND SW(0));
					
	HEX0(4) <=	SW(0) OR (SW(2) AND (NOT SW(1)));
	
	HEX0(5) <=	(SW(1) AND SW(0)) OR ((NOT SW(3)) AND (NOT SW(2)) AND SW(0))
					OR ((NOT SW(3)) AND (NOT SW(2)) AND SW(1));
	
	HEX0(6) <=	((NOT SW(3)) AND (NOT SW(2)) AND (NOT SW(1))) 
					OR (SW(2) AND SW(1) AND SW(0));	
END Behavior;