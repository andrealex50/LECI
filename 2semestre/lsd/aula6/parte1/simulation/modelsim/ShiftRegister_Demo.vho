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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/27/2023 15:16:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShiftRegister_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqDiv|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[24]~75\ : std_logic;
SIGNAL \freqDiv|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~4_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~4_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~5_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~3_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~1_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~1_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~6_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[0]~27\ : std_logic;
SIGNAL \freqDiv|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[1]~29\ : std_logic;
SIGNAL \freqDiv|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[2]~31\ : std_logic;
SIGNAL \freqDiv|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[3]~33\ : std_logic;
SIGNAL \freqDiv|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[4]~35\ : std_logic;
SIGNAL \freqDiv|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[5]~37\ : std_logic;
SIGNAL \freqDiv|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[6]~39\ : std_logic;
SIGNAL \freqDiv|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[7]~41\ : std_logic;
SIGNAL \freqDiv|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[8]~43\ : std_logic;
SIGNAL \freqDiv|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[9]~45\ : std_logic;
SIGNAL \freqDiv|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[10]~47\ : std_logic;
SIGNAL \freqDiv|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[11]~49\ : std_logic;
SIGNAL \freqDiv|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[12]~51\ : std_logic;
SIGNAL \freqDiv|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[13]~53\ : std_logic;
SIGNAL \freqDiv|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[14]~55\ : std_logic;
SIGNAL \freqDiv|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[15]~57\ : std_logic;
SIGNAL \freqDiv|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[16]~59\ : std_logic;
SIGNAL \freqDiv|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[17]~61\ : std_logic;
SIGNAL \freqDiv|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[18]~63\ : std_logic;
SIGNAL \freqDiv|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[19]~65\ : std_logic;
SIGNAL \freqDiv|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[20]~67\ : std_logic;
SIGNAL \freqDiv|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[21]~69\ : std_logic;
SIGNAL \freqDiv|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[22]~71\ : std_logic;
SIGNAL \freqDiv|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter[23]~73\ : std_logic;
SIGNAL \freqDiv|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~2_combout\ : std_logic;
SIGNAL \freqDiv|LessThan0~3_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~2_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~5_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~6_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~7_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~8_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~9_combout\ : std_logic;
SIGNAL \freqDiv|clkOut~q\ : std_logic;
SIGNAL \freqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \shiftReg|s_shiftReg[0]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|s_shiftReg[1]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|s_shiftReg[2]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|s_shiftReg[3]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|s_shiftReg[4]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|s_shiftReg[5]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|s_shiftReg[6]~feeder_combout\ : std_logic;
SIGNAL \shiftReg|s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \freqDiv|s_divCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \shiftReg|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\freqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqDiv|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|s_shiftReg\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|s_shiftReg\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|s_shiftReg\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|s_shiftReg\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|s_shiftReg\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|s_shiftReg\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|s_shiftReg\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftReg|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X49_Y18_N6
\freqDiv|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[0]~26_combout\ = \freqDiv|s_divCounter\(0) $ (VCC)
-- \freqDiv|s_divCounter[0]~27\ = CARRY(\freqDiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(0),
	datad => VCC,
	combout => \freqDiv|s_divCounter[0]~26_combout\,
	cout => \freqDiv|s_divCounter[0]~27\);

-- Location: LCCOMB_X49_Y17_N22
\freqDiv|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[24]~74_combout\ = (\freqDiv|s_divCounter\(24) & (\freqDiv|s_divCounter[23]~73\ $ (GND))) # (!\freqDiv|s_divCounter\(24) & (!\freqDiv|s_divCounter[23]~73\ & VCC))
-- \freqDiv|s_divCounter[24]~75\ = CARRY((\freqDiv|s_divCounter\(24) & !\freqDiv|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(24),
	datad => VCC,
	cin => \freqDiv|s_divCounter[23]~73\,
	combout => \freqDiv|s_divCounter[24]~74_combout\,
	cout => \freqDiv|s_divCounter[24]~75\);

-- Location: LCCOMB_X49_Y17_N24
\freqDiv|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[25]~76_combout\ = \freqDiv|s_divCounter[24]~75\ $ (\freqDiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freqDiv|s_divCounter\(25),
	cin => \freqDiv|s_divCounter[24]~75\,
	combout => \freqDiv|s_divCounter[25]~76_combout\);

-- Location: FF_X49_Y17_N25
\freqDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[25]~76_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(25));

