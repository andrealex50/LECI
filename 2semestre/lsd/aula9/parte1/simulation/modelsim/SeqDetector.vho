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

-- DATE "05/22/2023 16:11:53"

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

ENTITY 	SeqDetector IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDG : OUT std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END SeqDetector;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDetector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FreqDivider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \FreqDivider|s_counter[0]~31_combout\ : std_logic;
SIGNAL \FreqDivider|process_0~0_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[0]~32\ : std_logic;
SIGNAL \FreqDivider|s_counter[1]~33_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[1]~34\ : std_logic;
SIGNAL \FreqDivider|s_counter[2]~35_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[2]~36\ : std_logic;
SIGNAL \FreqDivider|s_counter[3]~37_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[3]~38\ : std_logic;
SIGNAL \FreqDivider|s_counter[4]~39_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[4]~40\ : std_logic;
SIGNAL \FreqDivider|s_counter[5]~41_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[5]~42\ : std_logic;
SIGNAL \FreqDivider|s_counter[6]~43_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[6]~44\ : std_logic;
SIGNAL \FreqDivider|s_counter[7]~45_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[7]~46\ : std_logic;
SIGNAL \FreqDivider|s_counter[8]~47_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[8]~48\ : std_logic;
SIGNAL \FreqDivider|s_counter[9]~49_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[9]~50\ : std_logic;
SIGNAL \FreqDivider|s_counter[10]~51_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[10]~52\ : std_logic;
SIGNAL \FreqDivider|s_counter[11]~53_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[11]~54\ : std_logic;
SIGNAL \FreqDivider|s_counter[12]~55_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[12]~56\ : std_logic;
SIGNAL \FreqDivider|s_counter[13]~57_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[13]~58\ : std_logic;
SIGNAL \FreqDivider|s_counter[14]~59_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[14]~60\ : std_logic;
SIGNAL \FreqDivider|s_counter[15]~61_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[15]~62\ : std_logic;
SIGNAL \FreqDivider|s_counter[16]~63_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[16]~64\ : std_logic;
SIGNAL \FreqDivider|s_counter[17]~65_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[17]~66\ : std_logic;
SIGNAL \FreqDivider|s_counter[18]~67_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[18]~68\ : std_logic;
SIGNAL \FreqDivider|s_counter[19]~69_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[19]~70\ : std_logic;
SIGNAL \FreqDivider|s_counter[20]~71_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[20]~72\ : std_logic;
SIGNAL \FreqDivider|s_counter[21]~73_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[21]~74\ : std_logic;
SIGNAL \FreqDivider|s_counter[22]~75_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[22]~76\ : std_logic;
SIGNAL \FreqDivider|s_counter[23]~77_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[23]~78\ : std_logic;
SIGNAL \FreqDivider|s_counter[24]~79_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[24]~80\ : std_logic;
SIGNAL \FreqDivider|s_counter[25]~81_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[25]~82\ : std_logic;
SIGNAL \FreqDivider|s_counter[26]~83_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[26]~84\ : std_logic;
SIGNAL \FreqDivider|s_counter[27]~85_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[27]~86\ : std_logic;
SIGNAL \FreqDivider|s_counter[28]~87_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[28]~88\ : std_logic;
SIGNAL \FreqDivider|s_counter[29]~89_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter[29]~90\ : std_logic;
SIGNAL \FreqDivider|s_counter[30]~91_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~6_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~7_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~5_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~8_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~2_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~3_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~0_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~1_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~4_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~9_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~2_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~1_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~0_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~3_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~4_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~5_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~feeder_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~q\ : std_logic;
SIGNAL \FreqDivider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SeqDetector|PS~8_combout\ : std_logic;
SIGNAL \SeqDetector|PS.B~q\ : std_logic;
SIGNAL \SeqDetector|PS~7_combout\ : std_logic;
SIGNAL \SeqDetector|PS.C~q\ : std_logic;
SIGNAL \SeqDetector|PS~6_combout\ : std_logic;
SIGNAL \SeqDetector|PS.D~q\ : std_logic;
SIGNAL \SeqDetector|yOut~1_combout\ : std_logic;
SIGNAL \FreqDivider|s_counter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\FreqDivider|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FreqDivider|clkOut~q\);
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
	i => \FreqDivider|clkOut~q\,
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
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqDetector|yOut~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X101_Y29_N2
\FreqDivider|s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[0]~31_combout\ = \FreqDivider|s_counter\(0) $ (VCC)
-- \FreqDivider|s_counter[0]~32\ = CARRY(\FreqDivider|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(0),
	datad => VCC,
	combout => \FreqDivider|s_counter[0]~31_combout\,
	cout => \FreqDivider|s_counter[0]~32\);

