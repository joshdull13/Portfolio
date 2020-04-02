LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY part5 IS
	PORT ( 	SW : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				Clk, Reset : IN STD_LOGIC;
				HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
				: OUT STD_LOGIC_VECTOR(0 TO 6);
				carryOut: OUT STD_LOGIC);
END part5;

ARCHITECTURE Behavior OF part5 IS
	COMPONENT byteToHex7Seg
		PORT ( 	byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
					HEX0, HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	COMPONENT rippleAdder
		PORT	(	a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
					cIn  : IN STD_LOGIC;
					s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
					cOut  : OUT STD_LOGIC);
	END COMPONENT;
	SIGNAL tempQA, Qa, Qb : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL Sum : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	PROCESS (SW, Clk)
	BEGIN
		IF Reset = '0' THEN
			tempQA <= "00000000";
		ELSE
			IF Clk = '0' THEN
				tempQA <= SW;
			ELSIF Clk = '1' THEN
				Qa <= tempQA;
			END IF;
		END IF;
	END PROCESS;
	
	Qb <= SW;
	
	RA : rippleAdder PORT MAP (Qa, Qb, '0', Sum, carryOut);
	
	BtHb : byteToHex7Seg PORT MAP(Qb, HEX0, HEX1);
	BtHa : byteToHex7Seg PORT MAP(Qa, HEX2, HEX3);
	BtHS : byteToHex7Seg PORT MAP(Sum, HEX4, HEX5);
END Behavior;
