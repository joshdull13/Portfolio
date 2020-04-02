library ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY part2 IS
	PORT	(w, clk, reset	: IN 	std_logic;
			 z			 		: OUT std_logic);
END part2;

ARCHITECTURE Behavior OF part2 IS

	COMPONENT DflipFlop
		PORT (D, clk, reset	: IN 	std_logic;
				Q		 			: OUT std_logic);
	END COMPONENT;
	
	SIGNAL D, Q : std_logic_vector(8 DOWNTO 0);
BEGIN
	
	D(8) <= w AND (D(7) OR D(8));
	D(7) <= w AND D(6);
	D(6) <= w AND D(5);
	D(5) <= w AND (D(0) OR D(1) OR D(2) OR D(3) OR D(4));
	D(4) <= (not w) AND (D(3) OR D(4));
	D(3) <= (not w) AND D(2);
	D(2) <= (not w) AND D(1);
	D(1) <= (not w) AND (D(0) OR D(5) OR D(6) OR D(7) OR D(8)); 
	D(0) <= reset;
	
	dff8 : DflipFlop PORT MAP (D(8), clk, reset, Q(8));
	dff7 : DflipFlop PORT MAP (D(7), clk, reset, Q(7));
	dff6 : DflipFlop PORT MAP (D(6), clk, reset, Q(6));
	dff5 : DflipFlop PORT MAP (D(5), clk, reset, Q(5));
	dff4 : DflipFlop PORT MAP (D(4), clk, reset, Q(4));
	dff3 : DflipFlop PORT MAP (D(3), clk, reset, Q(3));
	dff2 : DflipFlop PORT MAP (D(2), clk, reset, Q(2));
	dff1 : DflipFlop PORT MAP (D(1), clk, reset, Q(1));
	dff0 : DflipFlop PORT MAP (D(0), clk, reset, Q(0));
	
	z <= Q(4) OR Q(8);

END Behavior;