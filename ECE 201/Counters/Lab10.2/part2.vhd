LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY part2 IS
	PORT ( key, SW0, SW1, CLOCK_50 : IN STD_LOGIC;
			 HEX0, HEX1, HEX2, HEX3  : OUT STD_LOGIC_VECTOR(0 TO 6));	
END part2;
ARCHITECTURE Behavior OF part2 IS
	COMPONENT debounce
		PORT (clk, button : IN 	STD_LOGIC;
				result		: OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT byteToHex7Seg
		PORT (byte : IN unsigned(7 DOWNTO 0);
				HEX0, HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	SIGNAL Clk, En, Clear 	: STD_LOGIC;
	SIGNAL T, Q : unsigned(15 DOWNTO 0);
BEGIN
	CLKDB0 : debounce PORT MAP (CLOCK_50, key, Clk);	--Key(0) = clock
	CLKDB1 : debounce PORT MAP (CLOCK_50, SW0, Clear);	--SW(0) = clear
	CLKDB2 : debounce PORT MAP (CLOCK_50, SW1, En);		--SW(1) = Enable / T
	
	PROCESS (Clk, Clear)
	BEGIN
		IF Clear = '1' THEN
			Q <= "0000000000000000";
		ELSIF rising_edge(Clk) THEN
			IF En = '1' THEN
				Q <= Q + 1;
			END IF;
		END IF;
	END PROCESS;
	
	bth0 : byteToHex7Seg PORT MAP(Q(7 DOWNTO 0), HEX0, HEX1);
	bth1 : byteToHex7Seg PORT MAP(Q(15 DOWNTO 8), HEX2, HEX3);
END Behavior;