-- Location: LCCOMB_X100_Y28_N0
\FreqDivider|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|process_0~0_combout\ = (\SW[1]~input_o\) # (\FreqDivider|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \FreqDivider|Equal0~9_combout\,
	combout => \FreqDivider|process_0~0_combout\);

-- Location: FF_X101_Y29_N3
\FreqDivider|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[0]~31_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(0));

-- Location: LCCOMB_X101_Y29_N4
\FreqDivider|s_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[1]~33_combout\ = (\FreqDivider|s_counter\(1) & (!\FreqDivider|s_counter[0]~32\)) # (!\FreqDivider|s_counter\(1) & ((\FreqDivider|s_counter[0]~32\) # (GND)))
-- \FreqDivider|s_counter[1]~34\ = CARRY((!\FreqDivider|s_counter[0]~32\) # (!\FreqDivider|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(1),
	datad => VCC,
	cin => \FreqDivider|s_counter[0]~32\,
	combout => \FreqDivider|s_counter[1]~33_combout\,
	cout => \FreqDivider|s_counter[1]~34\);

-- Location: FF_X101_Y29_N5
\FreqDivider|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[1]~33_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(1));

-- Location: LCCOMB_X101_Y29_N6
\FreqDivider|s_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[2]~35_combout\ = (\FreqDivider|s_counter\(2) & (\FreqDivider|s_counter[1]~34\ $ (GND))) # (!\FreqDivider|s_counter\(2) & (!\FreqDivider|s_counter[1]~34\ & VCC))
-- \FreqDivider|s_counter[2]~36\ = CARRY((\FreqDivider|s_counter\(2) & !\FreqDivider|s_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(2),
	datad => VCC,
	cin => \FreqDivider|s_counter[1]~34\,
	combout => \FreqDivider|s_counter[2]~35_combout\,
	cout => \FreqDivider|s_counter[2]~36\);

-- Location: FF_X101_Y29_N7
\FreqDivider|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[2]~35_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(2));

-- Location: LCCOMB_X101_Y29_N8
\FreqDivider|s_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[3]~37_combout\ = (\FreqDivider|s_counter\(3) & (!\FreqDivider|s_counter[2]~36\)) # (!\FreqDivider|s_counter\(3) & ((\FreqDivider|s_counter[2]~36\) # (GND)))
-- \FreqDivider|s_counter[3]~38\ = CARRY((!\FreqDivider|s_counter[2]~36\) # (!\FreqDivider|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(3),
	datad => VCC,
	cin => \FreqDivider|s_counter[2]~36\,
	combout => \FreqDivider|s_counter[3]~37_combout\,
	cout => \FreqDivider|s_counter[3]~38\);

-- Location: FF_X101_Y29_N9
\FreqDivider|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[3]~37_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(3));

-- Location: LCCOMB_X101_Y29_N10
\FreqDivider|s_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[4]~39_combout\ = (\FreqDivider|s_counter\(4) & (\FreqDivider|s_counter[3]~38\ $ (GND))) # (!\FreqDivider|s_counter\(4) & (!\FreqDivider|s_counter[3]~38\ & VCC))
-- \FreqDivider|s_counter[4]~40\ = CARRY((\FreqDivider|s_counter\(4) & !\FreqDivider|s_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(4),
	datad => VCC,
	cin => \FreqDivider|s_counter[3]~38\,
	combout => \FreqDivider|s_counter[4]~39_combout\,
	cout => \FreqDivider|s_counter[4]~40\);

-- Location: FF_X101_Y29_N11
\FreqDivider|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[4]~39_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(4));

-- Location: LCCOMB_X101_Y29_N12
\FreqDivider|s_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[5]~41_combout\ = (\FreqDivider|s_counter\(5) & (!\FreqDivider|s_counter[4]~40\)) # (!\FreqDivider|s_counter\(5) & ((\FreqDivider|s_counter[4]~40\) # (GND)))
-- \FreqDivider|s_counter[5]~42\ = CARRY((!\FreqDivider|s_counter[4]~40\) # (!\FreqDivider|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(5),
	datad => VCC,
	cin => \FreqDivider|s_counter[4]~40\,
	combout => \FreqDivider|s_counter[5]~41_combout\,
	cout => \FreqDivider|s_counter[5]~42\);

-- Location: FF_X101_Y29_N13
\FreqDivider|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[5]~41_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(5));

-- Location: LCCOMB_X101_Y29_N14
\FreqDivider|s_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[6]~43_combout\ = (\FreqDivider|s_counter\(6) & (\FreqDivider|s_counter[5]~42\ $ (GND))) # (!\FreqDivider|s_counter\(6) & (!\FreqDivider|s_counter[5]~42\ & VCC))
-- \FreqDivider|s_counter[6]~44\ = CARRY((\FreqDivider|s_counter\(6) & !\FreqDivider|s_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(6),
	datad => VCC,
	cin => \FreqDivider|s_counter[5]~42\,
	combout => \FreqDivider|s_counter[6]~43_combout\,
	cout => \FreqDivider|s_counter[6]~44\);

-- Location: FF_X101_Y29_N15
\FreqDivider|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[6]~43_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(6));

