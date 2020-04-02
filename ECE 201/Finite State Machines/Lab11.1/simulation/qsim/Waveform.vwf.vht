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
-- Generated on "11/20/2019 23:04:51"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL y0 : STD_LOGIC;
SIGNAL y1 : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT part1
	PORT (
	clk : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	w : IN STD_LOGIC;
	y0 : BUFFER STD_LOGIC;
	y1 : BUFFER STD_LOGIC;
	z : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : part1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset => reset,
	w => w,
	y0 => y0,
	y1 => y1,
	z => z
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 40000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 720000 ps;
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- w
t_prcs_w: PROCESS
BEGIN
	w <= '0';
	WAIT FOR 80000 ps;
	w <= '1';
	WAIT FOR 140000 ps;
	w <= '0';
	WAIT FOR 100000 ps;
	w <= '1';
	WAIT FOR 80000 ps;
	w <= '0';
	WAIT FOR 80000 ps;
	w <= '1';
	WAIT FOR 320000 ps;
	w <= '0';
	WAIT FOR 80000 ps;
	w <= '1';
	WAIT FOR 80000 ps;
	w <= '0';
WAIT;
END PROCESS t_prcs_w;
END part1_arch;
