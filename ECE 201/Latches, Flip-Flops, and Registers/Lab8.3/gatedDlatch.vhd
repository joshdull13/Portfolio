LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY gatedDlatch IS
	PORT ( 	Clk, D : IN STD_LOGIC;
				Q : OUT STD_LOGIC);
END gatedDlatch;

ARCHITECTURE Behavior OF gatedDlatch IS
	SIGNAL R_g, S_g, Qa, Qb, S, R : STD_LOGIC ;
	ATTRIBUTE KEEP : BOOLEAN;
	ATTRIBUTE KEEP OF R_g, S_g, Qa, Qb : SIGNAL IS TRUE;
BEGIN
	
	S <= D;
	R <= NOT D;
	R_g <= R NAND Clk;
	S_g <= S NAND Clk;
	Qa <= S_g NAND Qb;
	Qb <= R_g NAND Qa;
	Q <= Qa;
	
END Behavior;
