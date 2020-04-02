LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY part3 IS
	PORT ( SW0, SW1, CLOCK_50 : IN STD_LOGIC;
			 HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6));	
END part3;
ARCHITECTURE Behavior OF part3 IS
	COMPONENT debounce
		PORT (clk, button : IN 	STD_LOGIC;
				result		: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT decHexDisplay
		PORT (SW		:	IN 	STD_LOGIC_VECTOR(3 DOWNTO 0);
				HEX0	: 	OUT 	STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	
	SIGNAL En 	: STD_LOGIC;
	SIGNAL bigQ : integer := 0;
	SIGNAL smallQ : integer range 0 to 9 := 0;
BEGIN
	CLKDB : debounce PORT MAP (CLOCK_50, SW1, En);		--SW(1) = Enable / T
	
	PROCESS (CLOCK_50)
	BEGIN
		IF rising_edge(CLOCK_50) AND En = '1' THEN
			bigQ <= bigQ + 1;
			IF bigQ = 50000000 THEN
				bigQ <= 0;
				smallQ <= smallQ + 1;
				IF smallQ = 9 THEN
					smallQ <= 0;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	dhd : decHexDisplay PORT MAP (STD_LOGIC_VECTOR(to_unsigned(smallQ, 4)), HEX0);
	
END Behavior;