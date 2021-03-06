LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY part1 IS
	PORT ( key, SW0, SW1, CLOCK_50 : IN STD_LOGIC;
			 HEX0, HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
			 Qout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));	
END part1;

ARCHITECTURE Behavior OF part1 IS
	COMPONENT TflipFlop
		PORT (	T, Clk, Clear 	: IN 	STD_LOGIC;
					Q 			: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT debounce
		PORT (clk 		: IN 	STD_LOGIC;
				button	: IN 	STD_LOGIC;
				result	: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT byteToHex7Seg
		PORT (byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				HEX0, HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	
	SIGNAL Clk, En, Clear 	: STD_LOGIC;
	SIGNAL T, Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	
	CLKDB0 : debounce PORT MAP (CLOCK_50, key, Clk);	--Key(0) = clock
	CLKDB1 : debounce PORT MAP (CLOCK_50, SW0, Clear);	--SW(0) = clear
	CLKDB2 : debounce PORT MAP (CLOCK_50, SW1, En);		--SW(1) = Enable / T
	
	T(0) <= En;
	Tff0 : TflipFlop PORT MAP(T(0), Clk, Clear, Q(0));
	T(1) <= Q(0) AND T(0);
	Tff1 : TflipFlop PORT MAP(T(1), Clk, Clear, Q(1));
	T(2) <= Q(1) AND T(1);
	Tff2 : TflipFlop PORT MAP(T(2), Clk, Clear, Q(2));
	T(3) <= Q(2) AND T(2);
	Tff3 : TflipFlop PORT MAP(T(3), Clk, Clear, Q(3));
	T(4) <= Q(3) AND T(3);
	Tff4 : TflipFlop PORT MAP(T(4), Clk, Clear, Q(4));
	T(5) <= Q(4) AND T(4);
	Tff5 : TflipFlop PORT MAP(T(5), Clk, Clear, Q(5));
	T(6) <= Q(5) AND T(5);
	Tff6 : TflipFlop PORT MAP(T(6), Clk, Clear, Q(6));
	T(7) <= Q(6) AND T(6);
	Tff7 : TflipFlop PORT MAP(T(7), Clk, Clear, Q(7));
	
	Qout <= Q;
	
	bth : byteToHex7Seg PORT MAP(Q, HEX0, HEX1);
	
END Behavior;
