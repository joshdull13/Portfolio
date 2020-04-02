LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part3 IS
	PORT ( 	Clk, D : IN STD_LOGIC;
				Q : OUT STD_LOGIC);
END part3;

ARCHITECTURE Behavior OF part3 IS
	
	COMPONENT gatedDlatch
		PORT ( 	Clk, D : IN STD_LOGIC;
					Q : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL Qm, notClk : STD_LOGIC;
	
BEGIN
	
	notClk <= NOT Clk;
	
	GDLm : gatedDlatch PORT MAP (notClk, D, Qm);
	GDLs : gatedDlatch PORT MAP (Clk, Qm, Q);
	
END Behavior;
