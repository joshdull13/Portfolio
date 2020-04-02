
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part2 IS
	PORT ( 	SW: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				LED : OUT STD_LOGIC);
END part2;

ARCHITECTURE Behavior OF part2 IS
	
	COMPONENT part2b
		PORT (	Clk, D : IN STD_LOGIC;
					Q : OUT STD_LOGIC);
	END COMPONENT;
	
BEGIN
	
	p2 : part2b PORT MAP (SW(1), SW(0), LED);
	
END Behavior;