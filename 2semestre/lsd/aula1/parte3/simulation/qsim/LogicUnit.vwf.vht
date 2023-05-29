-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/20/2023 16:25:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LogicUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LogicUnit_vhd_vec_tst IS
END LogicUnit_vhd_vec_tst;
ARCHITECTURE LogicUnit_arch OF LogicUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL andOut : STD_LOGIC;
SIGNAL input0 : STD_LOGIC;
SIGNAL input1 : STD_LOGIC;
SIGNAL invOut : STD_LOGIC;
SIGNAL nandOut : STD_LOGIC;
SIGNAL norOut : STD_LOGIC;
SIGNAL orOut : STD_LOGIC;
SIGNAL xorOut : STD_LOGIC;
COMPONENT LogicUnit
	PORT (
	andOut : BUFFER STD_LOGIC;
	input0 : IN STD_LOGIC;
	input1 : IN STD_LOGIC;
	invOut : BUFFER STD_LOGIC;
	nandOut : BUFFER STD_LOGIC;
	norOut : BUFFER STD_LOGIC;
	orOut : BUFFER STD_LOGIC;
	xorOut : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LogicUnit
	PORT MAP (
-- list connections between master ports and signals
	andOut => andOut,
	input0 => input0,
	input1 => input1,
	invOut => invOut,
	nandOut => nandOut,
	norOut => norOut,
	orOut => orOut,
	xorOut => xorOut
	);

-- input0
t_prcs_input0: PROCESS
BEGIN
	input0 <= '1';
	WAIT FOR 300000 ps;
	input0 <= '0';
	WAIT FOR 100000 ps;
	input0 <= '1';
	WAIT FOR 100000 ps;
	input0 <= '0';
	WAIT FOR 100000 ps;
	input0 <= '1';
	WAIT FOR 300000 ps;
	input0 <= '0';
WAIT;
END PROCESS t_prcs_input0;

-- input1
t_prcs_input1: PROCESS
BEGIN
	input1 <= '0';
	WAIT FOR 100000 ps;
	input1 <= '1';
	WAIT FOR 200000 ps;
	input1 <= '0';
	WAIT FOR 100000 ps;
	input1 <= '1';
	WAIT FOR 200000 ps;
	input1 <= '0';
	WAIT FOR 200000 ps;
	input1 <= '1';
WAIT;
END PROCESS t_prcs_input1;
END LogicUnit_arch;
