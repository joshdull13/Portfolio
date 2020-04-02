LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY byteToHex7Seg IS
	PORT ( 	byte : IN unsigned(7 DOWNTO 0);
				HEX0, HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6));
				
END byteToHex7Seg;

ARCHITECTURE Behavior OF byteToHex7Seg IS

	COMPONENT fourBitToHex7Seg
		PORT ( 	bits : IN unsigned(3 DOWNTO 0);
					HEX : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	
BEGIN
				  
	bth0 : fourBitToHex7Seg PORT MAP(byte(3 DOWNTO 0), HEX0);
	bth1 : fourBitToHex7Seg PORT MAP(byte(7 DOWNTO 4), HEX1);
	
END Behavior;

LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY fourBitToHex7Seg IS
	PORT ( 	bits : IN unsigned(3 DOWNTO 0);
				HEX : OUT STD_LOGIC_VECTOR(0 TO 6));
				
END fourBitToHex7Seg;

ARCHITECTURE Behavior OF fourBitToHex7Seg IS
BEGIN
	
	HEX(0) <= ((not bits(3)) AND (not bits(2)) AND (not bits(1)) AND bits(0)) OR
				  ((not bits(3)) AND bits(2) AND (not bits(1)) AND (not bits(0))) OR
				  (bits(3) AND bits(2) AND (not bits(1)) AND bits(0)) OR
				  (bits(3) AND (not bits(2)) AND bits(1) AND bits(0));
				  
	HEX(1) <= (bits(3) AND bits(2) AND (not bits(0))) OR
				  (bits(3) AND bits(2) AND bits(1)) OR
				  (bits(3) AND bits(1) AND bits(0)) OR
				  (bits(2) AND bits(1) AND (not bits(0))) OR
				  ((not bits(3)) AND bits(2) AND (not bits(1)) AND bits(0));
				  
	HEX(2) <= (bits(3) AND bits(2) AND (not bits(0))) OR
				  (bits(3) AND bits(2) AND bits(1)) OR
				  ((not bits(3)) AND (not bits(2)) AND bits(1) AND (not bits(0)));
				  
	HEX(3) <= ((not bits(2)) AND (not bits(1)) AND bits(0)) OR
				  (bits(2) AND bits(1) AND bits(0)) OR
				  ((not bits(3)) AND bits(2) AND (not bits(1)) AND (not bits(0))) OR
				  (bits(3) AND (not bits(2)) AND bits(1) AND (not bits(0)));
	
	HEX(4) <= ((not bits(3)) AND bits(0)) OR
				  ((not bits(3)) AND bits(2) AND (not bits(1))) OR
				  ((not bits(2)) AND (not bits(1)) AND bits(0));
				  
	HEX(5) <= ((not bits(3)) AND (not bits(2)) AND bits(0)) OR
				  ((not bits(3)) AND (not bits(2)) AND bits(1)) OR
				  ((not bits(3)) AND bits(1) AND bits(0)) OR
				  (bits(3) AND bits(2) AND (not bits(1)) AND bits(0));
				  
	HEX(6) <= ((not bits(3)) AND (not bits(2)) AND (not bits(1))) OR
				  ((not bits(3)) AND bits(2) AND bits(1) AND bits(0)) OR
				  (bits(3) AND bits(2) AND (not bits(1)) AND (not bits(0)));
	
END Behavior;