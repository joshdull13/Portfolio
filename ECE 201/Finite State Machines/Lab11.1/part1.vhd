library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY part1 IS
	PORT	(w, clk, reset	: IN 	std_logic;
			 z, y1, y0 		: OUT std_logic);
END part1;

ARCHITECTURE Behavior OF part1 IS

	COMPONENT DflipFlop
		PORT (D, clk, reset	: IN 	std_logic;
				Q, Qbar 			: OUT std_logic);
	END COMPONENT;
	
	SIGNAL D, Q, Qb : std_logic_vector(1 DOWNTO 0);
	ATTRIBUTE KEEP : BOOLEAN;
	ATTRIBUTE KEEP OF D, Q, Qb : SIGNAL IS TRUE;
BEGIN

	D(1) <= (Q(1) OR Q(0)) AND w;
	D(0) <= Qb(1) AND Qb(0) AND w;
	
	dff1 : DflipFlop PORT MAP (D(1), clk, reset, Q(1), Qb(1));
	dff0 : DflipFlop PORT MAP (D(0), clk, reset, Q(0), Qb(0));
	
	z <= Q(1);
	y1 <= Q(1);
	y0 <= Q(0);

END Behavior;