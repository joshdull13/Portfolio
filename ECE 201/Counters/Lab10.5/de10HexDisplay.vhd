LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
ENTITY de10HexDisplay IS
	PORT (count 				: IN  integer;
			HEX0, HEX1, HEX2, 
			HEX3, HEX4, HEX5	: OUT STD_LOGIC_VECTOR(0 TO 6));	
END de10HexDisplay;
ARCHITECTURE Behavior OF de10HexDisplay IS
BEGIN
	PROCESS (count)
	BEGIN
		IF count = 0 THEN
			HEX0 <= "0000001"; -- 0
			HEX1 <= "1001111"; -- 1
			HEX2 <= "0110000"; -- E
			HEX3 <= "1000010"; -- d
			HEX4 <= "1111111"; -- " "
			HEX5 <= "1111111"; -- " "
		ELSIF count = 1 THEN
			HEX1 <= "0000001"; -- 0
			HEX2 <= "1001111"; -- 1
			HEX3 <= "0110000"; -- E
			HEX4 <= "1000010"; -- d
			HEX5 <= "1111111"; -- " "
			HEX0 <= "1111111"; -- " "
		ELSIF count = 2 THEN
			HEX2 <= "0000001"; -- 0
			HEX3 <= "1001111"; -- 1
			HEX4 <= "0110000"; -- E
			HEX5 <= "1000010"; -- d
			HEX0 <= "1111111"; -- " "
			HEX1 <= "1111111"; -- " "
		ELSIF count = 3 THEN
			HEX3 <= "0000001"; -- 0
			HEX4 <= "1001111"; -- 1
			HEX5 <= "0110000"; -- E
			HEX0 <= "1000010"; -- d
			HEX1 <= "1111111"; -- " "
			HEX2 <= "1111111"; -- " "
		ELSIF count = 4 THEN
			HEX4 <= "0000001"; -- 0
			HEX5 <= "1001111"; -- 1
			HEX0 <= "0110000"; -- E
			HEX1 <= "1000010"; -- d
			HEX2 <= "1111111"; -- " "
			HEX3 <= "1111111"; -- " "
		ELSIF count = 5 THEN
			HEX5 <= "0000001"; -- 0
			HEX0 <= "1001111"; -- 1
			HEX1 <= "0110000"; -- E
			HEX2 <= "1000010"; -- d
			HEX3 <= "1111111"; -- " "
			HEX4 <= "1111111"; -- " "
		END IF;
	END PROCESS;
END Behavior;