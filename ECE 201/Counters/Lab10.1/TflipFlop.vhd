LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY TflipFlop IS
	PORT ( 	T, Clk, Clear : IN  STD_LOGIC;
				Q				  : OUT STD_LOGIC);
				
END TflipFlop;

ARCHITECTURE Behavior OF TflipFlop IS
	SIGNAL Qa : STD_LOGIC;
BEGIN
	
	PROCESS (Clk, Clear)
	BEGIN
		IF Clear = '1' THEN
			Qa <= '0';
		ELSIF rising_edge(Clk) THEN
			IF T = '1' THEN
				Qa <= not Qa;
			END IF;
		END IF;
	END PROCESS;
	
	Q <= Qa;
	
END Behavior;