-- Location: LCCOMB_X101_Y29_N16
\FreqDivider|s_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[7]~45_combout\ = (\FreqDivider|s_counter\(7) & (!\FreqDivider|s_counter[6]~44\)) # (!\FreqDivider|s_counter\(7) & ((\FreqDivider|s_counter[6]~44\) # (GND)))
-- \FreqDivider|s_counter[7]~46\ = CARRY((!\FreqDivider|s_counter[6]~44\) # (!\FreqDivider|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(7),
	datad => VCC,
	cin => \FreqDivider|s_counter[6]~44\,
	combout => \FreqDivider|s_counter[7]~45_combout\,
	cout => \FreqDivider|s_counter[7]~46\);

-- Location: FF_X101_Y29_N17
\FreqDivider|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[7]~45_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(7));

-- Location: LCCOMB_X101_Y29_N18
\FreqDivider|s_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[8]~47_combout\ = (\FreqDivider|s_counter\(8) & (\FreqDivider|s_counter[7]~46\ $ (GND))) # (!\FreqDivider|s_counter\(8) & (!\FreqDivider|s_counter[7]~46\ & VCC))
-- \FreqDivider|s_counter[8]~48\ = CARRY((\FreqDivider|s_counter\(8) & !\FreqDivider|s_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(8),
	datad => VCC,
	cin => \FreqDivider|s_counter[7]~46\,
	combout => \FreqDivider|s_counter[8]~47_combout\,
	cout => \FreqDivider|s_counter[8]~48\);

-- Location: FF_X101_Y29_N19
\FreqDivider|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[8]~47_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(8));

-- Location: LCCOMB_X101_Y29_N20
\FreqDivider|s_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[9]~49_combout\ = (\FreqDivider|s_counter\(9) & (!\FreqDivider|s_counter[8]~48\)) # (!\FreqDivider|s_counter\(9) & ((\FreqDivider|s_counter[8]~48\) # (GND)))
-- \FreqDivider|s_counter[9]~50\ = CARRY((!\FreqDivider|s_counter[8]~48\) # (!\FreqDivider|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(9),
	datad => VCC,
	cin => \FreqDivider|s_counter[8]~48\,
	combout => \FreqDivider|s_counter[9]~49_combout\,
	cout => \FreqDivider|s_counter[9]~50\);

-- Location: FF_X101_Y29_N21
\FreqDivider|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[9]~49_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(9));

-- Location: LCCOMB_X101_Y29_N22
\FreqDivider|s_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[10]~51_combout\ = (\FreqDivider|s_counter\(10) & (\FreqDivider|s_counter[9]~50\ $ (GND))) # (!\FreqDivider|s_counter\(10) & (!\FreqDivider|s_counter[9]~50\ & VCC))
-- \FreqDivider|s_counter[10]~52\ = CARRY((\FreqDivider|s_counter\(10) & !\FreqDivider|s_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(10),
	datad => VCC,
	cin => \FreqDivider|s_counter[9]~50\,
	combout => \FreqDivider|s_counter[10]~51_combout\,
	cout => \FreqDivider|s_counter[10]~52\);

-- Location: FF_X101_Y29_N23
\FreqDivider|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[10]~51_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(10));

-- Location: LCCOMB_X101_Y29_N24
\FreqDivider|s_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[11]~53_combout\ = (\FreqDivider|s_counter\(11) & (!\FreqDivider|s_counter[10]~52\)) # (!\FreqDivider|s_counter\(11) & ((\FreqDivider|s_counter[10]~52\) # (GND)))
-- \FreqDivider|s_counter[11]~54\ = CARRY((!\FreqDivider|s_counter[10]~52\) # (!\FreqDivider|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(11),
	datad => VCC,
	cin => \FreqDivider|s_counter[10]~52\,
	combout => \FreqDivider|s_counter[11]~53_combout\,
	cout => \FreqDivider|s_counter[11]~54\);

-- Location: FF_X101_Y29_N25
\FreqDivider|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[11]~53_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(11));

-- Location: LCCOMB_X101_Y29_N26
\FreqDivider|s_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[12]~55_combout\ = (\FreqDivider|s_counter\(12) & (\FreqDivider|s_counter[11]~54\ $ (GND))) # (!\FreqDivider|s_counter\(12) & (!\FreqDivider|s_counter[11]~54\ & VCC))
-- \FreqDivider|s_counter[12]~56\ = CARRY((\FreqDivider|s_counter\(12) & !\FreqDivider|s_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(12),
	datad => VCC,
	cin => \FreqDivider|s_counter[11]~54\,
	combout => \FreqDivider|s_counter[12]~55_combout\,
	cout => \FreqDivider|s_counter[12]~56\);

-- Location: FF_X101_Y29_N27
\FreqDivider|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[12]~55_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(12));

