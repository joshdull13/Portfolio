LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fullAdder IS
	PORT	(	a, b, carryIn : IN STD_LOGIC;
				s, carryOut	: OUT STD_LOGIC);
	
END fullAdder;

ARCHITECTURE Behavior OF fullAdder IS
	SIGNAL Sel : STD_LOGIC;
BEGIN
	
	Sel <= a XOR b;
	
	s <= Sel XOR carryIn;
	carryOut <= (b AND (NOT Sel)) OR (carryIn AND Sel);
	
END Behavior;