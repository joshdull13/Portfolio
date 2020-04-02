library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY DflipFlop IS
	PORT	(D, clk, reset	: IN 	std_logic;
			 Q					: OUT std_logic);
END DflipFlop;

ARCHITECTURE Behavior OF DflipFlop IS
	SIGNAL Qa, QaBar, R, S : std_logic;
	
BEGIN
	
	PROCESS (clk, reset)
	BEGIN
		IF reset = '1' THEN
			Qa <= '0';
			QaBar <= not Qa;
		ELSIF rising_edge(clk) THEN
			IF D = '1' THEN
				Qa <= '1';
				QaBar <= not Qa;
			ELSIF D = '0' THEN
				Qa <= '0';
				QaBar <= not Qa;
			END IF;
		END IF;
		
	Q <= Qa;
	
	END PROCESS;
	
END Behavior;