-- Location: LCCOMB_X101_Y29_N28
\FreqDivider|s_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[13]~57_combout\ = (\FreqDivider|s_counter\(13) & (!\FreqDivider|s_counter[12]~56\)) # (!\FreqDivider|s_counter\(13) & ((\FreqDivider|s_counter[12]~56\) # (GND)))
-- \FreqDivider|s_counter[13]~58\ = CARRY((!\FreqDivider|s_counter[12]~56\) # (!\FreqDivider|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(13),
	datad => VCC,
	cin => \FreqDivider|s_counter[12]~56\,
	combout => \FreqDivider|s_counter[13]~57_combout\,
	cout => \FreqDivider|s_counter[13]~58\);

-- Location: FF_X101_Y29_N29
\FreqDivider|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[13]~57_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(13));

-- Location: LCCOMB_X101_Y29_N30
\FreqDivider|s_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[14]~59_combout\ = (\FreqDivider|s_counter\(14) & (\FreqDivider|s_counter[13]~58\ $ (GND))) # (!\FreqDivider|s_counter\(14) & (!\FreqDivider|s_counter[13]~58\ & VCC))
-- \FreqDivider|s_counter[14]~60\ = CARRY((\FreqDivider|s_counter\(14) & !\FreqDivider|s_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(14),
	datad => VCC,
	cin => \FreqDivider|s_counter[13]~58\,
	combout => \FreqDivider|s_counter[14]~59_combout\,
	cout => \FreqDivider|s_counter[14]~60\);

-- Location: FF_X100_Y28_N29
\FreqDivider|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \FreqDivider|s_counter[14]~59_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(14));

-- Location: LCCOMB_X101_Y28_N0
\FreqDivider|s_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[15]~61_combout\ = (\FreqDivider|s_counter\(15) & (!\FreqDivider|s_counter[14]~60\)) # (!\FreqDivider|s_counter\(15) & ((\FreqDivider|s_counter[14]~60\) # (GND)))
-- \FreqDivider|s_counter[15]~62\ = CARRY((!\FreqDivider|s_counter[14]~60\) # (!\FreqDivider|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(15),
	datad => VCC,
	cin => \FreqDivider|s_counter[14]~60\,
	combout => \FreqDivider|s_counter[15]~61_combout\,
	cout => \FreqDivider|s_counter[15]~62\);

-- Location: FF_X101_Y28_N1
\FreqDivider|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[15]~61_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(15));

-- Location: LCCOMB_X101_Y28_N2
\FreqDivider|s_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[16]~63_combout\ = (\FreqDivider|s_counter\(16) & (\FreqDivider|s_counter[15]~62\ $ (GND))) # (!\FreqDivider|s_counter\(16) & (!\FreqDivider|s_counter[15]~62\ & VCC))
-- \FreqDivider|s_counter[16]~64\ = CARRY((\FreqDivider|s_counter\(16) & !\FreqDivider|s_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(16),
	datad => VCC,
	cin => \FreqDivider|s_counter[15]~62\,
	combout => \FreqDivider|s_counter[16]~63_combout\,
	cout => \FreqDivider|s_counter[16]~64\);

-- Location: FF_X101_Y28_N3
\FreqDivider|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[16]~63_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(16));

-- Location: LCCOMB_X101_Y28_N4
\FreqDivider|s_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[17]~65_combout\ = (\FreqDivider|s_counter\(17) & (!\FreqDivider|s_counter[16]~64\)) # (!\FreqDivider|s_counter\(17) & ((\FreqDivider|s_counter[16]~64\) # (GND)))
-- \FreqDivider|s_counter[17]~66\ = CARRY((!\FreqDivider|s_counter[16]~64\) # (!\FreqDivider|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(17),
	datad => VCC,
	cin => \FreqDivider|s_counter[16]~64\,
	combout => \FreqDivider|s_counter[17]~65_combout\,
	cout => \FreqDivider|s_counter[17]~66\);

-- Location: FF_X101_Y28_N5
\FreqDivider|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[17]~65_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(17));

-- Location: LCCOMB_X101_Y28_N6
\FreqDivider|s_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[18]~67_combout\ = (\FreqDivider|s_counter\(18) & (\FreqDivider|s_counter[17]~66\ $ (GND))) # (!\FreqDivider|s_counter\(18) & (!\FreqDivider|s_counter[17]~66\ & VCC))
-- \FreqDivider|s_counter[18]~68\ = CARRY((\FreqDivider|s_counter\(18) & !\FreqDivider|s_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(18),
	datad => VCC,
	cin => \FreqDivider|s_counter[17]~66\,
	combout => \FreqDivider|s_counter[18]~67_combout\,
	cout => \FreqDivider|s_counter[18]~68\);

-- Location: FF_X101_Y28_N7
\FreqDivider|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[18]~67_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(18));

