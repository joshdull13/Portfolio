LIBRARY ieee ;
USE ieee.std_logic_1164.all;

ENTITY byteToHex7Seg IS
	PORT ( 	byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				HEX0, HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6));
				
END byteToHex7Seg;

ARCHITECTURE Behavior OF byteToHex7Seg IS

	COMPONENT fourBitToHex7Seg
		PORT ( 	bits : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
					HEX : OUT STD_LOGIC_VECTOR(0 TO 6));
	END COMPONENT;
	
BEGIN
				  
	bth0 : fourBitToHex7Seg PORT MAP(byte(3 DOWNTO 0), HEX0);
	bth1 : fourBitToHex7Seg PORT MAP(byte(7 DOWNTO 4), HEX1);
	
END Behavior;
