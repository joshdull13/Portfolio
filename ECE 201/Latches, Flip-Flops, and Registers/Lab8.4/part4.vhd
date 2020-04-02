LIBRARY ieee ;
USE ieee.std_logic_1164.all;
ENTITY part4 IS
	PORT ( 	D, Clk : IN STD_LOGIC ;
				Qa, Qb, Qc : OUT STD_LOGIC) ;
END part4;

ARCHITECTURE Behavior OF part4 IS
	SIGNAL posM, negM : STD_LOGIC;
BEGIN

	PROCESS ( D, Clk )
	BEGIN
		IF Clk = '1' THEN
			Qa <= D;
		END IF;
	END PROCESS;
	
	PROCESS ( D, Clk)
	BEGIN
		IF Clk = '0' THEN
			posM <= D;
		ELSIF Clk = '1' THEN
			Qb <= posM;
		END IF;
	END PROCESS;
	
	PROCESS ( D, Clk)
	BEGIN
		IF Clk = '1' THEN
			negM <= D;
		ELSIF Clk = '0' THEN
			Qc <= negM;
		END IF;
	END PROCESS;
		
	
END Behavior;