-- Location: LCCOMB_X101_Y28_N8
\FreqDivider|s_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[19]~69_combout\ = (\FreqDivider|s_counter\(19) & (!\FreqDivider|s_counter[18]~68\)) # (!\FreqDivider|s_counter\(19) & ((\FreqDivider|s_counter[18]~68\) # (GND)))
-- \FreqDivider|s_counter[19]~70\ = CARRY((!\FreqDivider|s_counter[18]~68\) # (!\FreqDivider|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(19),
	datad => VCC,
	cin => \FreqDivider|s_counter[18]~68\,
	combout => \FreqDivider|s_counter[19]~69_combout\,
	cout => \FreqDivider|s_counter[19]~70\);

-- Location: FF_X101_Y28_N9
\FreqDivider|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[19]~69_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(19));

-- Location: LCCOMB_X101_Y28_N10
\FreqDivider|s_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[20]~71_combout\ = (\FreqDivider|s_counter\(20) & (\FreqDivider|s_counter[19]~70\ $ (GND))) # (!\FreqDivider|s_counter\(20) & (!\FreqDivider|s_counter[19]~70\ & VCC))
-- \FreqDivider|s_counter[20]~72\ = CARRY((\FreqDivider|s_counter\(20) & !\FreqDivider|s_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(20),
	datad => VCC,
	cin => \FreqDivider|s_counter[19]~70\,
	combout => \FreqDivider|s_counter[20]~71_combout\,
	cout => \FreqDivider|s_counter[20]~72\);

-- Location: FF_X101_Y28_N11
\FreqDivider|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[20]~71_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(20));

-- Location: LCCOMB_X101_Y28_N12
\FreqDivider|s_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[21]~73_combout\ = (\FreqDivider|s_counter\(21) & (!\FreqDivider|s_counter[20]~72\)) # (!\FreqDivider|s_counter\(21) & ((\FreqDivider|s_counter[20]~72\) # (GND)))
-- \FreqDivider|s_counter[21]~74\ = CARRY((!\FreqDivider|s_counter[20]~72\) # (!\FreqDivider|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(21),
	datad => VCC,
	cin => \FreqDivider|s_counter[20]~72\,
	combout => \FreqDivider|s_counter[21]~73_combout\,
	cout => \FreqDivider|s_counter[21]~74\);

-- Location: FF_X101_Y28_N13
\FreqDivider|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[21]~73_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(21));

-- Location: LCCOMB_X101_Y28_N14
\FreqDivider|s_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[22]~75_combout\ = (\FreqDivider|s_counter\(22) & (\FreqDivider|s_counter[21]~74\ $ (GND))) # (!\FreqDivider|s_counter\(22) & (!\FreqDivider|s_counter[21]~74\ & VCC))
-- \FreqDivider|s_counter[22]~76\ = CARRY((\FreqDivider|s_counter\(22) & !\FreqDivider|s_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(22),
	datad => VCC,
	cin => \FreqDivider|s_counter[21]~74\,
	combout => \FreqDivider|s_counter[22]~75_combout\,
	cout => \FreqDivider|s_counter[22]~76\);

-- Location: FF_X101_Y28_N15
\FreqDivider|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[22]~75_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(22));

-- Location: LCCOMB_X101_Y28_N16
\FreqDivider|s_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[23]~77_combout\ = (\FreqDivider|s_counter\(23) & (!\FreqDivider|s_counter[22]~76\)) # (!\FreqDivider|s_counter\(23) & ((\FreqDivider|s_counter[22]~76\) # (GND)))
-- \FreqDivider|s_counter[23]~78\ = CARRY((!\FreqDivider|s_counter[22]~76\) # (!\FreqDivider|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(23),
	datad => VCC,
	cin => \FreqDivider|s_counter[22]~76\,
	combout => \FreqDivider|s_counter[23]~77_combout\,
	cout => \FreqDivider|s_counter[23]~78\);

-- Location: FF_X101_Y28_N17
\FreqDivider|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[23]~77_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(23));

-- Location: LCCOMB_X101_Y28_N18
\FreqDivider|s_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[24]~79_combout\ = (\FreqDivider|s_counter\(24) & (\FreqDivider|s_counter[23]~78\ $ (GND))) # (!\FreqDivider|s_counter\(24) & (!\FreqDivider|s_counter[23]~78\ & VCC))
-- \FreqDivider|s_counter[24]~80\ = CARRY((\FreqDivider|s_counter\(24) & !\FreqDivider|s_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(24),
	datad => VCC,
	cin => \FreqDivider|s_counter[23]~78\,
	combout => \FreqDivider|s_counter[24]~79_combout\,
	cout => \FreqDivider|s_counter[24]~80\);

-- Location: FF_X101_Y28_N19
\FreqDivider|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[24]~79_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(24));

