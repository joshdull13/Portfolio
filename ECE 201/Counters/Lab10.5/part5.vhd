LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY part5 IS
	PORT ( SW, CLOCK_50 		: IN 	STD_LOGIC;
			 HEX0, HEX1, HEX2, 
			 HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6));	
END part5;

ARCHITECTURE Behavior OF part5 IS
	COMPONENT oneSecClock
		PORT (SW, CLOCK_50 : IN  STD_LOGIC;
				count			 : OUT integer);	
	END COMPONENT;
	
	COMPONENT de10HexDisplay IS
		PORT (count 				: IN  integer;
				HEX0, HEX1, HEX2, 
				HEX3, HEX4, HEX5	: OUT STD_LOGIC_VECTOR(0 TO 6));	
	END COMPONENT;
	
	SIGNAL count 	: integer;
BEGIN
	OSC : oneSecClock PORT MAP(SW, CLOCK_50, count);
	
	de10 : de10HexDisplay PORT MAP (count, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
	
END Behavior;