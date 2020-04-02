LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY oneSecClock IS
	PORT (SW, CLOCK_50 : IN  STD_LOGIC;
			count			 : OUT integer);	
END oneSecClock;

ARCHITECTURE Behavior OF oneSecClock IS
	COMPONENT debounce
		PORT (clk, button : IN 	STD_LOGIC;
				result		: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL En 	: STD_LOGIC;
	SIGNAL bigQ : integer := 0;
	SIGNAL smallQ : integer range 0 to 3 := 0;
BEGIN
	CLKDB : debounce PORT MAP (CLOCK_50, SW, En);		--SW(1) = Enable / T
	
	PROCESS (CLOCK_50)
	BEGIN
		count <= smallQ;
		IF rising_edge(CLOCK_50) AND En = '1' THEN
			bigQ <= bigQ + 1;
			IF bigQ = 50000000 THEN
				bigQ <= 0;
				smallQ <= smallQ + 1;
				IF smallQ = 3 THEN
					smallQ <= 0;
				END IF;
			END IF;
		END IF;
	END PROCESS;
END Behavior;