-- Location: LCCOMB_X101_Y28_N20
\FreqDivider|s_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[25]~81_combout\ = (\FreqDivider|s_counter\(25) & (!\FreqDivider|s_counter[24]~80\)) # (!\FreqDivider|s_counter\(25) & ((\FreqDivider|s_counter[24]~80\) # (GND)))
-- \FreqDivider|s_counter[25]~82\ = CARRY((!\FreqDivider|s_counter[24]~80\) # (!\FreqDivider|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(25),
	datad => VCC,
	cin => \FreqDivider|s_counter[24]~80\,
	combout => \FreqDivider|s_counter[25]~81_combout\,
	cout => \FreqDivider|s_counter[25]~82\);

-- Location: FF_X101_Y28_N21
\FreqDivider|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[25]~81_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(25));

-- Location: LCCOMB_X101_Y28_N22
\FreqDivider|s_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[26]~83_combout\ = (\FreqDivider|s_counter\(26) & (\FreqDivider|s_counter[25]~82\ $ (GND))) # (!\FreqDivider|s_counter\(26) & (!\FreqDivider|s_counter[25]~82\ & VCC))
-- \FreqDivider|s_counter[26]~84\ = CARRY((\FreqDivider|s_counter\(26) & !\FreqDivider|s_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(26),
	datad => VCC,
	cin => \FreqDivider|s_counter[25]~82\,
	combout => \FreqDivider|s_counter[26]~83_combout\,
	cout => \FreqDivider|s_counter[26]~84\);

-- Location: FF_X101_Y28_N23
\FreqDivider|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[26]~83_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(26));

-- Location: LCCOMB_X101_Y28_N24
\FreqDivider|s_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[27]~85_combout\ = (\FreqDivider|s_counter\(27) & (!\FreqDivider|s_counter[26]~84\)) # (!\FreqDivider|s_counter\(27) & ((\FreqDivider|s_counter[26]~84\) # (GND)))
-- \FreqDivider|s_counter[27]~86\ = CARRY((!\FreqDivider|s_counter[26]~84\) # (!\FreqDivider|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(27),
	datad => VCC,
	cin => \FreqDivider|s_counter[26]~84\,
	combout => \FreqDivider|s_counter[27]~85_combout\,
	cout => \FreqDivider|s_counter[27]~86\);

-- Location: FF_X101_Y28_N25
\FreqDivider|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[27]~85_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(27));

-- Location: LCCOMB_X101_Y28_N26
\FreqDivider|s_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[28]~87_combout\ = (\FreqDivider|s_counter\(28) & (\FreqDivider|s_counter[27]~86\ $ (GND))) # (!\FreqDivider|s_counter\(28) & (!\FreqDivider|s_counter[27]~86\ & VCC))
-- \FreqDivider|s_counter[28]~88\ = CARRY((\FreqDivider|s_counter\(28) & !\FreqDivider|s_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(28),
	datad => VCC,
	cin => \FreqDivider|s_counter[27]~86\,
	combout => \FreqDivider|s_counter[28]~87_combout\,
	cout => \FreqDivider|s_counter[28]~88\);

-- Location: FF_X101_Y28_N27
\FreqDivider|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[28]~87_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(28));

-- Location: LCCOMB_X101_Y28_N28
\FreqDivider|s_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[29]~89_combout\ = (\FreqDivider|s_counter\(29) & (!\FreqDivider|s_counter[28]~88\)) # (!\FreqDivider|s_counter\(29) & ((\FreqDivider|s_counter[28]~88\) # (GND)))
-- \FreqDivider|s_counter[29]~90\ = CARRY((!\FreqDivider|s_counter[28]~88\) # (!\FreqDivider|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_counter\(29),
	datad => VCC,
	cin => \FreqDivider|s_counter[28]~88\,
	combout => \FreqDivider|s_counter[29]~89_combout\,
	cout => \FreqDivider|s_counter[29]~90\);

-- Location: FF_X101_Y28_N29
\FreqDivider|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[29]~89_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(29));

-- Location: LCCOMB_X101_Y28_N30
\FreqDivider|s_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_counter[30]~91_combout\ = \FreqDivider|s_counter\(30) $ (!\FreqDivider|s_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(30),
	cin => \FreqDivider|s_counter[29]~90\,
	combout => \FreqDivider|s_counter[30]~91_combout\);