-- Location: LCCOMB_X49_Y17_N26
\freqDiv|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~4_combout\ = ((!\freqDiv|s_divCounter\(17) & !\freqDiv|s_divCounter\(18))) # (!\freqDiv|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(23),
	datac => \freqDiv|s_divCounter\(17),
	datad => \freqDiv|s_divCounter\(18),
	combout => \freqDiv|LessThan0~4_combout\);

-- Location: LCCOMB_X49_Y17_N30
\freqDiv|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~4_combout\ = (\freqDiv|s_divCounter\(19) & (\freqDiv|s_divCounter\(22) & (\freqDiv|s_divCounter\(20) & \freqDiv|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(19),
	datab => \freqDiv|s_divCounter\(22),
	datac => \freqDiv|s_divCounter\(20),
	datad => \freqDiv|s_divCounter\(21),
	combout => \freqDiv|clkOut~4_combout\);

-- Location: LCCOMB_X50_Y18_N26
\freqDiv|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~5_combout\ = ((!\freqDiv|s_divCounter\(24) & ((\freqDiv|LessThan0~4_combout\) # (!\freqDiv|clkOut~4_combout\)))) # (!\freqDiv|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(24),
	datab => \freqDiv|s_divCounter\(25),
	datac => \freqDiv|LessThan0~4_combout\,
	datad => \freqDiv|clkOut~4_combout\,
	combout => \freqDiv|LessThan0~5_combout\);

-- Location: LCCOMB_X49_Y18_N4
\freqDiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~3_combout\ = (!\freqDiv|s_divCounter\(8) & (!\freqDiv|s_divCounter\(7) & (!\freqDiv|s_divCounter\(10) & !\freqDiv|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(8),
	datab => \freqDiv|s_divCounter\(7),
	datac => \freqDiv|s_divCounter\(10),
	datad => \freqDiv|s_divCounter\(9),
	combout => \freqDiv|clkOut~3_combout\);

-- Location: LCCOMB_X50_Y18_N14
\freqDiv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~0_combout\ = (!\freqDiv|s_divCounter\(24) & (!\freqDiv|s_divCounter\(11) & (!\freqDiv|s_divCounter\(18) & !\freqDiv|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(24),
	datab => \freqDiv|s_divCounter\(11),
	datac => \freqDiv|s_divCounter\(18),
	datad => \freqDiv|s_divCounter\(16),
	combout => \freqDiv|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y18_N0
\freqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~0_combout\ = (\freqDiv|s_divCounter\(3) & (\freqDiv|s_divCounter\(1) & (\freqDiv|s_divCounter\(0) & \freqDiv|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(3),
	datab => \freqDiv|s_divCounter\(1),
	datac => \freqDiv|s_divCounter\(0),
	datad => \freqDiv|s_divCounter\(2),
	combout => \freqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X49_Y18_N2
\freqDiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~1_combout\ = (\freqDiv|s_divCounter\(5) & (\freqDiv|s_divCounter\(4) & \freqDiv|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(5),
	datac => \freqDiv|s_divCounter\(4),
	datad => \freqDiv|clkOut~0_combout\,
	combout => \freqDiv|clkOut~1_combout\);

-- Location: LCCOMB_X50_Y18_N16
\freqDiv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~1_combout\ = (\freqDiv|clkOut~3_combout\ & (\freqDiv|LessThan0~0_combout\ & ((!\freqDiv|clkOut~1_combout\) # (!\freqDiv|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(6),
	datab => \freqDiv|clkOut~3_combout\,
	datac => \freqDiv|LessThan0~0_combout\,
	datad => \freqDiv|clkOut~1_combout\,
	combout => \freqDiv|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y18_N8
\freqDiv|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~6_combout\ = (!\freqDiv|LessThan0~3_combout\ & (!\freqDiv|LessThan0~5_combout\ & !\freqDiv|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|LessThan0~3_combout\,
	datac => \freqDiv|LessThan0~5_combout\,
	datad => \freqDiv|LessThan0~1_combout\,
	combout => \freqDiv|LessThan0~6_combout\);

-- Location: FF_X49_Y18_N7
\freqDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[0]~26_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(0));

-- Location: LCCOMB_X49_Y18_N8
\freqDiv|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[1]~28_combout\ = (\freqDiv|s_divCounter\(1) & (!\freqDiv|s_divCounter[0]~27\)) # (!\freqDiv|s_divCounter\(1) & ((\freqDiv|s_divCounter[0]~27\) # (GND)))
-- \freqDiv|s_divCounter[1]~29\ = CARRY((!\freqDiv|s_divCounter[0]~27\) # (!\freqDiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(1),
	datad => VCC,
	cin => \freqDiv|s_divCounter[0]~27\,
	combout => \freqDiv|s_divCounter[1]~28_combout\,
	cout => \freqDiv|s_divCounter[1]~29\);

-- Location: FF_X49_Y18_N9
\freqDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[1]~28_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(1));

-- Location: LCCOMB_X49_Y18_N10
\freqDiv|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[2]~30_combout\ = (\freqDiv|s_divCounter\(2) & (\freqDiv|s_divCounter[1]~29\ $ (GND))) # (!\freqDiv|s_divCounter\(2) & (!\freqDiv|s_divCounter[1]~29\ & VCC))
-- \freqDiv|s_divCounter[2]~31\ = CARRY((\freqDiv|s_divCounter\(2) & !\freqDiv|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(2),
	datad => VCC,
	cin => \freqDiv|s_divCounter[1]~29\,
	combout => \freqDiv|s_divCounter[2]~30_combout\,
	cout => \freqDiv|s_divCounter[2]~31\);

-- Location: FF_X49_Y18_N11
\freqDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[2]~30_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(2));

-- Location: LCCOMB_X49_Y18_N12
\freqDiv|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[3]~32_combout\ = (\freqDiv|s_divCounter\(3) & (!\freqDiv|s_divCounter[2]~31\)) # (!\freqDiv|s_divCounter\(3) & ((\freqDiv|s_divCounter[2]~31\) # (GND)))
-- \freqDiv|s_divCounter[3]~33\ = CARRY((!\freqDiv|s_divCounter[2]~31\) # (!\freqDiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(3),
	datad => VCC,
	cin => \freqDiv|s_divCounter[2]~31\,
	combout => \freqDiv|s_divCounter[3]~32_combout\,
	cout => \freqDiv|s_divCounter[3]~33\);

-- Location: FF_X49_Y18_N13
\freqDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[3]~32_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(3));

-- Location: LCCOMB_X49_Y18_N14
\freqDiv|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[4]~34_combout\ = (\freqDiv|s_divCounter\(4) & (\freqDiv|s_divCounter[3]~33\ $ (GND))) # (!\freqDiv|s_divCounter\(4) & (!\freqDiv|s_divCounter[3]~33\ & VCC))
-- \freqDiv|s_divCounter[4]~35\ = CARRY((\freqDiv|s_divCounter\(4) & !\freqDiv|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(4),
	datad => VCC,
	cin => \freqDiv|s_divCounter[3]~33\,
	combout => \freqDiv|s_divCounter[4]~34_combout\,
	cout => \freqDiv|s_divCounter[4]~35\);

-- Location: FF_X49_Y18_N15
\freqDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[4]~34_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(4));

-- Location: LCCOMB_X49_Y18_N16
\freqDiv|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[5]~36_combout\ = (\freqDiv|s_divCounter\(5) & (!\freqDiv|s_divCounter[4]~35\)) # (!\freqDiv|s_divCounter\(5) & ((\freqDiv|s_divCounter[4]~35\) # (GND)))
-- \freqDiv|s_divCounter[5]~37\ = CARRY((!\freqDiv|s_divCounter[4]~35\) # (!\freqDiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(5),
	datad => VCC,
	cin => \freqDiv|s_divCounter[4]~35\,
	combout => \freqDiv|s_divCounter[5]~36_combout\,
	cout => \freqDiv|s_divCounter[5]~37\);

-- Location: FF_X49_Y18_N17
\freqDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[5]~36_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(5));

-- Location: LCCOMB_X49_Y18_N18
\freqDiv|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[6]~38_combout\ = (\freqDiv|s_divCounter\(6) & (\freqDiv|s_divCounter[5]~37\ $ (GND))) # (!\freqDiv|s_divCounter\(6) & (!\freqDiv|s_divCounter[5]~37\ & VCC))
-- \freqDiv|s_divCounter[6]~39\ = CARRY((\freqDiv|s_divCounter\(6) & !\freqDiv|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(6),
	datad => VCC,
	cin => \freqDiv|s_divCounter[5]~37\,
	combout => \freqDiv|s_divCounter[6]~38_combout\,
	cout => \freqDiv|s_divCounter[6]~39\);

-- Location: FF_X49_Y18_N19
\freqDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[6]~38_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(6));

-- Location: LCCOMB_X49_Y18_N20
\freqDiv|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[7]~40_combout\ = (\freqDiv|s_divCounter\(7) & (!\freqDiv|s_divCounter[6]~39\)) # (!\freqDiv|s_divCounter\(7) & ((\freqDiv|s_divCounter[6]~39\) # (GND)))
-- \freqDiv|s_divCounter[7]~41\ = CARRY((!\freqDiv|s_divCounter[6]~39\) # (!\freqDiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(7),
	datad => VCC,
	cin => \freqDiv|s_divCounter[6]~39\,
	combout => \freqDiv|s_divCounter[7]~40_combout\,
	cout => \freqDiv|s_divCounter[7]~41\);

-- Location: FF_X49_Y18_N21
\freqDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[7]~40_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(7));

-- Location: LCCOMB_X49_Y18_N22
\freqDiv|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[8]~42_combout\ = (\freqDiv|s_divCounter\(8) & (\freqDiv|s_divCounter[7]~41\ $ (GND))) # (!\freqDiv|s_divCounter\(8) & (!\freqDiv|s_divCounter[7]~41\ & VCC))
-- \freqDiv|s_divCounter[8]~43\ = CARRY((\freqDiv|s_divCounter\(8) & !\freqDiv|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(8),
	datad => VCC,
	cin => \freqDiv|s_divCounter[7]~41\,
	combout => \freqDiv|s_divCounter[8]~42_combout\,
	cout => \freqDiv|s_divCounter[8]~43\);

-- Location: FF_X49_Y18_N23
\freqDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[8]~42_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(8));

-- Location: LCCOMB_X49_Y18_N24
\freqDiv|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[9]~44_combout\ = (\freqDiv|s_divCounter\(9) & (!\freqDiv|s_divCounter[8]~43\)) # (!\freqDiv|s_divCounter\(9) & ((\freqDiv|s_divCounter[8]~43\) # (GND)))
-- \freqDiv|s_divCounter[9]~45\ = CARRY((!\freqDiv|s_divCounter[8]~43\) # (!\freqDiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(9),
	datad => VCC,
	cin => \freqDiv|s_divCounter[8]~43\,
	combout => \freqDiv|s_divCounter[9]~44_combout\,
	cout => \freqDiv|s_divCounter[9]~45\);

-- Location: FF_X49_Y18_N25
\freqDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[9]~44_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(9));

-- Location: LCCOMB_X49_Y18_N26
\freqDiv|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[10]~46_combout\ = (\freqDiv|s_divCounter\(10) & (\freqDiv|s_divCounter[9]~45\ $ (GND))) # (!\freqDiv|s_divCounter\(10) & (!\freqDiv|s_divCounter[9]~45\ & VCC))
-- \freqDiv|s_divCounter[10]~47\ = CARRY((\freqDiv|s_divCounter\(10) & !\freqDiv|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(10),
	datad => VCC,
	cin => \freqDiv|s_divCounter[9]~45\,
	combout => \freqDiv|s_divCounter[10]~46_combout\,
	cout => \freqDiv|s_divCounter[10]~47\);

-- Location: FF_X49_Y18_N27
\freqDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[10]~46_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(10));

-- Location: LCCOMB_X49_Y18_N28
\freqDiv|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[11]~48_combout\ = (\freqDiv|s_divCounter\(11) & (!\freqDiv|s_divCounter[10]~47\)) # (!\freqDiv|s_divCounter\(11) & ((\freqDiv|s_divCounter[10]~47\) # (GND)))
-- \freqDiv|s_divCounter[11]~49\ = CARRY((!\freqDiv|s_divCounter[10]~47\) # (!\freqDiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(11),
	datad => VCC,
	cin => \freqDiv|s_divCounter[10]~47\,
	combout => \freqDiv|s_divCounter[11]~48_combout\,
	cout => \freqDiv|s_divCounter[11]~49\);

-- Location: FF_X49_Y18_N29
\freqDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[11]~48_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(11));

-- Location: LCCOMB_X49_Y18_N30
\freqDiv|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[12]~50_combout\ = (\freqDiv|s_divCounter\(12) & (\freqDiv|s_divCounter[11]~49\ $ (GND))) # (!\freqDiv|s_divCounter\(12) & (!\freqDiv|s_divCounter[11]~49\ & VCC))
-- \freqDiv|s_divCounter[12]~51\ = CARRY((\freqDiv|s_divCounter\(12) & !\freqDiv|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(12),
	datad => VCC,
	cin => \freqDiv|s_divCounter[11]~49\,
	combout => \freqDiv|s_divCounter[12]~50_combout\,
	cout => \freqDiv|s_divCounter[12]~51\);

-- Location: FF_X49_Y18_N31
\freqDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[12]~50_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(12));

-- Location: LCCOMB_X49_Y17_N0
\freqDiv|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[13]~52_combout\ = (\freqDiv|s_divCounter\(13) & (!\freqDiv|s_divCounter[12]~51\)) # (!\freqDiv|s_divCounter\(13) & ((\freqDiv|s_divCounter[12]~51\) # (GND)))
-- \freqDiv|s_divCounter[13]~53\ = CARRY((!\freqDiv|s_divCounter[12]~51\) # (!\freqDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(13),
	datad => VCC,
	cin => \freqDiv|s_divCounter[12]~51\,
	combout => \freqDiv|s_divCounter[13]~52_combout\,
	cout => \freqDiv|s_divCounter[13]~53\);

-- Location: FF_X50_Y18_N11
\freqDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[13]~52_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(13));

-- Location: LCCOMB_X49_Y17_N2
\freqDiv|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[14]~54_combout\ = (\freqDiv|s_divCounter\(14) & (\freqDiv|s_divCounter[13]~53\ $ (GND))) # (!\freqDiv|s_divCounter\(14) & (!\freqDiv|s_divCounter[13]~53\ & VCC))
-- \freqDiv|s_divCounter[14]~55\ = CARRY((\freqDiv|s_divCounter\(14) & !\freqDiv|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(14),
	datad => VCC,
	cin => \freqDiv|s_divCounter[13]~53\,
	combout => \freqDiv|s_divCounter[14]~54_combout\,
	cout => \freqDiv|s_divCounter[14]~55\);

-- Location: FF_X50_Y18_N19
\freqDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[14]~54_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(14));

-- Location: LCCOMB_X49_Y17_N4
\freqDiv|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[15]~56_combout\ = (\freqDiv|s_divCounter\(15) & (!\freqDiv|s_divCounter[14]~55\)) # (!\freqDiv|s_divCounter\(15) & ((\freqDiv|s_divCounter[14]~55\) # (GND)))
-- \freqDiv|s_divCounter[15]~57\ = CARRY((!\freqDiv|s_divCounter[14]~55\) # (!\freqDiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(15),
	datad => VCC,
	cin => \freqDiv|s_divCounter[14]~55\,
	combout => \freqDiv|s_divCounter[15]~56_combout\,
	cout => \freqDiv|s_divCounter[15]~57\);

-- Location: FF_X50_Y18_N21
\freqDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \freqDiv|s_divCounter[15]~56_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(15));

-- Location: LCCOMB_X49_Y17_N6
\freqDiv|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[16]~58_combout\ = (\freqDiv|s_divCounter\(16) & (\freqDiv|s_divCounter[15]~57\ $ (GND))) # (!\freqDiv|s_divCounter\(16) & (!\freqDiv|s_divCounter[15]~57\ & VCC))
-- \freqDiv|s_divCounter[16]~59\ = CARRY((\freqDiv|s_divCounter\(16) & !\freqDiv|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(16),
	datad => VCC,
	cin => \freqDiv|s_divCounter[15]~57\,
	combout => \freqDiv|s_divCounter[16]~58_combout\,
	cout => \freqDiv|s_divCounter[16]~59\);

-- Location: FF_X49_Y17_N7
\freqDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[16]~58_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(16));

-- Location: LCCOMB_X49_Y17_N8
\freqDiv|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[17]~60_combout\ = (\freqDiv|s_divCounter\(17) & (!\freqDiv|s_divCounter[16]~59\)) # (!\freqDiv|s_divCounter\(17) & ((\freqDiv|s_divCounter[16]~59\) # (GND)))
-- \freqDiv|s_divCounter[17]~61\ = CARRY((!\freqDiv|s_divCounter[16]~59\) # (!\freqDiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(17),
	datad => VCC,
	cin => \freqDiv|s_divCounter[16]~59\,
	combout => \freqDiv|s_divCounter[17]~60_combout\,
	cout => \freqDiv|s_divCounter[17]~61\);

-- Location: FF_X49_Y17_N9
\freqDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[17]~60_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(17));

-- Location: LCCOMB_X49_Y17_N10
\freqDiv|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[18]~62_combout\ = (\freqDiv|s_divCounter\(18) & (\freqDiv|s_divCounter[17]~61\ $ (GND))) # (!\freqDiv|s_divCounter\(18) & (!\freqDiv|s_divCounter[17]~61\ & VCC))
-- \freqDiv|s_divCounter[18]~63\ = CARRY((\freqDiv|s_divCounter\(18) & !\freqDiv|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datad => VCC,
	cin => \freqDiv|s_divCounter[17]~61\,
	combout => \freqDiv|s_divCounter[18]~62_combout\,
	cout => \freqDiv|s_divCounter[18]~63\);

-- Location: FF_X49_Y17_N11
\freqDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[18]~62_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(18));

-- Location: LCCOMB_X49_Y17_N12
\freqDiv|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[19]~64_combout\ = (\freqDiv|s_divCounter\(19) & (!\freqDiv|s_divCounter[18]~63\)) # (!\freqDiv|s_divCounter\(19) & ((\freqDiv|s_divCounter[18]~63\) # (GND)))
-- \freqDiv|s_divCounter[19]~65\ = CARRY((!\freqDiv|s_divCounter[18]~63\) # (!\freqDiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(19),
	datad => VCC,
	cin => \freqDiv|s_divCounter[18]~63\,
	combout => \freqDiv|s_divCounter[19]~64_combout\,
	cout => \freqDiv|s_divCounter[19]~65\);

-- Location: FF_X49_Y17_N13
\freqDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[19]~64_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(19));

-- Location: LCCOMB_X49_Y17_N14
\freqDiv|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[20]~66_combout\ = (\freqDiv|s_divCounter\(20) & (\freqDiv|s_divCounter[19]~65\ $ (GND))) # (!\freqDiv|s_divCounter\(20) & (!\freqDiv|s_divCounter[19]~65\ & VCC))
-- \freqDiv|s_divCounter[20]~67\ = CARRY((\freqDiv|s_divCounter\(20) & !\freqDiv|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(20),
	datad => VCC,
	cin => \freqDiv|s_divCounter[19]~65\,
	combout => \freqDiv|s_divCounter[20]~66_combout\,
	cout => \freqDiv|s_divCounter[20]~67\);

-- Location: FF_X49_Y17_N15
\freqDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[20]~66_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(20));

-- Location: LCCOMB_X49_Y17_N16
\freqDiv|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[21]~68_combout\ = (\freqDiv|s_divCounter\(21) & (!\freqDiv|s_divCounter[20]~67\)) # (!\freqDiv|s_divCounter\(21) & ((\freqDiv|s_divCounter[20]~67\) # (GND)))
-- \freqDiv|s_divCounter[21]~69\ = CARRY((!\freqDiv|s_divCounter[20]~67\) # (!\freqDiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(21),
	datad => VCC,
	cin => \freqDiv|s_divCounter[20]~67\,
	combout => \freqDiv|s_divCounter[21]~68_combout\,
	cout => \freqDiv|s_divCounter[21]~69\);

-- Location: FF_X49_Y17_N17
\freqDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[21]~68_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(21));

-- Location: LCCOMB_X49_Y17_N18
\freqDiv|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[22]~70_combout\ = (\freqDiv|s_divCounter\(22) & (\freqDiv|s_divCounter[21]~69\ $ (GND))) # (!\freqDiv|s_divCounter\(22) & (!\freqDiv|s_divCounter[21]~69\ & VCC))
-- \freqDiv|s_divCounter[22]~71\ = CARRY((\freqDiv|s_divCounter\(22) & !\freqDiv|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(22),
	datad => VCC,
	cin => \freqDiv|s_divCounter[21]~69\,
	combout => \freqDiv|s_divCounter[22]~70_combout\,
	cout => \freqDiv|s_divCounter[22]~71\);

-- Location: FF_X49_Y17_N19
\freqDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[22]~70_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(22));

-- Location: LCCOMB_X49_Y17_N20
\freqDiv|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|s_divCounter[23]~72_combout\ = (\freqDiv|s_divCounter\(23) & (!\freqDiv|s_divCounter[22]~71\)) # (!\freqDiv|s_divCounter\(23) & ((\freqDiv|s_divCounter[22]~71\) # (GND)))
-- \freqDiv|s_divCounter[23]~73\ = CARRY((!\freqDiv|s_divCounter[22]~71\) # (!\freqDiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqDiv|s_divCounter\(23),
	datad => VCC,
	cin => \freqDiv|s_divCounter[22]~71\,
	combout => \freqDiv|s_divCounter[23]~72_combout\,
	cout => \freqDiv|s_divCounter[23]~73\);

-- Location: FF_X49_Y17_N21
\freqDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[23]~72_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(23));

-- Location: FF_X49_Y17_N23
\freqDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|s_divCounter[24]~74_combout\,
	sclr => \freqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|s_divCounter\(24));

-- Location: LCCOMB_X50_Y18_N28
\freqDiv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~2_combout\ = (((!\freqDiv|s_divCounter\(12)) # (!\freqDiv|s_divCounter\(14))) # (!\freqDiv|s_divCounter\(15))) # (!\freqDiv|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(13),
	datab => \freqDiv|s_divCounter\(15),
	datac => \freqDiv|s_divCounter\(14),
	datad => \freqDiv|s_divCounter\(12),
	combout => \freqDiv|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y18_N6
\freqDiv|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|LessThan0~3_combout\ = (!\freqDiv|s_divCounter\(24) & (!\freqDiv|s_divCounter\(16) & (!\freqDiv|s_divCounter\(18) & \freqDiv|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(24),
	datab => \freqDiv|s_divCounter\(16),
	datac => \freqDiv|s_divCounter\(18),
	datad => \freqDiv|LessThan0~2_combout\,
	combout => \freqDiv|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y18_N10
\freqDiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~2_combout\ = (\freqDiv|s_divCounter\(14) & (!\freqDiv|s_divCounter\(6) & (\freqDiv|s_divCounter\(13) & \freqDiv|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(14),
	datab => \freqDiv|s_divCounter\(6),
	datac => \freqDiv|s_divCounter\(13),
	datad => \freqDiv|s_divCounter\(12),
	combout => \freqDiv|clkOut~2_combout\);

-- Location: LCCOMB_X49_Y17_N28
\freqDiv|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~5_combout\ = (\freqDiv|s_divCounter\(18) & (!\freqDiv|s_divCounter\(23) & (\freqDiv|s_divCounter\(24) & !\freqDiv|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(18),
	datab => \freqDiv|s_divCounter\(23),
	datac => \freqDiv|s_divCounter\(24),
	datad => \freqDiv|s_divCounter\(25),
	combout => \freqDiv|clkOut~5_combout\);

-- Location: LCCOMB_X50_Y18_N12
\freqDiv|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~6_combout\ = (!\freqDiv|s_divCounter\(17) & (\freqDiv|s_divCounter\(16) & (!\freqDiv|s_divCounter\(15) & \freqDiv|clkOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|s_divCounter\(17),
	datab => \freqDiv|s_divCounter\(16),
	datac => \freqDiv|s_divCounter\(15),
	datad => \freqDiv|clkOut~5_combout\,
	combout => \freqDiv|clkOut~6_combout\);

-- Location: LCCOMB_X50_Y18_N22
\freqDiv|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~7_combout\ = (\freqDiv|clkOut~4_combout\ & (\freqDiv|s_divCounter\(11) & (\freqDiv|clkOut~3_combout\ & \freqDiv|clkOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~4_combout\,
	datab => \freqDiv|s_divCounter\(11),
	datac => \freqDiv|clkOut~3_combout\,
	datad => \freqDiv|clkOut~6_combout\,
	combout => \freqDiv|clkOut~7_combout\);

-- Location: LCCOMB_X50_Y18_N24
\freqDiv|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~8_combout\ = (\freqDiv|clkOut~q\) # ((\freqDiv|clkOut~1_combout\ & (\freqDiv|clkOut~2_combout\ & \freqDiv|clkOut~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|clkOut~1_combout\,
	datab => \freqDiv|clkOut~2_combout\,
	datac => \freqDiv|clkOut~7_combout\,
	datad => \freqDiv|clkOut~q\,
	combout => \freqDiv|clkOut~8_combout\);

-- Location: LCCOMB_X50_Y18_N30
\freqDiv|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqDiv|clkOut~9_combout\ = (\freqDiv|clkOut~8_combout\ & ((\freqDiv|LessThan0~3_combout\) # ((\freqDiv|LessThan0~1_combout\) # (\freqDiv|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqDiv|LessThan0~3_combout\,
	datab => \freqDiv|LessThan0~1_combout\,
	datac => \freqDiv|LessThan0~5_combout\,
	datad => \freqDiv|clkOut~8_combout\,
	combout => \freqDiv|clkOut~9_combout\);

-- Location: FF_X50_Y18_N31
\freqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \freqDiv|clkOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqDiv|clkOut~q\);

-- Location: CLKCTRL_G15
\freqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqDiv|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X80_Y72_N12
\shiftReg|s_shiftReg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftReg|s_shiftReg[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \shiftReg|s_shiftReg[0]~feeder_combout\);

-- Location: FF_X80_Y72_N13
\shiftReg|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shiftReg|s_shiftReg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|s_shiftReg\(0));

-- Location: LCCOMB_X80_Y72_N2
\shiftReg|s_shiftReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftReg|s_shiftReg[1]~feeder_combout\ = \shiftReg|s_shiftReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|s_shiftReg\(0),
	combout => \shiftReg|s_shiftReg[1]~feeder_combout\);

-- Location: FF_X80_Y72_N3
\shiftReg|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shiftReg|s_shiftReg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|s_shiftReg\(1));

-- Location: LCCOMB_X80_Y72_N24
\shiftReg|s_shiftReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftReg|s_shiftReg[2]~feeder_combout\ = \shiftReg|s_shiftReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|s_shiftReg\(1),
	combout => \shiftReg|s_shiftReg[2]~feeder_combout\);

-- Location: FF_X80_Y72_N25
\shiftReg|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shiftReg|s_shiftReg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|s_shiftReg\(2));

-- Location: LCCOMB_X80_Y72_N6
\shiftReg|s_shiftReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftReg|s_shiftReg[3]~feeder_combout\ = \shiftReg|s_shiftReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|s_shiftReg\(2),
	combout => \shiftReg|s_shiftReg[3]~feeder_combout\);

-- Location: FF_X80_Y72_N7
\shiftReg|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shiftReg|s_shiftReg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|s_shiftReg\(3));

-- Location: LCCOMB_X80_Y72_N28
\shiftReg|s_shiftReg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftReg|s_shiftReg[4]~feeder_combout\ = \shiftReg|s_shiftReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|s_shiftReg\(3),
	combout => \shiftReg|s_shiftReg[4]~feeder_combout\);

-- Location: FF_X80_Y72_N29
\shiftReg|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shiftReg|s_shiftReg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|s_shiftReg\(4));

-- Location: LCCOMB_X80_Y72_N18
\shiftReg|s_shiftReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftReg|s_shiftReg[5]~feeder_combout\ = \shiftReg|s_shiftReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|s_shiftReg\(4),
	combout => \shiftReg|s_shiftReg[5]~feeder_combout\);

-- Location: FF_X80_Y72_N19
\shiftReg|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shiftReg|s_shiftReg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|s_shiftReg\(5));

-- Location: LCCOMB_X80_Y72_N16
\shiftReg|s_shiftReg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftReg|s_shiftReg[6]~feeder_combout\ = \shiftReg|s_shiftReg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|s_shiftReg\(5),
	combout => \shiftReg|s_shiftReg[6]~feeder_combout\);

-- Location: FF_X80_Y72_N17
\shiftReg|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shiftReg|s_shiftReg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|s_shiftReg\(6));

-- Location: LCCOMB_X80_Y72_N14
\shiftReg|s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftReg|s_shiftReg[7]~feeder_combout\ = \shiftReg|s_shiftReg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shiftReg|s_shiftReg\(6),
	combout => \shiftReg|s_shiftReg[7]~feeder_combout\);

-- Location: FF_X80_Y72_N15
\shiftReg|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqDiv|clkOut~clkctrl_outclk\,
	d => \shiftReg|s_shiftReg[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shiftReg|s_shiftReg\(7));

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;
END structure;


