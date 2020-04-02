-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/17/2019 22:20:04"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part1 IS
    PORT (
	key : IN std_logic;
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	CLOCK_50 : IN std_logic;
	HEX0 : BUFFER std_logic_vector(0 TO 6);
	HEX1 : BUFFER std_logic_vector(0 TO 6);
	Qout : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END part1;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qout[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_key : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_Qout : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLKDB0|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \Qout[0]~output_o\ : std_logic;
SIGNAL \Qout[1]~output_o\ : std_logic;
SIGNAL \Qout[2]~output_o\ : std_logic;
SIGNAL \Qout[3]~output_o\ : std_logic;
SIGNAL \Qout[4]~output_o\ : std_logic;
SIGNAL \Qout[5]~output_o\ : std_logic;
SIGNAL \Qout[6]~output_o\ : std_logic;
SIGNAL \Qout[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \key~input_o\ : std_logic;
SIGNAL \CLKDB0|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \CLKDB0|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \CLKDB0|count[0]~19_combout\ : std_logic;
SIGNAL \CLKDB0|counter_set~combout\ : std_logic;
SIGNAL \CLKDB0|result~2_combout\ : std_logic;
SIGNAL \CLKDB0|result~1_combout\ : std_logic;
SIGNAL \CLKDB0|result~3_combout\ : std_logic;
SIGNAL \CLKDB0|result~4_combout\ : std_logic;
SIGNAL \CLKDB0|result~6_combout\ : std_logic;
SIGNAL \CLKDB0|count[0]~20\ : std_logic;
SIGNAL \CLKDB0|count[1]~21_combout\ : std_logic;
SIGNAL \CLKDB0|count[1]~22\ : std_logic;
SIGNAL \CLKDB0|count[2]~23_combout\ : std_logic;
SIGNAL \CLKDB0|count[2]~24\ : std_logic;
SIGNAL \CLKDB0|count[3]~25_combout\ : std_logic;
SIGNAL \CLKDB0|count[3]~26\ : std_logic;
SIGNAL \CLKDB0|count[4]~27_combout\ : std_logic;
SIGNAL \CLKDB0|count[4]~28\ : std_logic;
SIGNAL \CLKDB0|count[5]~29_combout\ : std_logic;
SIGNAL \CLKDB0|count[5]~30\ : std_logic;
SIGNAL \CLKDB0|count[6]~31_combout\ : std_logic;
SIGNAL \CLKDB0|count[6]~32\ : std_logic;
SIGNAL \CLKDB0|count[7]~33_combout\ : std_logic;
SIGNAL \CLKDB0|count[7]~34\ : std_logic;
SIGNAL \CLKDB0|count[8]~35_combout\ : std_logic;
SIGNAL \CLKDB0|count[8]~36\ : std_logic;
SIGNAL \CLKDB0|count[9]~37_combout\ : std_logic;
SIGNAL \CLKDB0|count[9]~38\ : std_logic;
SIGNAL \CLKDB0|count[10]~39_combout\ : std_logic;
SIGNAL \CLKDB0|count[10]~40\ : std_logic;
SIGNAL \CLKDB0|count[11]~41_combout\ : std_logic;
SIGNAL \CLKDB0|count[11]~42\ : std_logic;
SIGNAL \CLKDB0|count[12]~43_combout\ : std_logic;
SIGNAL \CLKDB0|count[12]~44\ : std_logic;
SIGNAL \CLKDB0|count[13]~45_combout\ : std_logic;
SIGNAL \CLKDB0|count[13]~46\ : std_logic;
SIGNAL \CLKDB0|count[14]~47_combout\ : std_logic;
SIGNAL \CLKDB0|count[14]~48\ : std_logic;
SIGNAL \CLKDB0|count[15]~49_combout\ : std_logic;
SIGNAL \CLKDB0|count[15]~50\ : std_logic;
SIGNAL \CLKDB0|count[16]~51_combout\ : std_logic;
SIGNAL \CLKDB0|count[16]~52\ : std_logic;
SIGNAL \CLKDB0|count[17]~53_combout\ : std_logic;
SIGNAL \CLKDB0|count[17]~54\ : std_logic;
SIGNAL \CLKDB0|count[18]~55_combout\ : std_logic;
SIGNAL \CLKDB0|result~0_combout\ : std_logic;
SIGNAL \CLKDB0|result~5_combout\ : std_logic;
SIGNAL \CLKDB0|result~feeder_combout\ : std_logic;
SIGNAL \CLKDB0|result~q\ : std_logic;
SIGNAL \CLKDB0|result~clkctrl_outclk\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \CLKDB2|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \CLKDB2|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \CLKDB2|count[0]~19_combout\ : std_logic;
SIGNAL \CLKDB2|counter_set~combout\ : std_logic;
SIGNAL \CLKDB2|count[0]~20\ : std_logic;
SIGNAL \CLKDB2|count[1]~21_combout\ : std_logic;
SIGNAL \CLKDB2|count[1]~22\ : std_logic;
SIGNAL \CLKDB2|count[2]~23_combout\ : std_logic;
SIGNAL \CLKDB2|count[2]~24\ : std_logic;
SIGNAL \CLKDB2|count[3]~25_combout\ : std_logic;
SIGNAL \CLKDB2|count[3]~26\ : std_logic;
SIGNAL \CLKDB2|count[4]~27_combout\ : std_logic;
SIGNAL \CLKDB2|count[4]~28\ : std_logic;
SIGNAL \CLKDB2|count[5]~29_combout\ : std_logic;
SIGNAL \CLKDB2|count[5]~30\ : std_logic;
SIGNAL \CLKDB2|count[6]~31_combout\ : std_logic;
SIGNAL \CLKDB2|count[6]~32\ : std_logic;
SIGNAL \CLKDB2|count[7]~33_combout\ : std_logic;
SIGNAL \CLKDB2|count[7]~34\ : std_logic;
SIGNAL \CLKDB2|count[8]~35_combout\ : std_logic;
SIGNAL \CLKDB2|count[8]~36\ : std_logic;
SIGNAL \CLKDB2|count[9]~37_combout\ : std_logic;
SIGNAL \CLKDB2|count[9]~38\ : std_logic;
SIGNAL \CLKDB2|count[10]~39_combout\ : std_logic;
SIGNAL \CLKDB2|count[10]~40\ : std_logic;
SIGNAL \CLKDB2|count[11]~41_combout\ : std_logic;
SIGNAL \CLKDB2|count[11]~42\ : std_logic;
SIGNAL \CLKDB2|count[12]~43_combout\ : std_logic;
SIGNAL \CLKDB2|count[12]~44\ : std_logic;
SIGNAL \CLKDB2|count[13]~45_combout\ : std_logic;
SIGNAL \CLKDB2|count[13]~46\ : std_logic;
SIGNAL \CLKDB2|count[14]~47_combout\ : std_logic;
SIGNAL \CLKDB2|count[14]~48\ : std_logic;
SIGNAL \CLKDB2|count[15]~49_combout\ : std_logic;
SIGNAL \CLKDB2|count[15]~50\ : std_logic;
SIGNAL \CLKDB2|count[16]~51_combout\ : std_logic;
SIGNAL \CLKDB2|count[16]~52\ : std_logic;
SIGNAL \CLKDB2|count[17]~53_combout\ : std_logic;
SIGNAL \CLKDB2|count[17]~54\ : std_logic;
SIGNAL \CLKDB2|count[18]~55_combout\ : std_logic;
SIGNAL \CLKDB2|result~0_combout\ : std_logic;
SIGNAL \CLKDB2|result~2_combout\ : std_logic;
SIGNAL \CLKDB2|result~1_combout\ : std_logic;
SIGNAL \CLKDB2|result~3_combout\ : std_logic;
SIGNAL \CLKDB2|result~4_combout\ : std_logic;
SIGNAL \CLKDB2|result~5_combout\ : std_logic;
SIGNAL \CLKDB2|result~q\ : std_logic;
SIGNAL \Tff0|Qa~0_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \CLKDB1|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \CLKDB1|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \CLKDB1|counter_set~combout\ : std_logic;
SIGNAL \CLKDB1|count[0]~19_combout\ : std_logic;
SIGNAL \CLKDB1|count[0]~20\ : std_logic;
SIGNAL \CLKDB1|count[1]~21_combout\ : std_logic;
SIGNAL \CLKDB1|count[1]~22\ : std_logic;
SIGNAL \CLKDB1|count[2]~23_combout\ : std_logic;
SIGNAL \CLKDB1|count[2]~24\ : std_logic;
SIGNAL \CLKDB1|count[3]~25_combout\ : std_logic;
SIGNAL \CLKDB1|count[3]~26\ : std_logic;
SIGNAL \CLKDB1|count[4]~27_combout\ : std_logic;
SIGNAL \CLKDB1|count[4]~28\ : std_logic;
SIGNAL \CLKDB1|count[5]~29_combout\ : std_logic;
SIGNAL \CLKDB1|count[5]~30\ : std_logic;
SIGNAL \CLKDB1|count[6]~31_combout\ : std_logic;
SIGNAL \CLKDB1|count[6]~32\ : std_logic;
SIGNAL \CLKDB1|count[7]~33_combout\ : std_logic;
SIGNAL \CLKDB1|count[7]~34\ : std_logic;
SIGNAL \CLKDB1|count[8]~35_combout\ : std_logic;
SIGNAL \CLKDB1|count[8]~36\ : std_logic;
SIGNAL \CLKDB1|count[9]~37_combout\ : std_logic;
SIGNAL \CLKDB1|count[9]~38\ : std_logic;
SIGNAL \CLKDB1|count[10]~39_combout\ : std_logic;
SIGNAL \CLKDB1|count[10]~40\ : std_logic;
SIGNAL \CLKDB1|count[11]~41_combout\ : std_logic;
SIGNAL \CLKDB1|count[11]~42\ : std_logic;
SIGNAL \CLKDB1|count[12]~43_combout\ : std_logic;
SIGNAL \CLKDB1|count[12]~44\ : std_logic;
SIGNAL \CLKDB1|count[13]~45_combout\ : std_logic;
SIGNAL \CLKDB1|count[13]~feeder_combout\ : std_logic;
SIGNAL \CLKDB1|count[13]~46\ : std_logic;
SIGNAL \CLKDB1|count[14]~47_combout\ : std_logic;
SIGNAL \CLKDB1|count[14]~48\ : std_logic;
SIGNAL \CLKDB1|count[15]~49_combout\ : std_logic;
SIGNAL \CLKDB1|count[15]~50\ : std_logic;
SIGNAL \CLKDB1|count[16]~51_combout\ : std_logic;
SIGNAL \CLKDB1|count[16]~52\ : std_logic;
SIGNAL \CLKDB1|count[17]~53_combout\ : std_logic;
SIGNAL \CLKDB1|count[17]~54\ : std_logic;
SIGNAL \CLKDB1|count[18]~55_combout\ : std_logic;
SIGNAL \CLKDB1|result~0_combout\ : std_logic;
SIGNAL \CLKDB1|result~1_combout\ : std_logic;
SIGNAL \CLKDB1|result~2_combout\ : std_logic;
SIGNAL \CLKDB1|result~3_combout\ : std_logic;
SIGNAL \CLKDB1|result~4_combout\ : std_logic;
SIGNAL \CLKDB1|result~5_combout\ : std_logic;
SIGNAL \CLKDB1|result~feeder_combout\ : std_logic;
SIGNAL \CLKDB1|result~q\ : std_logic;
SIGNAL \Tff0|Qa~q\ : std_logic;
SIGNAL \Tff1|Qa~0_combout\ : std_logic;
SIGNAL \Tff1|Qa~q\ : std_logic;
SIGNAL \Tff2|Qa~0_combout\ : std_logic;
SIGNAL \Tff2|Qa~q\ : std_logic;
SIGNAL \Tff3|Qa~0_combout\ : std_logic;
SIGNAL \Tff3|Qa~q\ : std_logic;
SIGNAL \bth|bth0|HEX[5]~0_combout\ : std_logic;
SIGNAL \bth|bth0|HEX[4]~1_combout\ : std_logic;
SIGNAL \bth|bth0|HEX[3]~2_combout\ : std_logic;
SIGNAL \bth|bth0|HEX[2]~3_combout\ : std_logic;
SIGNAL \bth|bth0|HEX[1]~4_combout\ : std_logic;
SIGNAL \bth|bth0|HEX[0]~5_combout\ : std_logic;
SIGNAL \Tff4|Qa~0_combout\ : std_logic;
SIGNAL \Tff4|Qa~q\ : std_logic;
SIGNAL \Tff5|Qa~0_combout\ : std_logic;
SIGNAL \Tff5|Qa~q\ : std_logic;
SIGNAL \Tff6|Qa~0_combout\ : std_logic;
SIGNAL \Tff6|Qa~q\ : std_logic;
SIGNAL \Tff7|Qa~0_combout\ : std_logic;
SIGNAL \Tff7|Qa~1_combout\ : std_logic;
SIGNAL \Tff7|Qa~q\ : std_logic;
SIGNAL \bth|bth1|HEX[5]~0_combout\ : std_logic;
SIGNAL \bth|bth1|HEX[4]~1_combout\ : std_logic;
SIGNAL \bth|bth1|HEX[3]~2_combout\ : std_logic;
SIGNAL \bth|bth1|HEX[2]~3_combout\ : std_logic;
SIGNAL \bth|bth1|HEX[1]~4_combout\ : std_logic;
SIGNAL \bth|bth1|HEX[0]~5_combout\ : std_logic;
SIGNAL \bth|bth1|HEX\ : std_logic_vector(0 TO 6);
SIGNAL \CLKDB2|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \CLKDB0|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \CLKDB1|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \CLKDB1|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \bth|bth0|HEX\ : std_logic_vector(0 TO 6);
SIGNAL \CLKDB0|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL T : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLKDB2|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLKDB1|ALT_INV_result~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_key <= key;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
Qout <= ww_Qout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLKDB0|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLKDB0|result~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\CLKDB1|ALT_INV_result~q\ <= NOT \CLKDB1|result~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth0|HEX\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth0|HEX[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth0|HEX[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth0|HEX[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth0|HEX[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth0|HEX[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth0|HEX[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth1|HEX\(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth1|HEX[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth1|HEX[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth1|HEX[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth1|HEX[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth1|HEX[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bth|bth1|HEX[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\Qout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tff0|Qa~q\,
	devoe => ww_devoe,
	o => \Qout[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\Qout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tff1|Qa~q\,
	devoe => ww_devoe,
	o => \Qout[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Qout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tff2|Qa~q\,
	devoe => ww_devoe,
	o => \Qout[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\Qout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tff3|Qa~q\,
	devoe => ww_devoe,
	o => \Qout[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\Qout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tff4|Qa~q\,
	devoe => ww_devoe,
	o => \Qout[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\Qout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tff5|Qa~q\,
	devoe => ww_devoe,
	o => \Qout[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\Qout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tff6|Qa~q\,
	devoe => ww_devoe,
	o => \Qout[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\Qout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tff7|Qa~q\,
	devoe => ww_devoe,
	o => \Qout[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G19
\CLOCK_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\key~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key,
	o => \key~input_o\);

-- Location: LCCOMB_X45_Y52_N18
\CLKDB0|flipflops[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|flipflops[0]~feeder_combout\ = \key~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key~input_o\,
	combout => \CLKDB0|flipflops[0]~feeder_combout\);

-- Location: FF_X45_Y52_N19
\CLKDB0|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|flipflops\(0));

-- Location: LCCOMB_X45_Y52_N26
\CLKDB0|flipflops[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|flipflops[1]~feeder_combout\ = \CLKDB0|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLKDB0|flipflops\(0),
	combout => \CLKDB0|flipflops[1]~feeder_combout\);

-- Location: FF_X45_Y52_N27
\CLKDB0|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|flipflops\(1));

-- Location: LCCOMB_X46_Y53_N14
\CLKDB0|count[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[0]~19_combout\ = \CLKDB0|count\(0) $ (VCC)
-- \CLKDB0|count[0]~20\ = CARRY(\CLKDB0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(0),
	datad => VCC,
	combout => \CLKDB0|count[0]~19_combout\,
	cout => \CLKDB0|count[0]~20\);

-- Location: LCCOMB_X45_Y52_N22
\CLKDB0|counter_set\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|counter_set~combout\ = \CLKDB0|flipflops\(1) $ (\CLKDB0|flipflops\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLKDB0|flipflops\(1),
	datad => \CLKDB0|flipflops\(0),
	combout => \CLKDB0|counter_set~combout\);

-- Location: LCCOMB_X46_Y52_N22
\CLKDB0|result~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|result~2_combout\ = (!\CLKDB0|count\(11) & (!\CLKDB0|count\(10) & (!\CLKDB0|count\(12) & !\CLKDB0|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|count\(11),
	datab => \CLKDB0|count\(10),
	datac => \CLKDB0|count\(12),
	datad => \CLKDB0|count\(9),
	combout => \CLKDB0|result~2_combout\);

-- Location: LCCOMB_X46_Y53_N12
\CLKDB0|result~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|result~1_combout\ = ((!\CLKDB0|count\(6) & (!\CLKDB0|count\(5) & !\CLKDB0|count\(7)))) # (!\CLKDB0|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|count\(6),
	datab => \CLKDB0|count\(5),
	datac => \CLKDB0|count\(8),
	datad => \CLKDB0|count\(7),
	combout => \CLKDB0|result~1_combout\);

-- Location: LCCOMB_X46_Y52_N28
\CLKDB0|result~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|result~3_combout\ = (!\CLKDB0|count\(14) & (\CLKDB0|result~2_combout\ & \CLKDB0|result~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(14),
	datac => \CLKDB0|result~2_combout\,
	datad => \CLKDB0|result~1_combout\,
	combout => \CLKDB0|result~3_combout\);

-- Location: LCCOMB_X46_Y52_N26
\CLKDB0|result~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|result~4_combout\ = (\CLKDB0|counter_set~combout\) # ((\CLKDB0|result~3_combout\) # ((!\CLKDB0|count\(14) & !\CLKDB0|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|counter_set~combout\,
	datab => \CLKDB0|count\(14),
	datac => \CLKDB0|count\(13),
	datad => \CLKDB0|result~3_combout\,
	combout => \CLKDB0|result~4_combout\);

-- Location: LCCOMB_X46_Y52_N20
\CLKDB0|result~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|result~6_combout\ = (\CLKDB0|result~0_combout\) # (\CLKDB0|result~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|result~0_combout\,
	datac => \CLKDB0|result~4_combout\,
	combout => \CLKDB0|result~6_combout\);

-- Location: FF_X46_Y53_N15
\CLKDB0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[0]~19_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(0));

-- Location: LCCOMB_X46_Y53_N16
\CLKDB0|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[1]~21_combout\ = (\CLKDB0|count\(1) & (!\CLKDB0|count[0]~20\)) # (!\CLKDB0|count\(1) & ((\CLKDB0|count[0]~20\) # (GND)))
-- \CLKDB0|count[1]~22\ = CARRY((!\CLKDB0|count[0]~20\) # (!\CLKDB0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(1),
	datad => VCC,
	cin => \CLKDB0|count[0]~20\,
	combout => \CLKDB0|count[1]~21_combout\,
	cout => \CLKDB0|count[1]~22\);

-- Location: FF_X46_Y53_N17
\CLKDB0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[1]~21_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(1));

-- Location: LCCOMB_X46_Y53_N18
\CLKDB0|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[2]~23_combout\ = (\CLKDB0|count\(2) & (\CLKDB0|count[1]~22\ $ (GND))) # (!\CLKDB0|count\(2) & (!\CLKDB0|count[1]~22\ & VCC))
-- \CLKDB0|count[2]~24\ = CARRY((\CLKDB0|count\(2) & !\CLKDB0|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(2),
	datad => VCC,
	cin => \CLKDB0|count[1]~22\,
	combout => \CLKDB0|count[2]~23_combout\,
	cout => \CLKDB0|count[2]~24\);

-- Location: FF_X46_Y53_N19
\CLKDB0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[2]~23_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(2));

-- Location: LCCOMB_X46_Y53_N20
\CLKDB0|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[3]~25_combout\ = (\CLKDB0|count\(3) & (!\CLKDB0|count[2]~24\)) # (!\CLKDB0|count\(3) & ((\CLKDB0|count[2]~24\) # (GND)))
-- \CLKDB0|count[3]~26\ = CARRY((!\CLKDB0|count[2]~24\) # (!\CLKDB0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(3),
	datad => VCC,
	cin => \CLKDB0|count[2]~24\,
	combout => \CLKDB0|count[3]~25_combout\,
	cout => \CLKDB0|count[3]~26\);

-- Location: FF_X46_Y53_N21
\CLKDB0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[3]~25_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(3));

-- Location: LCCOMB_X46_Y53_N22
\CLKDB0|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[4]~27_combout\ = (\CLKDB0|count\(4) & (\CLKDB0|count[3]~26\ $ (GND))) # (!\CLKDB0|count\(4) & (!\CLKDB0|count[3]~26\ & VCC))
-- \CLKDB0|count[4]~28\ = CARRY((\CLKDB0|count\(4) & !\CLKDB0|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|count\(4),
	datad => VCC,
	cin => \CLKDB0|count[3]~26\,
	combout => \CLKDB0|count[4]~27_combout\,
	cout => \CLKDB0|count[4]~28\);

-- Location: FF_X46_Y53_N23
\CLKDB0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[4]~27_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(4));

-- Location: LCCOMB_X46_Y53_N24
\CLKDB0|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[5]~29_combout\ = (\CLKDB0|count\(5) & (!\CLKDB0|count[4]~28\)) # (!\CLKDB0|count\(5) & ((\CLKDB0|count[4]~28\) # (GND)))
-- \CLKDB0|count[5]~30\ = CARRY((!\CLKDB0|count[4]~28\) # (!\CLKDB0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|count\(5),
	datad => VCC,
	cin => \CLKDB0|count[4]~28\,
	combout => \CLKDB0|count[5]~29_combout\,
	cout => \CLKDB0|count[5]~30\);

-- Location: FF_X46_Y53_N25
\CLKDB0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[5]~29_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(5));

-- Location: LCCOMB_X46_Y53_N26
\CLKDB0|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[6]~31_combout\ = (\CLKDB0|count\(6) & (\CLKDB0|count[5]~30\ $ (GND))) # (!\CLKDB0|count\(6) & (!\CLKDB0|count[5]~30\ & VCC))
-- \CLKDB0|count[6]~32\ = CARRY((\CLKDB0|count\(6) & !\CLKDB0|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(6),
	datad => VCC,
	cin => \CLKDB0|count[5]~30\,
	combout => \CLKDB0|count[6]~31_combout\,
	cout => \CLKDB0|count[6]~32\);

-- Location: FF_X46_Y53_N27
\CLKDB0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[6]~31_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(6));

-- Location: LCCOMB_X46_Y53_N28
\CLKDB0|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[7]~33_combout\ = (\CLKDB0|count\(7) & (!\CLKDB0|count[6]~32\)) # (!\CLKDB0|count\(7) & ((\CLKDB0|count[6]~32\) # (GND)))
-- \CLKDB0|count[7]~34\ = CARRY((!\CLKDB0|count[6]~32\) # (!\CLKDB0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|count\(7),
	datad => VCC,
	cin => \CLKDB0|count[6]~32\,
	combout => \CLKDB0|count[7]~33_combout\,
	cout => \CLKDB0|count[7]~34\);

-- Location: FF_X46_Y53_N29
\CLKDB0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[7]~33_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(7));

-- Location: LCCOMB_X46_Y53_N30
\CLKDB0|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[8]~35_combout\ = (\CLKDB0|count\(8) & (\CLKDB0|count[7]~34\ $ (GND))) # (!\CLKDB0|count\(8) & (!\CLKDB0|count[7]~34\ & VCC))
-- \CLKDB0|count[8]~36\ = CARRY((\CLKDB0|count\(8) & !\CLKDB0|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(8),
	datad => VCC,
	cin => \CLKDB0|count[7]~34\,
	combout => \CLKDB0|count[8]~35_combout\,
	cout => \CLKDB0|count[8]~36\);

-- Location: FF_X46_Y53_N31
\CLKDB0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[8]~35_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(8));

-- Location: LCCOMB_X46_Y52_N0
\CLKDB0|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[9]~37_combout\ = (\CLKDB0|count\(9) & (!\CLKDB0|count[8]~36\)) # (!\CLKDB0|count\(9) & ((\CLKDB0|count[8]~36\) # (GND)))
-- \CLKDB0|count[9]~38\ = CARRY((!\CLKDB0|count[8]~36\) # (!\CLKDB0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(9),
	datad => VCC,
	cin => \CLKDB0|count[8]~36\,
	combout => \CLKDB0|count[9]~37_combout\,
	cout => \CLKDB0|count[9]~38\);

-- Location: FF_X46_Y52_N1
\CLKDB0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[9]~37_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(9));

-- Location: LCCOMB_X46_Y52_N2
\CLKDB0|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[10]~39_combout\ = (\CLKDB0|count\(10) & (\CLKDB0|count[9]~38\ $ (GND))) # (!\CLKDB0|count\(10) & (!\CLKDB0|count[9]~38\ & VCC))
-- \CLKDB0|count[10]~40\ = CARRY((\CLKDB0|count\(10) & !\CLKDB0|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(10),
	datad => VCC,
	cin => \CLKDB0|count[9]~38\,
	combout => \CLKDB0|count[10]~39_combout\,
	cout => \CLKDB0|count[10]~40\);

-- Location: FF_X46_Y52_N3
\CLKDB0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[10]~39_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(10));

-- Location: LCCOMB_X46_Y52_N4
\CLKDB0|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[11]~41_combout\ = (\CLKDB0|count\(11) & (!\CLKDB0|count[10]~40\)) # (!\CLKDB0|count\(11) & ((\CLKDB0|count[10]~40\) # (GND)))
-- \CLKDB0|count[11]~42\ = CARRY((!\CLKDB0|count[10]~40\) # (!\CLKDB0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(11),
	datad => VCC,
	cin => \CLKDB0|count[10]~40\,
	combout => \CLKDB0|count[11]~41_combout\,
	cout => \CLKDB0|count[11]~42\);

-- Location: FF_X46_Y52_N5
\CLKDB0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[11]~41_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(11));

-- Location: LCCOMB_X46_Y52_N6
\CLKDB0|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[12]~43_combout\ = (\CLKDB0|count\(12) & (\CLKDB0|count[11]~42\ $ (GND))) # (!\CLKDB0|count\(12) & (!\CLKDB0|count[11]~42\ & VCC))
-- \CLKDB0|count[12]~44\ = CARRY((\CLKDB0|count\(12) & !\CLKDB0|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(12),
	datad => VCC,
	cin => \CLKDB0|count[11]~42\,
	combout => \CLKDB0|count[12]~43_combout\,
	cout => \CLKDB0|count[12]~44\);

-- Location: FF_X46_Y52_N7
\CLKDB0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[12]~43_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(12));

-- Location: LCCOMB_X46_Y52_N8
\CLKDB0|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[13]~45_combout\ = (\CLKDB0|count\(13) & (!\CLKDB0|count[12]~44\)) # (!\CLKDB0|count\(13) & ((\CLKDB0|count[12]~44\) # (GND)))
-- \CLKDB0|count[13]~46\ = CARRY((!\CLKDB0|count[12]~44\) # (!\CLKDB0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(13),
	datad => VCC,
	cin => \CLKDB0|count[12]~44\,
	combout => \CLKDB0|count[13]~45_combout\,
	cout => \CLKDB0|count[13]~46\);

-- Location: FF_X46_Y52_N9
\CLKDB0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[13]~45_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(13));

-- Location: LCCOMB_X46_Y52_N10
\CLKDB0|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[14]~47_combout\ = (\CLKDB0|count\(14) & (\CLKDB0|count[13]~46\ $ (GND))) # (!\CLKDB0|count\(14) & (!\CLKDB0|count[13]~46\ & VCC))
-- \CLKDB0|count[14]~48\ = CARRY((\CLKDB0|count\(14) & !\CLKDB0|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(14),
	datad => VCC,
	cin => \CLKDB0|count[13]~46\,
	combout => \CLKDB0|count[14]~47_combout\,
	cout => \CLKDB0|count[14]~48\);

-- Location: FF_X46_Y52_N11
\CLKDB0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[14]~47_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(14));

-- Location: LCCOMB_X46_Y52_N12
\CLKDB0|count[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[15]~49_combout\ = (\CLKDB0|count\(15) & (!\CLKDB0|count[14]~48\)) # (!\CLKDB0|count\(15) & ((\CLKDB0|count[14]~48\) # (GND)))
-- \CLKDB0|count[15]~50\ = CARRY((!\CLKDB0|count[14]~48\) # (!\CLKDB0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|count\(15),
	datad => VCC,
	cin => \CLKDB0|count[14]~48\,
	combout => \CLKDB0|count[15]~49_combout\,
	cout => \CLKDB0|count[15]~50\);

-- Location: FF_X46_Y52_N13
\CLKDB0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[15]~49_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(15));

-- Location: LCCOMB_X46_Y52_N14
\CLKDB0|count[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[16]~51_combout\ = (\CLKDB0|count\(16) & (\CLKDB0|count[15]~50\ $ (GND))) # (!\CLKDB0|count\(16) & (!\CLKDB0|count[15]~50\ & VCC))
-- \CLKDB0|count[16]~52\ = CARRY((\CLKDB0|count\(16) & !\CLKDB0|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(16),
	datad => VCC,
	cin => \CLKDB0|count[15]~50\,
	combout => \CLKDB0|count[16]~51_combout\,
	cout => \CLKDB0|count[16]~52\);

-- Location: FF_X46_Y52_N15
\CLKDB0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[16]~51_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(16));

-- Location: LCCOMB_X46_Y52_N16
\CLKDB0|count[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[17]~53_combout\ = (\CLKDB0|count\(17) & (!\CLKDB0|count[16]~52\)) # (!\CLKDB0|count\(17) & ((\CLKDB0|count[16]~52\) # (GND)))
-- \CLKDB0|count[17]~54\ = CARRY((!\CLKDB0|count[16]~52\) # (!\CLKDB0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB0|count\(17),
	datad => VCC,
	cin => \CLKDB0|count[16]~52\,
	combout => \CLKDB0|count[17]~53_combout\,
	cout => \CLKDB0|count[17]~54\);

-- Location: FF_X46_Y52_N17
\CLKDB0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[17]~53_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(17));

-- Location: LCCOMB_X46_Y52_N18
\CLKDB0|count[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|count[18]~55_combout\ = \CLKDB0|count\(18) $ (!\CLKDB0|count[17]~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|count\(18),
	cin => \CLKDB0|count[17]~54\,
	combout => \CLKDB0|count[18]~55_combout\);

-- Location: FF_X46_Y52_N19
\CLKDB0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|count[18]~55_combout\,
	sclr => \CLKDB0|counter_set~combout\,
	ena => \CLKDB0|result~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|count\(18));

-- Location: LCCOMB_X46_Y52_N24
\CLKDB0|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|result~0_combout\ = (((!\CLKDB0|count\(16)) # (!\CLKDB0|count\(18))) # (!\CLKDB0|count\(17))) # (!\CLKDB0|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|count\(15),
	datab => \CLKDB0|count\(17),
	datac => \CLKDB0|count\(18),
	datad => \CLKDB0|count\(16),
	combout => \CLKDB0|result~0_combout\);

-- Location: LCCOMB_X45_Y52_N30
\CLKDB0|result~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|result~5_combout\ = (\CLKDB0|result~0_combout\ & (((\CLKDB0|result~q\)))) # (!\CLKDB0|result~0_combout\ & ((\CLKDB0|result~4_combout\ & ((\CLKDB0|result~q\))) # (!\CLKDB0|result~4_combout\ & (\CLKDB0|flipflops\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB0|flipflops\(1),
	datab => \CLKDB0|result~q\,
	datac => \CLKDB0|result~0_combout\,
	datad => \CLKDB0|result~4_combout\,
	combout => \CLKDB0|result~5_combout\);

-- Location: LCCOMB_X45_Y52_N2
\CLKDB0|result~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB0|result~feeder_combout\ = \CLKDB0|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLKDB0|result~5_combout\,
	combout => \CLKDB0|result~feeder_combout\);

-- Location: FF_X45_Y52_N3
\CLKDB0|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB0|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB0|result~q\);

-- Location: CLKCTRL_G12
\CLKDB0|result~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLKDB0|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLKDB0|result~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N22
\SW1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: LCCOMB_X56_Y52_N18
\CLKDB2|flipflops[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|flipflops[0]~feeder_combout\ = \SW1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW1~input_o\,
	combout => \CLKDB2|flipflops[0]~feeder_combout\);

-- Location: FF_X56_Y52_N19
\CLKDB2|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|flipflops\(0));

-- Location: LCCOMB_X56_Y52_N28
\CLKDB2|flipflops[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|flipflops[1]~feeder_combout\ = \CLKDB2|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLKDB2|flipflops\(0),
	combout => \CLKDB2|flipflops[1]~feeder_combout\);

-- Location: FF_X56_Y52_N29
\CLKDB2|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|flipflops\(1));

-- Location: LCCOMB_X57_Y53_N14
\CLKDB2|count[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[0]~19_combout\ = \CLKDB2|count\(0) $ (VCC)
-- \CLKDB2|count[0]~20\ = CARRY(\CLKDB2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(0),
	datad => VCC,
	combout => \CLKDB2|count[0]~19_combout\,
	cout => \CLKDB2|count[0]~20\);

-- Location: LCCOMB_X56_Y52_N0
\CLKDB2|counter_set\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|counter_set~combout\ = \CLKDB2|flipflops\(0) $ (\CLKDB2|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|flipflops\(0),
	datad => \CLKDB2|flipflops\(1),
	combout => \CLKDB2|counter_set~combout\);

-- Location: FF_X57_Y53_N15
\CLKDB2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[0]~19_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(0));

-- Location: LCCOMB_X57_Y53_N16
\CLKDB2|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[1]~21_combout\ = (\CLKDB2|count\(1) & (!\CLKDB2|count[0]~20\)) # (!\CLKDB2|count\(1) & ((\CLKDB2|count[0]~20\) # (GND)))
-- \CLKDB2|count[1]~22\ = CARRY((!\CLKDB2|count[0]~20\) # (!\CLKDB2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(1),
	datad => VCC,
	cin => \CLKDB2|count[0]~20\,
	combout => \CLKDB2|count[1]~21_combout\,
	cout => \CLKDB2|count[1]~22\);

-- Location: FF_X57_Y53_N17
\CLKDB2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[1]~21_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(1));

-- Location: LCCOMB_X57_Y53_N18
\CLKDB2|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[2]~23_combout\ = (\CLKDB2|count\(2) & (\CLKDB2|count[1]~22\ $ (GND))) # (!\CLKDB2|count\(2) & (!\CLKDB2|count[1]~22\ & VCC))
-- \CLKDB2|count[2]~24\ = CARRY((\CLKDB2|count\(2) & !\CLKDB2|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(2),
	datad => VCC,
	cin => \CLKDB2|count[1]~22\,
	combout => \CLKDB2|count[2]~23_combout\,
	cout => \CLKDB2|count[2]~24\);

-- Location: FF_X57_Y53_N19
\CLKDB2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[2]~23_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(2));

-- Location: LCCOMB_X57_Y53_N20
\CLKDB2|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[3]~25_combout\ = (\CLKDB2|count\(3) & (!\CLKDB2|count[2]~24\)) # (!\CLKDB2|count\(3) & ((\CLKDB2|count[2]~24\) # (GND)))
-- \CLKDB2|count[3]~26\ = CARRY((!\CLKDB2|count[2]~24\) # (!\CLKDB2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(3),
	datad => VCC,
	cin => \CLKDB2|count[2]~24\,
	combout => \CLKDB2|count[3]~25_combout\,
	cout => \CLKDB2|count[3]~26\);

-- Location: FF_X57_Y53_N21
\CLKDB2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[3]~25_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(3));

-- Location: LCCOMB_X57_Y53_N22
\CLKDB2|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[4]~27_combout\ = (\CLKDB2|count\(4) & (\CLKDB2|count[3]~26\ $ (GND))) # (!\CLKDB2|count\(4) & (!\CLKDB2|count[3]~26\ & VCC))
-- \CLKDB2|count[4]~28\ = CARRY((\CLKDB2|count\(4) & !\CLKDB2|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(4),
	datad => VCC,
	cin => \CLKDB2|count[3]~26\,
	combout => \CLKDB2|count[4]~27_combout\,
	cout => \CLKDB2|count[4]~28\);

-- Location: FF_X57_Y53_N23
\CLKDB2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[4]~27_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(4));

-- Location: LCCOMB_X57_Y53_N24
\CLKDB2|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[5]~29_combout\ = (\CLKDB2|count\(5) & (!\CLKDB2|count[4]~28\)) # (!\CLKDB2|count\(5) & ((\CLKDB2|count[4]~28\) # (GND)))
-- \CLKDB2|count[5]~30\ = CARRY((!\CLKDB2|count[4]~28\) # (!\CLKDB2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(5),
	datad => VCC,
	cin => \CLKDB2|count[4]~28\,
	combout => \CLKDB2|count[5]~29_combout\,
	cout => \CLKDB2|count[5]~30\);

-- Location: FF_X57_Y53_N25
\CLKDB2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[5]~29_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(5));

-- Location: LCCOMB_X57_Y53_N26
\CLKDB2|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[6]~31_combout\ = (\CLKDB2|count\(6) & (\CLKDB2|count[5]~30\ $ (GND))) # (!\CLKDB2|count\(6) & (!\CLKDB2|count[5]~30\ & VCC))
-- \CLKDB2|count[6]~32\ = CARRY((\CLKDB2|count\(6) & !\CLKDB2|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(6),
	datad => VCC,
	cin => \CLKDB2|count[5]~30\,
	combout => \CLKDB2|count[6]~31_combout\,
	cout => \CLKDB2|count[6]~32\);

-- Location: FF_X57_Y53_N27
\CLKDB2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[6]~31_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(6));

-- Location: LCCOMB_X57_Y53_N28
\CLKDB2|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[7]~33_combout\ = (\CLKDB2|count\(7) & (!\CLKDB2|count[6]~32\)) # (!\CLKDB2|count\(7) & ((\CLKDB2|count[6]~32\) # (GND)))
-- \CLKDB2|count[7]~34\ = CARRY((!\CLKDB2|count[6]~32\) # (!\CLKDB2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(7),
	datad => VCC,
	cin => \CLKDB2|count[6]~32\,
	combout => \CLKDB2|count[7]~33_combout\,
	cout => \CLKDB2|count[7]~34\);

-- Location: FF_X57_Y53_N29
\CLKDB2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[7]~33_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(7));

-- Location: LCCOMB_X57_Y53_N30
\CLKDB2|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[8]~35_combout\ = (\CLKDB2|count\(8) & (\CLKDB2|count[7]~34\ $ (GND))) # (!\CLKDB2|count\(8) & (!\CLKDB2|count[7]~34\ & VCC))
-- \CLKDB2|count[8]~36\ = CARRY((\CLKDB2|count\(8) & !\CLKDB2|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(8),
	datad => VCC,
	cin => \CLKDB2|count[7]~34\,
	combout => \CLKDB2|count[8]~35_combout\,
	cout => \CLKDB2|count[8]~36\);

-- Location: FF_X57_Y53_N31
\CLKDB2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[8]~35_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(8));

-- Location: LCCOMB_X57_Y52_N0
\CLKDB2|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[9]~37_combout\ = (\CLKDB2|count\(9) & (!\CLKDB2|count[8]~36\)) # (!\CLKDB2|count\(9) & ((\CLKDB2|count[8]~36\) # (GND)))
-- \CLKDB2|count[9]~38\ = CARRY((!\CLKDB2|count[8]~36\) # (!\CLKDB2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(9),
	datad => VCC,
	cin => \CLKDB2|count[8]~36\,
	combout => \CLKDB2|count[9]~37_combout\,
	cout => \CLKDB2|count[9]~38\);

-- Location: FF_X57_Y52_N1
\CLKDB2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[9]~37_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(9));

-- Location: LCCOMB_X57_Y52_N2
\CLKDB2|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[10]~39_combout\ = (\CLKDB2|count\(10) & (\CLKDB2|count[9]~38\ $ (GND))) # (!\CLKDB2|count\(10) & (!\CLKDB2|count[9]~38\ & VCC))
-- \CLKDB2|count[10]~40\ = CARRY((\CLKDB2|count\(10) & !\CLKDB2|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(10),
	datad => VCC,
	cin => \CLKDB2|count[9]~38\,
	combout => \CLKDB2|count[10]~39_combout\,
	cout => \CLKDB2|count[10]~40\);

-- Location: FF_X57_Y52_N3
\CLKDB2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[10]~39_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(10));

-- Location: LCCOMB_X57_Y52_N4
\CLKDB2|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[11]~41_combout\ = (\CLKDB2|count\(11) & (!\CLKDB2|count[10]~40\)) # (!\CLKDB2|count\(11) & ((\CLKDB2|count[10]~40\) # (GND)))
-- \CLKDB2|count[11]~42\ = CARRY((!\CLKDB2|count[10]~40\) # (!\CLKDB2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(11),
	datad => VCC,
	cin => \CLKDB2|count[10]~40\,
	combout => \CLKDB2|count[11]~41_combout\,
	cout => \CLKDB2|count[11]~42\);

-- Location: FF_X57_Y52_N5
\CLKDB2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[11]~41_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(11));

-- Location: LCCOMB_X57_Y52_N6
\CLKDB2|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[12]~43_combout\ = (\CLKDB2|count\(12) & (\CLKDB2|count[11]~42\ $ (GND))) # (!\CLKDB2|count\(12) & (!\CLKDB2|count[11]~42\ & VCC))
-- \CLKDB2|count[12]~44\ = CARRY((\CLKDB2|count\(12) & !\CLKDB2|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(12),
	datad => VCC,
	cin => \CLKDB2|count[11]~42\,
	combout => \CLKDB2|count[12]~43_combout\,
	cout => \CLKDB2|count[12]~44\);

-- Location: FF_X57_Y52_N7
\CLKDB2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[12]~43_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(12));

-- Location: LCCOMB_X57_Y52_N8
\CLKDB2|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[13]~45_combout\ = (\CLKDB2|count\(13) & (!\CLKDB2|count[12]~44\)) # (!\CLKDB2|count\(13) & ((\CLKDB2|count[12]~44\) # (GND)))
-- \CLKDB2|count[13]~46\ = CARRY((!\CLKDB2|count[12]~44\) # (!\CLKDB2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(13),
	datad => VCC,
	cin => \CLKDB2|count[12]~44\,
	combout => \CLKDB2|count[13]~45_combout\,
	cout => \CLKDB2|count[13]~46\);

-- Location: FF_X57_Y52_N9
\CLKDB2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[13]~45_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(13));

-- Location: LCCOMB_X57_Y52_N10
\CLKDB2|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[14]~47_combout\ = (\CLKDB2|count\(14) & (\CLKDB2|count[13]~46\ $ (GND))) # (!\CLKDB2|count\(14) & (!\CLKDB2|count[13]~46\ & VCC))
-- \CLKDB2|count[14]~48\ = CARRY((\CLKDB2|count\(14) & !\CLKDB2|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(14),
	datad => VCC,
	cin => \CLKDB2|count[13]~46\,
	combout => \CLKDB2|count[14]~47_combout\,
	cout => \CLKDB2|count[14]~48\);

-- Location: FF_X57_Y52_N11
\CLKDB2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[14]~47_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(14));

-- Location: LCCOMB_X57_Y52_N12
\CLKDB2|count[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[15]~49_combout\ = (\CLKDB2|count\(15) & (!\CLKDB2|count[14]~48\)) # (!\CLKDB2|count\(15) & ((\CLKDB2|count[14]~48\) # (GND)))
-- \CLKDB2|count[15]~50\ = CARRY((!\CLKDB2|count[14]~48\) # (!\CLKDB2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(15),
	datad => VCC,
	cin => \CLKDB2|count[14]~48\,
	combout => \CLKDB2|count[15]~49_combout\,
	cout => \CLKDB2|count[15]~50\);

-- Location: FF_X57_Y52_N13
\CLKDB2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[15]~49_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(15));

-- Location: LCCOMB_X57_Y52_N14
\CLKDB2|count[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[16]~51_combout\ = (\CLKDB2|count\(16) & (\CLKDB2|count[15]~50\ $ (GND))) # (!\CLKDB2|count\(16) & (!\CLKDB2|count[15]~50\ & VCC))
-- \CLKDB2|count[16]~52\ = CARRY((\CLKDB2|count\(16) & !\CLKDB2|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(16),
	datad => VCC,
	cin => \CLKDB2|count[15]~50\,
	combout => \CLKDB2|count[16]~51_combout\,
	cout => \CLKDB2|count[16]~52\);

-- Location: FF_X57_Y52_N15
\CLKDB2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[16]~51_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(16));

-- Location: LCCOMB_X57_Y52_N16
\CLKDB2|count[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[17]~53_combout\ = (\CLKDB2|count\(17) & (!\CLKDB2|count[16]~52\)) # (!\CLKDB2|count\(17) & ((\CLKDB2|count[16]~52\) # (GND)))
-- \CLKDB2|count[17]~54\ = CARRY((!\CLKDB2|count[16]~52\) # (!\CLKDB2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(17),
	datad => VCC,
	cin => \CLKDB2|count[16]~52\,
	combout => \CLKDB2|count[17]~53_combout\,
	cout => \CLKDB2|count[17]~54\);

-- Location: FF_X57_Y52_N17
\CLKDB2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[17]~53_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(17));

-- Location: LCCOMB_X57_Y52_N18
\CLKDB2|count[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|count[18]~55_combout\ = \CLKDB2|count[17]~54\ $ (!\CLKDB2|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLKDB2|count\(18),
	cin => \CLKDB2|count[17]~54\,
	combout => \CLKDB2|count[18]~55_combout\);

-- Location: FF_X57_Y52_N19
\CLKDB2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|count[18]~55_combout\,
	sclr => \CLKDB2|counter_set~combout\,
	ena => \CLKDB2|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|count\(18));

-- Location: LCCOMB_X57_Y52_N28
\CLKDB2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|result~0_combout\ = (((!\CLKDB2|count\(18)) # (!\CLKDB2|count\(16))) # (!\CLKDB2|count\(17))) # (!\CLKDB2|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(15),
	datab => \CLKDB2|count\(17),
	datac => \CLKDB2|count\(16),
	datad => \CLKDB2|count\(18),
	combout => \CLKDB2|result~0_combout\);

-- Location: LCCOMB_X57_Y52_N22
\CLKDB2|result~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|result~2_combout\ = (!\CLKDB2|count\(12) & (!\CLKDB2|count\(10) & (!\CLKDB2|count\(11) & !\CLKDB2|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(12),
	datab => \CLKDB2|count\(10),
	datac => \CLKDB2|count\(11),
	datad => \CLKDB2|count\(9),
	combout => \CLKDB2|result~2_combout\);

-- Location: LCCOMB_X57_Y53_N12
\CLKDB2|result~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|result~1_combout\ = ((!\CLKDB2|count\(6) & (!\CLKDB2|count\(5) & !\CLKDB2|count\(7)))) # (!\CLKDB2|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(6),
	datab => \CLKDB2|count\(5),
	datac => \CLKDB2|count\(8),
	datad => \CLKDB2|count\(7),
	combout => \CLKDB2|result~1_combout\);

-- Location: LCCOMB_X57_Y52_N24
\CLKDB2|result~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|result~3_combout\ = (\CLKDB2|count\(13) & ((!\CLKDB2|result~1_combout\) # (!\CLKDB2|result~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|count\(13),
	datac => \CLKDB2|result~2_combout\,
	datad => \CLKDB2|result~1_combout\,
	combout => \CLKDB2|result~3_combout\);

-- Location: LCCOMB_X57_Y52_N26
\CLKDB2|result~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|result~4_combout\ = (\CLKDB2|result~0_combout\) # ((\CLKDB2|counter_set~combout\) # ((!\CLKDB2|count\(14) & !\CLKDB2|result~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|count\(14),
	datab => \CLKDB2|result~0_combout\,
	datac => \CLKDB2|counter_set~combout\,
	datad => \CLKDB2|result~3_combout\,
	combout => \CLKDB2|result~4_combout\);

-- Location: LCCOMB_X56_Y53_N10
\CLKDB2|result~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB2|result~5_combout\ = (\CLKDB2|result~4_combout\ & ((\CLKDB2|result~q\))) # (!\CLKDB2|result~4_combout\ & (\CLKDB2|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB2|flipflops\(1),
	datac => \CLKDB2|result~q\,
	datad => \CLKDB2|result~4_combout\,
	combout => \CLKDB2|result~5_combout\);

-- Location: FF_X56_Y53_N11
\CLKDB2|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB2|result~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB2|result~q\);

-- Location: LCCOMB_X56_Y53_N26
\Tff0|Qa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff0|Qa~0_combout\ = \CLKDB2|result~q\ $ (\Tff0|Qa~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|result~q\,
	datac => \Tff0|Qa~q\,
	combout => \Tff0|Qa~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\SW0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LCCOMB_X54_Y53_N18
\CLKDB1|flipflops[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|flipflops[0]~feeder_combout\ = \SW0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW0~input_o\,
	combout => \CLKDB1|flipflops[0]~feeder_combout\);

-- Location: FF_X54_Y53_N19
\CLKDB1|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|flipflops\(0));

-- Location: LCCOMB_X54_Y53_N24
\CLKDB1|flipflops[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|flipflops[1]~feeder_combout\ = \CLKDB1|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLKDB1|flipflops\(0),
	combout => \CLKDB1|flipflops[1]~feeder_combout\);

-- Location: FF_X54_Y53_N25
\CLKDB1|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|flipflops\(1));

-- Location: LCCOMB_X54_Y53_N16
\CLKDB1|counter_set\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|counter_set~combout\ = \CLKDB1|flipflops\(0) $ (\CLKDB1|flipflops\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|flipflops\(0),
	datad => \CLKDB1|flipflops\(1),
	combout => \CLKDB1|counter_set~combout\);

-- Location: LCCOMB_X55_Y53_N14
\CLKDB1|count[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[0]~19_combout\ = \CLKDB1|count\(0) $ (VCC)
-- \CLKDB1|count[0]~20\ = CARRY(\CLKDB1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(0),
	datad => VCC,
	combout => \CLKDB1|count[0]~19_combout\,
	cout => \CLKDB1|count[0]~20\);

-- Location: FF_X55_Y53_N15
\CLKDB1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[0]~19_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(0));

-- Location: LCCOMB_X55_Y53_N16
\CLKDB1|count[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[1]~21_combout\ = (\CLKDB1|count\(1) & (!\CLKDB1|count[0]~20\)) # (!\CLKDB1|count\(1) & ((\CLKDB1|count[0]~20\) # (GND)))
-- \CLKDB1|count[1]~22\ = CARRY((!\CLKDB1|count[0]~20\) # (!\CLKDB1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(1),
	datad => VCC,
	cin => \CLKDB1|count[0]~20\,
	combout => \CLKDB1|count[1]~21_combout\,
	cout => \CLKDB1|count[1]~22\);

-- Location: FF_X55_Y53_N17
\CLKDB1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[1]~21_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(1));

-- Location: LCCOMB_X55_Y53_N18
\CLKDB1|count[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[2]~23_combout\ = (\CLKDB1|count\(2) & (\CLKDB1|count[1]~22\ $ (GND))) # (!\CLKDB1|count\(2) & (!\CLKDB1|count[1]~22\ & VCC))
-- \CLKDB1|count[2]~24\ = CARRY((\CLKDB1|count\(2) & !\CLKDB1|count[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(2),
	datad => VCC,
	cin => \CLKDB1|count[1]~22\,
	combout => \CLKDB1|count[2]~23_combout\,
	cout => \CLKDB1|count[2]~24\);

-- Location: FF_X55_Y53_N19
\CLKDB1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[2]~23_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(2));

-- Location: LCCOMB_X55_Y53_N20
\CLKDB1|count[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[3]~25_combout\ = (\CLKDB1|count\(3) & (!\CLKDB1|count[2]~24\)) # (!\CLKDB1|count\(3) & ((\CLKDB1|count[2]~24\) # (GND)))
-- \CLKDB1|count[3]~26\ = CARRY((!\CLKDB1|count[2]~24\) # (!\CLKDB1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(3),
	datad => VCC,
	cin => \CLKDB1|count[2]~24\,
	combout => \CLKDB1|count[3]~25_combout\,
	cout => \CLKDB1|count[3]~26\);

-- Location: FF_X55_Y53_N21
\CLKDB1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[3]~25_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(3));

-- Location: LCCOMB_X55_Y53_N22
\CLKDB1|count[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[4]~27_combout\ = (\CLKDB1|count\(4) & (\CLKDB1|count[3]~26\ $ (GND))) # (!\CLKDB1|count\(4) & (!\CLKDB1|count[3]~26\ & VCC))
-- \CLKDB1|count[4]~28\ = CARRY((\CLKDB1|count\(4) & !\CLKDB1|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(4),
	datad => VCC,
	cin => \CLKDB1|count[3]~26\,
	combout => \CLKDB1|count[4]~27_combout\,
	cout => \CLKDB1|count[4]~28\);

-- Location: FF_X55_Y53_N23
\CLKDB1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[4]~27_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(4));

-- Location: LCCOMB_X55_Y53_N24
\CLKDB1|count[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[5]~29_combout\ = (\CLKDB1|count\(5) & (!\CLKDB1|count[4]~28\)) # (!\CLKDB1|count\(5) & ((\CLKDB1|count[4]~28\) # (GND)))
-- \CLKDB1|count[5]~30\ = CARRY((!\CLKDB1|count[4]~28\) # (!\CLKDB1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(5),
	datad => VCC,
	cin => \CLKDB1|count[4]~28\,
	combout => \CLKDB1|count[5]~29_combout\,
	cout => \CLKDB1|count[5]~30\);

-- Location: FF_X55_Y53_N25
\CLKDB1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[5]~29_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(5));

-- Location: LCCOMB_X55_Y53_N26
\CLKDB1|count[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[6]~31_combout\ = (\CLKDB1|count\(6) & (\CLKDB1|count[5]~30\ $ (GND))) # (!\CLKDB1|count\(6) & (!\CLKDB1|count[5]~30\ & VCC))
-- \CLKDB1|count[6]~32\ = CARRY((\CLKDB1|count\(6) & !\CLKDB1|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(6),
	datad => VCC,
	cin => \CLKDB1|count[5]~30\,
	combout => \CLKDB1|count[6]~31_combout\,
	cout => \CLKDB1|count[6]~32\);

-- Location: FF_X55_Y53_N27
\CLKDB1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[6]~31_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(6));

-- Location: LCCOMB_X55_Y53_N28
\CLKDB1|count[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[7]~33_combout\ = (\CLKDB1|count\(7) & (!\CLKDB1|count[6]~32\)) # (!\CLKDB1|count\(7) & ((\CLKDB1|count[6]~32\) # (GND)))
-- \CLKDB1|count[7]~34\ = CARRY((!\CLKDB1|count[6]~32\) # (!\CLKDB1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(7),
	datad => VCC,
	cin => \CLKDB1|count[6]~32\,
	combout => \CLKDB1|count[7]~33_combout\,
	cout => \CLKDB1|count[7]~34\);

-- Location: FF_X55_Y53_N29
\CLKDB1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[7]~33_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(7));

-- Location: LCCOMB_X55_Y53_N30
\CLKDB1|count[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[8]~35_combout\ = (\CLKDB1|count\(8) & (\CLKDB1|count[7]~34\ $ (GND))) # (!\CLKDB1|count\(8) & (!\CLKDB1|count[7]~34\ & VCC))
-- \CLKDB1|count[8]~36\ = CARRY((\CLKDB1|count\(8) & !\CLKDB1|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(8),
	datad => VCC,
	cin => \CLKDB1|count[7]~34\,
	combout => \CLKDB1|count[8]~35_combout\,
	cout => \CLKDB1|count[8]~36\);

-- Location: FF_X55_Y53_N31
\CLKDB1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[8]~35_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(8));

-- Location: LCCOMB_X55_Y52_N0
\CLKDB1|count[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[9]~37_combout\ = (\CLKDB1|count\(9) & (!\CLKDB1|count[8]~36\)) # (!\CLKDB1|count\(9) & ((\CLKDB1|count[8]~36\) # (GND)))
-- \CLKDB1|count[9]~38\ = CARRY((!\CLKDB1|count[8]~36\) # (!\CLKDB1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(9),
	datad => VCC,
	cin => \CLKDB1|count[8]~36\,
	combout => \CLKDB1|count[9]~37_combout\,
	cout => \CLKDB1|count[9]~38\);

-- Location: FF_X55_Y52_N1
\CLKDB1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[9]~37_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(9));

-- Location: LCCOMB_X55_Y52_N2
\CLKDB1|count[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[10]~39_combout\ = (\CLKDB1|count\(10) & (\CLKDB1|count[9]~38\ $ (GND))) # (!\CLKDB1|count\(10) & (!\CLKDB1|count[9]~38\ & VCC))
-- \CLKDB1|count[10]~40\ = CARRY((\CLKDB1|count\(10) & !\CLKDB1|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(10),
	datad => VCC,
	cin => \CLKDB1|count[9]~38\,
	combout => \CLKDB1|count[10]~39_combout\,
	cout => \CLKDB1|count[10]~40\);

-- Location: FF_X55_Y52_N3
\CLKDB1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[10]~39_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(10));

-- Location: LCCOMB_X55_Y52_N4
\CLKDB1|count[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[11]~41_combout\ = (\CLKDB1|count\(11) & (!\CLKDB1|count[10]~40\)) # (!\CLKDB1|count\(11) & ((\CLKDB1|count[10]~40\) # (GND)))
-- \CLKDB1|count[11]~42\ = CARRY((!\CLKDB1|count[10]~40\) # (!\CLKDB1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(11),
	datad => VCC,
	cin => \CLKDB1|count[10]~40\,
	combout => \CLKDB1|count[11]~41_combout\,
	cout => \CLKDB1|count[11]~42\);

-- Location: FF_X55_Y52_N5
\CLKDB1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[11]~41_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(11));

-- Location: LCCOMB_X55_Y52_N6
\CLKDB1|count[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[12]~43_combout\ = (\CLKDB1|count\(12) & (\CLKDB1|count[11]~42\ $ (GND))) # (!\CLKDB1|count\(12) & (!\CLKDB1|count[11]~42\ & VCC))
-- \CLKDB1|count[12]~44\ = CARRY((\CLKDB1|count\(12) & !\CLKDB1|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(12),
	datad => VCC,
	cin => \CLKDB1|count[11]~42\,
	combout => \CLKDB1|count[12]~43_combout\,
	cout => \CLKDB1|count[12]~44\);

-- Location: FF_X55_Y52_N7
\CLKDB1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[12]~43_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(12));

-- Location: LCCOMB_X55_Y52_N8
\CLKDB1|count[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[13]~45_combout\ = (\CLKDB1|count\(13) & (!\CLKDB1|count[12]~44\)) # (!\CLKDB1|count\(13) & ((\CLKDB1|count[12]~44\) # (GND)))
-- \CLKDB1|count[13]~46\ = CARRY((!\CLKDB1|count[12]~44\) # (!\CLKDB1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(13),
	datad => VCC,
	cin => \CLKDB1|count[12]~44\,
	combout => \CLKDB1|count[13]~45_combout\,
	cout => \CLKDB1|count[13]~46\);

-- Location: LCCOMB_X55_Y53_N4
\CLKDB1|count[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[13]~feeder_combout\ = \CLKDB1|count[13]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLKDB1|count[13]~45_combout\,
	combout => \CLKDB1|count[13]~feeder_combout\);

-- Location: FF_X55_Y53_N5
\CLKDB1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[13]~feeder_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(13));

-- Location: LCCOMB_X55_Y52_N10
\CLKDB1|count[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[14]~47_combout\ = (\CLKDB1|count\(14) & (\CLKDB1|count[13]~46\ $ (GND))) # (!\CLKDB1|count\(14) & (!\CLKDB1|count[13]~46\ & VCC))
-- \CLKDB1|count[14]~48\ = CARRY((\CLKDB1|count\(14) & !\CLKDB1|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(14),
	datad => VCC,
	cin => \CLKDB1|count[13]~46\,
	combout => \CLKDB1|count[14]~47_combout\,
	cout => \CLKDB1|count[14]~48\);

-- Location: FF_X55_Y52_N11
\CLKDB1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[14]~47_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(14));

-- Location: LCCOMB_X55_Y52_N12
\CLKDB1|count[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[15]~49_combout\ = (\CLKDB1|count\(15) & (!\CLKDB1|count[14]~48\)) # (!\CLKDB1|count\(15) & ((\CLKDB1|count[14]~48\) # (GND)))
-- \CLKDB1|count[15]~50\ = CARRY((!\CLKDB1|count[14]~48\) # (!\CLKDB1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(15),
	datad => VCC,
	cin => \CLKDB1|count[14]~48\,
	combout => \CLKDB1|count[15]~49_combout\,
	cout => \CLKDB1|count[15]~50\);

-- Location: FF_X55_Y52_N13
\CLKDB1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[15]~49_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(15));

-- Location: LCCOMB_X55_Y52_N14
\CLKDB1|count[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[16]~51_combout\ = (\CLKDB1|count\(16) & (\CLKDB1|count[15]~50\ $ (GND))) # (!\CLKDB1|count\(16) & (!\CLKDB1|count[15]~50\ & VCC))
-- \CLKDB1|count[16]~52\ = CARRY((\CLKDB1|count\(16) & !\CLKDB1|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(16),
	datad => VCC,
	cin => \CLKDB1|count[15]~50\,
	combout => \CLKDB1|count[16]~51_combout\,
	cout => \CLKDB1|count[16]~52\);

-- Location: FF_X55_Y52_N15
\CLKDB1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[16]~51_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(16));

-- Location: LCCOMB_X55_Y52_N16
\CLKDB1|count[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[17]~53_combout\ = (\CLKDB1|count\(17) & (!\CLKDB1|count[16]~52\)) # (!\CLKDB1|count\(17) & ((\CLKDB1|count[16]~52\) # (GND)))
-- \CLKDB1|count[17]~54\ = CARRY((!\CLKDB1|count[16]~52\) # (!\CLKDB1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|count\(17),
	datad => VCC,
	cin => \CLKDB1|count[16]~52\,
	combout => \CLKDB1|count[17]~53_combout\,
	cout => \CLKDB1|count[17]~54\);

-- Location: FF_X55_Y52_N17
\CLKDB1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[17]~53_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(17));

-- Location: LCCOMB_X55_Y52_N18
\CLKDB1|count[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|count[18]~55_combout\ = \CLKDB1|count[17]~54\ $ (!\CLKDB1|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLKDB1|count\(18),
	cin => \CLKDB1|count[17]~54\,
	combout => \CLKDB1|count[18]~55_combout\);

-- Location: FF_X55_Y52_N19
\CLKDB1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|count[18]~55_combout\,
	sclr => \CLKDB1|counter_set~combout\,
	ena => \CLKDB1|result~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|count\(18));

-- Location: LCCOMB_X55_Y52_N28
\CLKDB1|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|result~0_combout\ = (((!\CLKDB1|count\(17)) # (!\CLKDB1|count\(16))) # (!\CLKDB1|count\(18))) # (!\CLKDB1|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(15),
	datab => \CLKDB1|count\(18),
	datac => \CLKDB1|count\(16),
	datad => \CLKDB1|count\(17),
	combout => \CLKDB1|result~0_combout\);

-- Location: LCCOMB_X55_Y53_N10
\CLKDB1|result~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|result~1_combout\ = ((!\CLKDB1|count\(6) & (!\CLKDB1|count\(5) & !\CLKDB1|count\(7)))) # (!\CLKDB1|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(6),
	datab => \CLKDB1|count\(5),
	datac => \CLKDB1|count\(8),
	datad => \CLKDB1|count\(7),
	combout => \CLKDB1|result~1_combout\);

-- Location: LCCOMB_X55_Y52_N26
\CLKDB1|result~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|result~2_combout\ = (!\CLKDB1|count\(9) & (!\CLKDB1|count\(10) & (!\CLKDB1|count\(11) & !\CLKDB1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|count\(9),
	datab => \CLKDB1|count\(10),
	datac => \CLKDB1|count\(11),
	datad => \CLKDB1|count\(12),
	combout => \CLKDB1|result~2_combout\);

-- Location: LCCOMB_X55_Y53_N12
\CLKDB1|result~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|result~3_combout\ = (\CLKDB1|count\(13) & ((!\CLKDB1|result~2_combout\) # (!\CLKDB1|result~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|result~1_combout\,
	datab => \CLKDB1|count\(13),
	datad => \CLKDB1|result~2_combout\,
	combout => \CLKDB1|result~3_combout\);

-- Location: LCCOMB_X55_Y53_N6
\CLKDB1|result~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|result~4_combout\ = (\CLKDB1|counter_set~combout\) # ((\CLKDB1|result~0_combout\) # ((!\CLKDB1|count\(14) & !\CLKDB1|result~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLKDB1|counter_set~combout\,
	datab => \CLKDB1|count\(14),
	datac => \CLKDB1|result~0_combout\,
	datad => \CLKDB1|result~3_combout\,
	combout => \CLKDB1|result~4_combout\);

-- Location: LCCOMB_X55_Y53_N8
\CLKDB1|result~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|result~5_combout\ = (\CLKDB1|result~4_combout\ & ((\CLKDB1|result~q\))) # (!\CLKDB1|result~4_combout\ & (\CLKDB1|flipflops\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB1|flipflops\(1),
	datac => \CLKDB1|result~q\,
	datad => \CLKDB1|result~4_combout\,
	combout => \CLKDB1|result~5_combout\);

-- Location: LCCOMB_X56_Y53_N24
\CLKDB1|result~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLKDB1|result~feeder_combout\ = \CLKDB1|result~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLKDB1|result~5_combout\,
	combout => \CLKDB1|result~feeder_combout\);

-- Location: FF_X56_Y53_N25
\CLKDB1|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLKDB1|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLKDB1|result~q\);

-- Location: FF_X56_Y53_N27
\Tff0|Qa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDB0|result~clkctrl_outclk\,
	d => \Tff0|Qa~0_combout\,
	clrn => \CLKDB1|ALT_INV_result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tff0|Qa~q\);

-- Location: LCCOMB_X56_Y53_N8
\Tff1|Qa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff1|Qa~0_combout\ = \Tff1|Qa~q\ $ (((\CLKDB2|result~q\ & \Tff0|Qa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLKDB2|result~q\,
	datac => \Tff1|Qa~q\,
	datad => \Tff0|Qa~q\,
	combout => \Tff1|Qa~0_combout\);

-- Location: FF_X56_Y53_N9
\Tff1|Qa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDB0|result~clkctrl_outclk\,
	d => \Tff1|Qa~0_combout\,
	clrn => \CLKDB1|ALT_INV_result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tff1|Qa~q\);

-- Location: LCCOMB_X56_Y53_N4
\Tff2|Qa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff2|Qa~0_combout\ = \Tff2|Qa~q\ $ (((\Tff1|Qa~q\ & (\CLKDB2|result~q\ & \Tff0|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff1|Qa~q\,
	datab => \CLKDB2|result~q\,
	datac => \Tff2|Qa~q\,
	datad => \Tff0|Qa~q\,
	combout => \Tff2|Qa~0_combout\);

-- Location: FF_X56_Y53_N5
\Tff2|Qa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDB0|result~clkctrl_outclk\,
	d => \Tff2|Qa~0_combout\,
	clrn => \CLKDB1|ALT_INV_result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tff2|Qa~q\);

-- Location: LCCOMB_X56_Y53_N18
\T[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- T(3) = (\Tff0|Qa~q\ & (\Tff1|Qa~q\ & (\Tff2|Qa~q\ & \CLKDB2|result~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff0|Qa~q\,
	datab => \Tff1|Qa~q\,
	datac => \Tff2|Qa~q\,
	datad => \CLKDB2|result~q\,
	combout => T(3));

-- Location: LCCOMB_X56_Y53_N2
\Tff3|Qa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff3|Qa~0_combout\ = T(3) $ (\Tff3|Qa~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T(3),
	datac => \Tff3|Qa~q\,
	combout => \Tff3|Qa~0_combout\);

-- Location: FF_X56_Y53_N3
\Tff3|Qa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDB0|result~clkctrl_outclk\,
	d => \Tff3|Qa~0_combout\,
	clrn => \CLKDB1|ALT_INV_result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tff3|Qa~q\);

-- Location: LCCOMB_X59_Y53_N28
\bth|bth0|HEX[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth0|HEX\(6) = (\Tff0|Qa~q\ & (!\Tff3|Qa~q\ & (\Tff1|Qa~q\ $ (!\Tff2|Qa~q\)))) # (!\Tff0|Qa~q\ & (!\Tff1|Qa~q\ & (\Tff2|Qa~q\ $ (!\Tff3|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff0|Qa~q\,
	datab => \Tff1|Qa~q\,
	datac => \Tff2|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \bth|bth0|HEX\(6));

-- Location: LCCOMB_X56_Y53_N20
\bth|bth0|HEX[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth0|HEX[5]~0_combout\ = (\Tff1|Qa~q\ & (!\Tff3|Qa~q\ & ((\Tff0|Qa~q\) # (!\Tff2|Qa~q\)))) # (!\Tff1|Qa~q\ & (\Tff0|Qa~q\ & (\Tff2|Qa~q\ $ (!\Tff3|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff1|Qa~q\,
	datab => \Tff0|Qa~q\,
	datac => \Tff2|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \bth|bth0|HEX[5]~0_combout\);

-- Location: LCCOMB_X59_Y53_N10
\bth|bth0|HEX[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth0|HEX[4]~1_combout\ = (\Tff1|Qa~q\ & (\Tff0|Qa~q\ & ((!\Tff3|Qa~q\)))) # (!\Tff1|Qa~q\ & ((\Tff2|Qa~q\ & ((!\Tff3|Qa~q\))) # (!\Tff2|Qa~q\ & (\Tff0|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff0|Qa~q\,
	datab => \Tff1|Qa~q\,
	datac => \Tff2|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \bth|bth0|HEX[4]~1_combout\);

-- Location: LCCOMB_X56_Y53_N30
\bth|bth0|HEX[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth0|HEX[3]~2_combout\ = (\Tff0|Qa~q\ & (\Tff1|Qa~q\ $ ((!\Tff2|Qa~q\)))) # (!\Tff0|Qa~q\ & ((\Tff1|Qa~q\ & (!\Tff2|Qa~q\ & \Tff3|Qa~q\)) # (!\Tff1|Qa~q\ & (\Tff2|Qa~q\ & !\Tff3|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff1|Qa~q\,
	datab => \Tff0|Qa~q\,
	datac => \Tff2|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \bth|bth0|HEX[3]~2_combout\);

-- Location: LCCOMB_X56_Y53_N12
\bth|bth0|HEX[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth0|HEX[2]~3_combout\ = (\Tff2|Qa~q\ & (\Tff3|Qa~q\ & ((\Tff1|Qa~q\) # (!\Tff0|Qa~q\)))) # (!\Tff2|Qa~q\ & (\Tff1|Qa~q\ & (!\Tff0|Qa~q\ & !\Tff3|Qa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff1|Qa~q\,
	datab => \Tff0|Qa~q\,
	datac => \Tff2|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \bth|bth0|HEX[2]~3_combout\);

-- Location: LCCOMB_X59_Y53_N24
\bth|bth0|HEX[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth0|HEX[1]~4_combout\ = (\Tff1|Qa~q\ & ((\Tff0|Qa~q\ & ((\Tff3|Qa~q\))) # (!\Tff0|Qa~q\ & (\Tff2|Qa~q\)))) # (!\Tff1|Qa~q\ & (\Tff2|Qa~q\ & (\Tff0|Qa~q\ $ (\Tff3|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff0|Qa~q\,
	datab => \Tff1|Qa~q\,
	datac => \Tff2|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \bth|bth0|HEX[1]~4_combout\);

-- Location: LCCOMB_X59_Y53_N26
\bth|bth0|HEX[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth0|HEX[0]~5_combout\ = (\Tff2|Qa~q\ & (!\Tff1|Qa~q\ & (\Tff0|Qa~q\ $ (!\Tff3|Qa~q\)))) # (!\Tff2|Qa~q\ & (\Tff0|Qa~q\ & (\Tff1|Qa~q\ $ (!\Tff3|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff0|Qa~q\,
	datab => \Tff1|Qa~q\,
	datac => \Tff2|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \bth|bth0|HEX[0]~5_combout\);

-- Location: LCCOMB_X56_Y53_N16
\Tff4|Qa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff4|Qa~0_combout\ = \Tff4|Qa~q\ $ (((T(3) & \Tff3|Qa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T(3),
	datab => \Tff3|Qa~q\,
	datac => \Tff4|Qa~q\,
	combout => \Tff4|Qa~0_combout\);

-- Location: FF_X56_Y53_N17
\Tff4|Qa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDB0|result~clkctrl_outclk\,
	d => \Tff4|Qa~0_combout\,
	clrn => \CLKDB1|ALT_INV_result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tff4|Qa~q\);

-- Location: LCCOMB_X56_Y53_N22
\Tff5|Qa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff5|Qa~0_combout\ = \Tff5|Qa~q\ $ (((T(3) & (\Tff4|Qa~q\ & \Tff3|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T(3),
	datab => \Tff4|Qa~q\,
	datac => \Tff5|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \Tff5|Qa~0_combout\);

-- Location: FF_X56_Y53_N23
\Tff5|Qa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDB0|result~clkctrl_outclk\,
	d => \Tff5|Qa~0_combout\,
	clrn => \CLKDB1|ALT_INV_result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tff5|Qa~q\);

-- Location: LCCOMB_X56_Y53_N0
\T[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- T(6) = (\Tff5|Qa~q\ & (\Tff4|Qa~q\ & (\Tff3|Qa~q\ & T(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff5|Qa~q\,
	datab => \Tff4|Qa~q\,
	datac => \Tff3|Qa~q\,
	datad => T(3),
	combout => T(6));

-- Location: LCCOMB_X56_Y53_N14
\Tff6|Qa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff6|Qa~0_combout\ = \Tff6|Qa~q\ $ (T(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Tff6|Qa~q\,
	datad => T(6),
	combout => \Tff6|Qa~0_combout\);

-- Location: FF_X56_Y53_N15
\Tff6|Qa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDB0|result~clkctrl_outclk\,
	d => \Tff6|Qa~0_combout\,
	clrn => \CLKDB1|ALT_INV_result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tff6|Qa~q\);

-- Location: LCCOMB_X56_Y53_N6
\Tff7|Qa~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff7|Qa~0_combout\ = ((!\Tff3|Qa~q\) # (!\Tff6|Qa~q\)) # (!\Tff5|Qa~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff5|Qa~q\,
	datac => \Tff6|Qa~q\,
	datad => \Tff3|Qa~q\,
	combout => \Tff7|Qa~0_combout\);

-- Location: LCCOMB_X56_Y53_N28
\Tff7|Qa~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Tff7|Qa~1_combout\ = \Tff7|Qa~q\ $ (((T(3) & (\Tff4|Qa~q\ & !\Tff7|Qa~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => T(3),
	datab => \Tff4|Qa~q\,
	datac => \Tff7|Qa~q\,
	datad => \Tff7|Qa~0_combout\,
	combout => \Tff7|Qa~1_combout\);

-- Location: FF_X56_Y53_N29
\Tff7|Qa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKDB0|result~clkctrl_outclk\,
	d => \Tff7|Qa~1_combout\,
	clrn => \CLKDB1|ALT_INV_result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tff7|Qa~q\);

-- Location: LCCOMB_X65_Y53_N28
\bth|bth1|HEX[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth1|HEX\(6) = (\Tff4|Qa~q\ & (!\Tff7|Qa~q\ & (\Tff5|Qa~q\ $ (!\Tff6|Qa~q\)))) # (!\Tff4|Qa~q\ & (!\Tff5|Qa~q\ & (\Tff7|Qa~q\ $ (!\Tff6|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff7|Qa~q\,
	datab => \Tff5|Qa~q\,
	datac => \Tff6|Qa~q\,
	datad => \Tff4|Qa~q\,
	combout => \bth|bth1|HEX\(6));

-- Location: LCCOMB_X65_Y53_N26
\bth|bth1|HEX[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth1|HEX[5]~0_combout\ = (\Tff5|Qa~q\ & (!\Tff7|Qa~q\ & ((\Tff4|Qa~q\) # (!\Tff6|Qa~q\)))) # (!\Tff5|Qa~q\ & (\Tff4|Qa~q\ & (\Tff7|Qa~q\ $ (!\Tff6|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff7|Qa~q\,
	datab => \Tff5|Qa~q\,
	datac => \Tff6|Qa~q\,
	datad => \Tff4|Qa~q\,
	combout => \bth|bth1|HEX[5]~0_combout\);

-- Location: LCCOMB_X65_Y53_N24
\bth|bth1|HEX[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth1|HEX[4]~1_combout\ = (\Tff5|Qa~q\ & (!\Tff7|Qa~q\ & ((\Tff4|Qa~q\)))) # (!\Tff5|Qa~q\ & ((\Tff6|Qa~q\ & (!\Tff7|Qa~q\)) # (!\Tff6|Qa~q\ & ((\Tff4|Qa~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff7|Qa~q\,
	datab => \Tff5|Qa~q\,
	datac => \Tff6|Qa~q\,
	datad => \Tff4|Qa~q\,
	combout => \bth|bth1|HEX[4]~1_combout\);

-- Location: LCCOMB_X65_Y53_N22
\bth|bth1|HEX[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth1|HEX[3]~2_combout\ = (\Tff4|Qa~q\ & ((\Tff5|Qa~q\ $ (!\Tff6|Qa~q\)))) # (!\Tff4|Qa~q\ & ((\Tff7|Qa~q\ & (\Tff5|Qa~q\ & !\Tff6|Qa~q\)) # (!\Tff7|Qa~q\ & (!\Tff5|Qa~q\ & \Tff6|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff7|Qa~q\,
	datab => \Tff5|Qa~q\,
	datac => \Tff6|Qa~q\,
	datad => \Tff4|Qa~q\,
	combout => \bth|bth1|HEX[3]~2_combout\);

-- Location: LCCOMB_X65_Y53_N20
\bth|bth1|HEX[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth1|HEX[2]~3_combout\ = (\Tff7|Qa~q\ & (\Tff6|Qa~q\ & ((\Tff5|Qa~q\) # (!\Tff4|Qa~q\)))) # (!\Tff7|Qa~q\ & (\Tff5|Qa~q\ & (!\Tff6|Qa~q\ & !\Tff4|Qa~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff7|Qa~q\,
	datab => \Tff5|Qa~q\,
	datac => \Tff6|Qa~q\,
	datad => \Tff4|Qa~q\,
	combout => \bth|bth1|HEX[2]~3_combout\);

-- Location: LCCOMB_X65_Y53_N10
\bth|bth1|HEX[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth1|HEX[1]~4_combout\ = (\Tff7|Qa~q\ & ((\Tff4|Qa~q\ & (\Tff5|Qa~q\)) # (!\Tff4|Qa~q\ & ((\Tff6|Qa~q\))))) # (!\Tff7|Qa~q\ & (\Tff6|Qa~q\ & (\Tff5|Qa~q\ $ (\Tff4|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff7|Qa~q\,
	datab => \Tff5|Qa~q\,
	datac => \Tff6|Qa~q\,
	datad => \Tff4|Qa~q\,
	combout => \bth|bth1|HEX[1]~4_combout\);

-- Location: LCCOMB_X65_Y53_N12
\bth|bth1|HEX[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bth|bth1|HEX[0]~5_combout\ = (\Tff7|Qa~q\ & (\Tff4|Qa~q\ & (\Tff5|Qa~q\ $ (\Tff6|Qa~q\)))) # (!\Tff7|Qa~q\ & (!\Tff5|Qa~q\ & (\Tff6|Qa~q\ $ (\Tff4|Qa~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tff7|Qa~q\,
	datab => \Tff5|Qa~q\,
	datac => \Tff6|Qa~q\,
	datad => \Tff4|Qa~q\,
	combout => \bth|bth1|HEX[0]~5_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_Qout(0) <= \Qout[0]~output_o\;

ww_Qout(1) <= \Qout[1]~output_o\;

ww_Qout(2) <= \Qout[2]~output_o\;

ww_Qout(3) <= \Qout[3]~output_o\;

ww_Qout(4) <= \Qout[4]~output_o\;

ww_Qout(5) <= \Qout[5]~output_o\;

ww_Qout(6) <= \Qout[6]~output_o\;

ww_Qout(7) <= \Qout[7]~output_o\;
END structure;