-- Location: FF_X101_Y28_N31
\FreqDivider|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_counter[30]~91_combout\,
	sclr => \FreqDivider|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_counter\(30));

-- Location: LCCOMB_X100_Y28_N8
\FreqDivider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~6_combout\ = (!\FreqDivider|s_counter\(14) & (\FreqDivider|s_counter\(15) & (!\FreqDivider|s_counter\(16) & \FreqDivider|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(14),
	datab => \FreqDivider|s_counter\(15),
	datac => \FreqDivider|s_counter\(16),
	datad => \FreqDivider|s_counter\(13),
	combout => \FreqDivider|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y28_N30
\FreqDivider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~7_combout\ = (\FreqDivider|s_counter\(23) & (!\FreqDivider|s_counter\(24) & (!\FreqDivider|s_counter\(20) & \FreqDivider|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(23),
	datab => \FreqDivider|s_counter\(24),
	datac => \FreqDivider|s_counter\(20),
	datad => \FreqDivider|s_counter\(18),
	combout => \FreqDivider|Equal0~7_combout\);

-- Location: LCCOMB_X100_Y28_N18
\FreqDivider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~5_combout\ = (!\FreqDivider|s_counter\(11) & (\FreqDivider|s_counter\(6) & (!\FreqDivider|s_counter\(8) & \FreqDivider|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(11),
	datab => \FreqDivider|s_counter\(6),
	datac => \FreqDivider|s_counter\(8),
	datad => \FreqDivider|s_counter\(9),
	combout => \FreqDivider|Equal0~5_combout\);

-- Location: LCCOMB_X100_Y28_N22
\FreqDivider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~8_combout\ = (\FreqDivider|s_counter\(27) & (\FreqDivider|Equal0~6_combout\ & (\FreqDivider|Equal0~7_combout\ & \FreqDivider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(27),
	datab => \FreqDivider|Equal0~6_combout\,
	datac => \FreqDivider|Equal0~7_combout\,
	datad => \FreqDivider|Equal0~5_combout\,
	combout => \FreqDivider|Equal0~8_combout\);

-- Location: LCCOMB_X100_Y28_N12
\FreqDivider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~2_combout\ = (\FreqDivider|s_counter\(21) & (!\FreqDivider|s_counter\(19) & (\FreqDivider|s_counter\(17) & \FreqDivider|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(21),
	datab => \FreqDivider|s_counter\(19),
	datac => \FreqDivider|s_counter\(17),
	datad => \FreqDivider|s_counter\(12),
	combout => \FreqDivider|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y28_N20
\FreqDivider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~3_combout\ = (\FreqDivider|s_counter\(25) & (\FreqDivider|s_counter\(22) & (\FreqDivider|s_counter\(26) & !\FreqDivider|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(25),
	datab => \FreqDivider|s_counter\(22),
	datac => \FreqDivider|s_counter\(26),
	datad => \FreqDivider|s_counter\(28),
	combout => \FreqDivider|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y28_N14
\FreqDivider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~0_combout\ = (\FreqDivider|s_counter\(0) & (\FreqDivider|s_counter\(2) & (\FreqDivider|s_counter\(1) & \FreqDivider|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(0),
	datab => \FreqDivider|s_counter\(2),
	datac => \FreqDivider|s_counter\(1),
	datad => \FreqDivider|s_counter\(3),
	combout => \FreqDivider|Equal0~0_combout\);

-- Location: LCCOMB_X101_Y29_N0
\FreqDivider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~1_combout\ = (\FreqDivider|s_counter\(4) & (!\FreqDivider|s_counter\(7) & (!\FreqDivider|s_counter\(10) & \FreqDivider|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(4),
	datab => \FreqDivider|s_counter\(7),
	datac => \FreqDivider|s_counter\(10),
	datad => \FreqDivider|s_counter\(5),
	combout => \FreqDivider|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y28_N16
\FreqDivider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~4_combout\ = (\FreqDivider|Equal0~2_combout\ & (\FreqDivider|Equal0~3_combout\ & (\FreqDivider|Equal0~0_combout\ & \FreqDivider|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal0~2_combout\,
	datab => \FreqDivider|Equal0~3_combout\,
	datac => \FreqDivider|Equal0~0_combout\,
	datad => \FreqDivider|Equal0~1_combout\,
	combout => \FreqDivider|Equal0~4_combout\);

-- Location: LCCOMB_X100_Y28_N2
\FreqDivider|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~9_combout\ = (!\FreqDivider|s_counter\(30) & (!\FreqDivider|s_counter\(29) & (\FreqDivider|Equal0~8_combout\ & \FreqDivider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(30),
	datab => \FreqDivider|s_counter\(29),
	datac => \FreqDivider|Equal0~8_combout\,
	datad => \FreqDivider|Equal0~4_combout\,
	combout => \FreqDivider|Equal0~9_combout\);

-- Location: LCCOMB_X102_Y28_N8
\FreqDivider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~2_combout\ = (\FreqDivider|s_counter\(20) & (!\FreqDivider|s_counter\(18) & (!\FreqDivider|s_counter\(23) & \FreqDivider|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(20),
	datab => \FreqDivider|s_counter\(18),
	datac => \FreqDivider|s_counter\(23),
	datad => \FreqDivider|s_counter\(24),
	combout => \FreqDivider|clkOut~2_combout\);

-- Location: LCCOMB_X102_Y28_N30
\FreqDivider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~1_combout\ = (\FreqDivider|s_counter\(16) & (!\FreqDivider|s_counter\(15) & (!\FreqDivider|s_counter\(13) & \FreqDivider|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(16),
	datab => \FreqDivider|s_counter\(15),
	datac => \FreqDivider|s_counter\(13),
	datad => \FreqDivider|s_counter\(14),
	combout => \FreqDivider|clkOut~1_combout\);

-- Location: LCCOMB_X102_Y28_N12
\FreqDivider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~0_combout\ = (!\FreqDivider|s_counter\(6) & (\FreqDivider|s_counter\(8) & (\FreqDivider|s_counter\(11) & !\FreqDivider|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(6),
	datab => \FreqDivider|s_counter\(8),
	datac => \FreqDivider|s_counter\(11),
	datad => \FreqDivider|s_counter\(9),
	combout => \FreqDivider|clkOut~0_combout\);

-- Location: LCCOMB_X102_Y28_N22
\FreqDivider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~3_combout\ = (!\FreqDivider|s_counter\(27) & (\FreqDivider|clkOut~2_combout\ & (\FreqDivider|clkOut~1_combout\ & \FreqDivider|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(27),
	datab => \FreqDivider|clkOut~2_combout\,
	datac => \FreqDivider|clkOut~1_combout\,
	datad => \FreqDivider|clkOut~0_combout\,
	combout => \FreqDivider|clkOut~3_combout\);

-- Location: LCCOMB_X100_Y28_N26
\FreqDivider|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~4_combout\ = (!\FreqDivider|s_counter\(30) & (\FreqDivider|Equal0~4_combout\ & (!\FreqDivider|s_counter\(29) & \FreqDivider|clkOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_counter\(30),
	datab => \FreqDivider|Equal0~4_combout\,
	datac => \FreqDivider|s_counter\(29),
	datad => \FreqDivider|clkOut~3_combout\,
	combout => \FreqDivider|clkOut~4_combout\);

-- Location: LCCOMB_X100_Y28_N4
\FreqDivider|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~5_combout\ = (!\SW[1]~input_o\ & (!\FreqDivider|Equal0~9_combout\ & ((\FreqDivider|clkOut~4_combout\) # (\FreqDivider|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \FreqDivider|Equal0~9_combout\,
	datac => \FreqDivider|clkOut~4_combout\,
	datad => \FreqDivider|clkOut~q\,
	combout => \FreqDivider|clkOut~5_combout\);

-- Location: LCCOMB_X100_Y28_N24
\FreqDivider|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~feeder_combout\ = \FreqDivider|clkOut~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|clkOut~5_combout\,
	combout => \FreqDivider|clkOut~feeder_combout\);

-- Location: FF_X100_Y28_N25
\FreqDivider|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|clkOut~q\);

-- Location: CLKCTRL_G8
\FreqDivider|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FreqDivider|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FreqDivider|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X99_Y28_N18
\SeqDetector|PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetector|PS~8_combout\ = (!\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SeqDetector|PS~8_combout\);

-- Location: FF_X99_Y28_N19
\SeqDetector|PS.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \SeqDetector|PS~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDetector|PS.B~q\);

-- Location: LCCOMB_X99_Y28_N12
\SeqDetector|PS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetector|PS~7_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \SeqDetector|PS.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SeqDetector|PS.B~q\,
	combout => \SeqDetector|PS~7_combout\);

-- Location: FF_X99_Y28_N13
\SeqDetector|PS.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \SeqDetector|PS~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDetector|PS.C~q\);

-- Location: LCCOMB_X99_Y28_N28
\SeqDetector|PS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetector|PS~6_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \SeqDetector|PS.C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SeqDetector|PS.C~q\,
	combout => \SeqDetector|PS~6_combout\);

-- Location: FF_X99_Y28_N29
\SeqDetector|PS.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \SeqDetector|PS~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqDetector|PS.D~q\);

-- Location: LCCOMB_X99_Y28_N10
\SeqDetector|yOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqDetector|yOut~1_combout\ = (\SeqDetector|PS.D~q\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SeqDetector|PS.D~q\,
	datad => \SW[0]~input_o\,
	combout => \SeqDetector|yOut~1_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


