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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/17/2019 22:19:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY part1_vhd_vec_tst IS
END part1_vhd_vec_tst;
ARCHITECTURE part1_arch OF part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX1 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL key : STD_LOGIC;
SIGNAL Qout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SW0 : STD_LOGIC;
SIGNAL SW1 : STD_LOGIC;
COMPONENT part1
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
	key : IN STD_LOGIC;
	Qout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SW0 : IN STD_LOGIC;
	SW1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : part1
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	key => key,
	Qout => Qout,
	SW0 => SW0,
	SW1 => SW1
	);

-- key
t_prcs_key: PROCESS
BEGIN
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
	WAIT FOR 40000 ps;
	key <= '1';
	WAIT FOR 40000 ps;
	key <= '0';
WAIT;
END PROCESS t_prcs_key;

-- SW0
t_prcs_SW0: PROCESS
BEGIN
	SW0 <= '0';
	WAIT FOR 640000 ps;
	SW0 <= '1';
	WAIT FOR 80000 ps;
	SW0 <= '0';
WAIT;
END PROCESS t_prcs_SW0;

-- SW1
t_prcs_SW1: PROCESS
BEGIN
	SW1 <= '0';
	WAIT FOR 80000 ps;
	SW1 <= '1';
WAIT;
END PROCESS t_prcs_SW1;
END part1_arch;
