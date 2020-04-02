LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY rippleAdder IS
	PORT	(	a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				cIn  : IN STD_LOGIC;
				s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
				cOut  : OUT STD_LOGIC);
	
END rippleAdder;

ARCHITECTURE Behavior OF rippleAdder IS
	
	COMPONENT fullAdder
		PORT	( 	a, b, carryIn : IN STD_LOGIC;
					s, carryOut	: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL C : STD_LOGIC_VECTOR(6 DOWNTO 0);
	
BEGIN

	FA0: fullAdder PORT MAP (a(0), b(0), cIn, s(0), C(0));
	FA1: fullAdder PORT MAP (a(1), b(1), C(0), s(1), C(1));
	FA2: fullAdder PORT MAP (a(2), b(2), C(1), s(2), C(2));
	FA3: fullAdder PORT MAP (a(3), b(3), C(2), s(3), C(3));
	FA4: fullAdder PORT MAP (a(4), b(4), C(3), s(4), C(4));
	FA5: fullAdder PORT MAP (a(5), b(5), C(4), s(5), C(5));
	FA6: fullAdder PORT MAP (a(6), b(6), C(5), s(6), C(6));
	FA7: fullAdder PORT MAP (a(7), b(7), C(6), s(7), cOut);

END Behavior;