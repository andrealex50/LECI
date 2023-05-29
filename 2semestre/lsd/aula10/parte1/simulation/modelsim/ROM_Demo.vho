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

-- DATE "05/29/2023 15:08:12"

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

ENTITY 	ROM_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0)
	);
END ROM_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst3|s_counter[0]~31_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~9_combout\ : std_logic;
SIGNAL \inst3|process_0~0_combout\ : std_logic;
SIGNAL \inst3|s_counter[0]~32\ : std_logic;
SIGNAL \inst3|s_counter[1]~33_combout\ : std_logic;
SIGNAL \inst3|s_counter[1]~34\ : std_logic;
SIGNAL \inst3|s_counter[2]~35_combout\ : std_logic;
SIGNAL \inst3|s_counter[2]~36\ : std_logic;
SIGNAL \inst3|s_counter[3]~37_combout\ : std_logic;
SIGNAL \inst3|s_counter[3]~38\ : std_logic;
SIGNAL \inst3|s_counter[4]~39_combout\ : std_logic;
SIGNAL \inst3|s_counter[4]~40\ : std_logic;
SIGNAL \inst3|s_counter[5]~41_combout\ : std_logic;
SIGNAL \inst3|s_counter[5]~42\ : std_logic;
SIGNAL \inst3|s_counter[6]~43_combout\ : std_logic;
SIGNAL \inst3|s_counter[6]~44\ : std_logic;
SIGNAL \inst3|s_counter[7]~45_combout\ : std_logic;
SIGNAL \inst3|s_counter[7]~46\ : std_logic;
SIGNAL \inst3|s_counter[8]~47_combout\ : std_logic;
SIGNAL \inst3|s_counter[8]~48\ : std_logic;
SIGNAL \inst3|s_counter[9]~49_combout\ : std_logic;
SIGNAL \inst3|s_counter[9]~50\ : std_logic;
SIGNAL \inst3|s_counter[10]~51_combout\ : std_logic;
SIGNAL \inst3|s_counter[10]~52\ : std_logic;
SIGNAL \inst3|s_counter[11]~53_combout\ : std_logic;
SIGNAL \inst3|s_counter[11]~54\ : std_logic;
SIGNAL \inst3|s_counter[12]~55_combout\ : std_logic;
SIGNAL \inst3|s_counter[12]~56\ : std_logic;
SIGNAL \inst3|s_counter[13]~57_combout\ : std_logic;
SIGNAL \inst3|s_counter[13]~58\ : std_logic;
SIGNAL \inst3|s_counter[14]~59_combout\ : std_logic;
SIGNAL \inst3|s_counter[14]~60\ : std_logic;
SIGNAL \inst3|s_counter[15]~61_combout\ : std_logic;
SIGNAL \inst3|s_counter[15]~62\ : std_logic;
SIGNAL \inst3|s_counter[16]~63_combout\ : std_logic;
SIGNAL \inst3|s_counter[16]~64\ : std_logic;
SIGNAL \inst3|s_counter[17]~65_combout\ : std_logic;
SIGNAL \inst3|s_counter[17]~66\ : std_logic;
SIGNAL \inst3|s_counter[18]~67_combout\ : std_logic;
SIGNAL \inst3|s_counter[18]~68\ : std_logic;
SIGNAL \inst3|s_counter[19]~69_combout\ : std_logic;
SIGNAL \inst3|s_counter[19]~70\ : std_logic;
SIGNAL \inst3|s_counter[20]~71_combout\ : std_logic;
SIGNAL \inst3|s_counter[20]~72\ : std_logic;
SIGNAL \inst3|s_counter[21]~73_combout\ : std_logic;
SIGNAL \inst3|s_counter[21]~74\ : std_logic;
SIGNAL \inst3|s_counter[22]~75_combout\ : std_logic;
SIGNAL \inst3|s_counter[22]~76\ : std_logic;
SIGNAL \inst3|s_counter[23]~77_combout\ : std_logic;
SIGNAL \inst3|s_counter[23]~78\ : std_logic;
SIGNAL \inst3|s_counter[24]~79_combout\ : std_logic;
SIGNAL \inst3|s_counter[24]~80\ : std_logic;
SIGNAL \inst3|s_counter[25]~81_combout\ : std_logic;
SIGNAL \inst3|s_counter[25]~82\ : std_logic;
SIGNAL \inst3|s_counter[26]~83_combout\ : std_logic;
SIGNAL \inst3|s_counter[26]~84\ : std_logic;
SIGNAL \inst3|s_counter[27]~85_combout\ : std_logic;
SIGNAL \inst3|s_counter[27]~86\ : std_logic;
SIGNAL \inst3|s_counter[28]~87_combout\ : std_logic;
SIGNAL \inst3|s_counter[28]~88\ : std_logic;
SIGNAL \inst3|s_counter[29]~89_combout\ : std_logic;
SIGNAL \inst3|s_counter[29]~90\ : std_logic;
SIGNAL \inst3|s_counter[30]~91_combout\ : std_logic;
SIGNAL \inst3|clkOut~2_combout\ : std_logic;
SIGNAL \inst3|clkOut~1_combout\ : std_logic;
SIGNAL \inst3|clkOut~0_combout\ : std_logic;
SIGNAL \inst3|clkOut~3_combout\ : std_logic;
SIGNAL \inst3|clkOut~4_combout\ : std_logic;
SIGNAL \inst3|clkOut~5_combout\ : std_logic;
SIGNAL \inst3|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst3|clkOut~q\ : std_logic;
SIGNAL \inst3|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst|s_cntVal~5_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_cntVal[2]~2_combout\ : std_logic;
SIGNAL \inst|s_cntVal~4_combout\ : std_logic;
SIGNAL \inst|s_cntVal~3_combout\ : std_logic;
SIGNAL \inst|s_cntVal~0_combout\ : std_logic;
SIGNAL \inst|s_cntVal~1_combout\ : std_logic;
SIGNAL \inst3|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst|s_cntVal\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst3|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntVal\(3),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntVal\(2),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntVal\(1),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntVal\(0),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntVal\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntVal\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntVal\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntVal\(0),
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

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X109_Y54_N2
\inst3|s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[0]~31_combout\ = \inst3|s_counter\(0) $ (VCC)
-- \inst3|s_counter[0]~32\ = CARRY(\inst3|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(0),
	datad => VCC,
	combout => \inst3|s_counter[0]~31_combout\,
	cout => \inst3|s_counter[0]~32\);

-- Location: LCCOMB_X110_Y53_N8
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (\inst3|s_counter\(23) & (!\inst3|s_counter\(24) & (\inst3|s_counter\(18) & !\inst3|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(23),
	datab => \inst3|s_counter\(24),
	datac => \inst3|s_counter\(18),
	datad => \inst3|s_counter\(20),
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y53_N30
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (!\inst3|s_counter\(16) & (!\inst3|s_counter\(14) & (\inst3|s_counter\(13) & \inst3|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(16),
	datab => \inst3|s_counter\(14),
	datac => \inst3|s_counter\(13),
	datad => \inst3|s_counter\(15),
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y53_N12
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (\inst3|s_counter\(6) & (\inst3|s_counter\(9) & (!\inst3|s_counter\(11) & !\inst3|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(6),
	datab => \inst3|s_counter\(9),
	datac => \inst3|s_counter\(11),
	datad => \inst3|s_counter\(8),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y53_N26
\inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = (\inst3|s_counter\(27) & (\inst3|Equal0~7_combout\ & (\inst3|Equal0~6_combout\ & \inst3|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(27),
	datab => \inst3|Equal0~7_combout\,
	datac => \inst3|Equal0~6_combout\,
	datad => \inst3|Equal0~5_combout\,
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X110_Y53_N10
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (\inst3|s_counter\(22) & (\inst3|s_counter\(25) & (!\inst3|s_counter\(28) & \inst3|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(22),
	datab => \inst3|s_counter\(25),
	datac => \inst3|s_counter\(28),
	datad => \inst3|s_counter\(26),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y54_N0
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|s_counter\(5) & (!\inst3|s_counter\(7) & (!\inst3|s_counter\(10) & \inst3|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(5),
	datab => \inst3|s_counter\(7),
	datac => \inst3|s_counter\(10),
	datad => \inst3|s_counter\(4),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y53_N22
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|s_counter\(1) & (\inst3|s_counter\(2) & (\inst3|s_counter\(3) & \inst3|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(1),
	datab => \inst3|s_counter\(2),
	datac => \inst3|s_counter\(3),
	datad => \inst3|s_counter\(0),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y53_N6
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|s_counter\(19) & (\inst3|s_counter\(17) & (\inst3|s_counter\(12) & \inst3|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(19),
	datab => \inst3|s_counter\(17),
	datac => \inst3|s_counter\(12),
	datad => \inst3|s_counter\(21),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X110_Y53_N20
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~3_combout\ & (\inst3|Equal0~1_combout\ & (\inst3|Equal0~0_combout\ & \inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~3_combout\,
	datab => \inst3|Equal0~1_combout\,
	datac => \inst3|Equal0~0_combout\,
	datad => \inst3|Equal0~2_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X110_Y53_N2
\inst3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~9_combout\ = (!\inst3|s_counter\(30) & (!\inst3|s_counter\(29) & (\inst3|Equal0~8_combout\ & \inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(30),
	datab => \inst3|s_counter\(29),
	datac => \inst3|Equal0~8_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|Equal0~9_combout\);

-- Location: LCCOMB_X110_Y53_N0
\inst3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|process_0~0_combout\ = (\inst3|Equal0~9_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \inst3|Equal0~9_combout\,
	combout => \inst3|process_0~0_combout\);

-- Location: FF_X109_Y54_N3
\inst3|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[0]~31_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(0));

-- Location: LCCOMB_X109_Y54_N4
\inst3|s_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[1]~33_combout\ = (\inst3|s_counter\(1) & (!\inst3|s_counter[0]~32\)) # (!\inst3|s_counter\(1) & ((\inst3|s_counter[0]~32\) # (GND)))
-- \inst3|s_counter[1]~34\ = CARRY((!\inst3|s_counter[0]~32\) # (!\inst3|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(1),
	datad => VCC,
	cin => \inst3|s_counter[0]~32\,
	combout => \inst3|s_counter[1]~33_combout\,
	cout => \inst3|s_counter[1]~34\);

-- Location: FF_X109_Y54_N5
\inst3|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[1]~33_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(1));

-- Location: LCCOMB_X109_Y54_N6
\inst3|s_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[2]~35_combout\ = (\inst3|s_counter\(2) & (\inst3|s_counter[1]~34\ $ (GND))) # (!\inst3|s_counter\(2) & (!\inst3|s_counter[1]~34\ & VCC))
-- \inst3|s_counter[2]~36\ = CARRY((\inst3|s_counter\(2) & !\inst3|s_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(2),
	datad => VCC,
	cin => \inst3|s_counter[1]~34\,
	combout => \inst3|s_counter[2]~35_combout\,
	cout => \inst3|s_counter[2]~36\);

-- Location: FF_X109_Y54_N7
\inst3|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[2]~35_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(2));

-- Location: LCCOMB_X109_Y54_N8
\inst3|s_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[3]~37_combout\ = (\inst3|s_counter\(3) & (!\inst3|s_counter[2]~36\)) # (!\inst3|s_counter\(3) & ((\inst3|s_counter[2]~36\) # (GND)))
-- \inst3|s_counter[3]~38\ = CARRY((!\inst3|s_counter[2]~36\) # (!\inst3|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(3),
	datad => VCC,
	cin => \inst3|s_counter[2]~36\,
	combout => \inst3|s_counter[3]~37_combout\,
	cout => \inst3|s_counter[3]~38\);

-- Location: FF_X109_Y54_N9
\inst3|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[3]~37_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(3));

-- Location: LCCOMB_X109_Y54_N10
\inst3|s_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[4]~39_combout\ = (\inst3|s_counter\(4) & (\inst3|s_counter[3]~38\ $ (GND))) # (!\inst3|s_counter\(4) & (!\inst3|s_counter[3]~38\ & VCC))
-- \inst3|s_counter[4]~40\ = CARRY((\inst3|s_counter\(4) & !\inst3|s_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(4),
	datad => VCC,
	cin => \inst3|s_counter[3]~38\,
	combout => \inst3|s_counter[4]~39_combout\,
	cout => \inst3|s_counter[4]~40\);

-- Location: FF_X109_Y54_N11
\inst3|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[4]~39_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(4));

-- Location: LCCOMB_X109_Y54_N12
\inst3|s_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[5]~41_combout\ = (\inst3|s_counter\(5) & (!\inst3|s_counter[4]~40\)) # (!\inst3|s_counter\(5) & ((\inst3|s_counter[4]~40\) # (GND)))
-- \inst3|s_counter[5]~42\ = CARRY((!\inst3|s_counter[4]~40\) # (!\inst3|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(5),
	datad => VCC,
	cin => \inst3|s_counter[4]~40\,
	combout => \inst3|s_counter[5]~41_combout\,
	cout => \inst3|s_counter[5]~42\);

-- Location: FF_X109_Y54_N13
\inst3|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[5]~41_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(5));

-- Location: LCCOMB_X109_Y54_N14
\inst3|s_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[6]~43_combout\ = (\inst3|s_counter\(6) & (\inst3|s_counter[5]~42\ $ (GND))) # (!\inst3|s_counter\(6) & (!\inst3|s_counter[5]~42\ & VCC))
-- \inst3|s_counter[6]~44\ = CARRY((\inst3|s_counter\(6) & !\inst3|s_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(6),
	datad => VCC,
	cin => \inst3|s_counter[5]~42\,
	combout => \inst3|s_counter[6]~43_combout\,
	cout => \inst3|s_counter[6]~44\);

-- Location: FF_X109_Y54_N15
\inst3|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[6]~43_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(6));

-- Location: LCCOMB_X109_Y54_N16
\inst3|s_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[7]~45_combout\ = (\inst3|s_counter\(7) & (!\inst3|s_counter[6]~44\)) # (!\inst3|s_counter\(7) & ((\inst3|s_counter[6]~44\) # (GND)))
-- \inst3|s_counter[7]~46\ = CARRY((!\inst3|s_counter[6]~44\) # (!\inst3|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(7),
	datad => VCC,
	cin => \inst3|s_counter[6]~44\,
	combout => \inst3|s_counter[7]~45_combout\,
	cout => \inst3|s_counter[7]~46\);

-- Location: FF_X109_Y54_N17
\inst3|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[7]~45_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(7));

-- Location: LCCOMB_X109_Y54_N18
\inst3|s_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[8]~47_combout\ = (\inst3|s_counter\(8) & (\inst3|s_counter[7]~46\ $ (GND))) # (!\inst3|s_counter\(8) & (!\inst3|s_counter[7]~46\ & VCC))
-- \inst3|s_counter[8]~48\ = CARRY((\inst3|s_counter\(8) & !\inst3|s_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(8),
	datad => VCC,
	cin => \inst3|s_counter[7]~46\,
	combout => \inst3|s_counter[8]~47_combout\,
	cout => \inst3|s_counter[8]~48\);

-- Location: FF_X109_Y54_N19
\inst3|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[8]~47_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(8));

-- Location: LCCOMB_X109_Y54_N20
\inst3|s_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[9]~49_combout\ = (\inst3|s_counter\(9) & (!\inst3|s_counter[8]~48\)) # (!\inst3|s_counter\(9) & ((\inst3|s_counter[8]~48\) # (GND)))
-- \inst3|s_counter[9]~50\ = CARRY((!\inst3|s_counter[8]~48\) # (!\inst3|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(9),
	datad => VCC,
	cin => \inst3|s_counter[8]~48\,
	combout => \inst3|s_counter[9]~49_combout\,
	cout => \inst3|s_counter[9]~50\);

-- Location: FF_X109_Y54_N21
\inst3|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[9]~49_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(9));

-- Location: LCCOMB_X109_Y54_N22
\inst3|s_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[10]~51_combout\ = (\inst3|s_counter\(10) & (\inst3|s_counter[9]~50\ $ (GND))) # (!\inst3|s_counter\(10) & (!\inst3|s_counter[9]~50\ & VCC))
-- \inst3|s_counter[10]~52\ = CARRY((\inst3|s_counter\(10) & !\inst3|s_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(10),
	datad => VCC,
	cin => \inst3|s_counter[9]~50\,
	combout => \inst3|s_counter[10]~51_combout\,
	cout => \inst3|s_counter[10]~52\);

-- Location: FF_X109_Y54_N23
\inst3|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[10]~51_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(10));

-- Location: LCCOMB_X109_Y54_N24
\inst3|s_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[11]~53_combout\ = (\inst3|s_counter\(11) & (!\inst3|s_counter[10]~52\)) # (!\inst3|s_counter\(11) & ((\inst3|s_counter[10]~52\) # (GND)))
-- \inst3|s_counter[11]~54\ = CARRY((!\inst3|s_counter[10]~52\) # (!\inst3|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(11),
	datad => VCC,
	cin => \inst3|s_counter[10]~52\,
	combout => \inst3|s_counter[11]~53_combout\,
	cout => \inst3|s_counter[11]~54\);

-- Location: FF_X109_Y54_N25
\inst3|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[11]~53_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(11));

-- Location: LCCOMB_X109_Y54_N26
\inst3|s_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[12]~55_combout\ = (\inst3|s_counter\(12) & (\inst3|s_counter[11]~54\ $ (GND))) # (!\inst3|s_counter\(12) & (!\inst3|s_counter[11]~54\ & VCC))
-- \inst3|s_counter[12]~56\ = CARRY((\inst3|s_counter\(12) & !\inst3|s_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(12),
	datad => VCC,
	cin => \inst3|s_counter[11]~54\,
	combout => \inst3|s_counter[12]~55_combout\,
	cout => \inst3|s_counter[12]~56\);

-- Location: FF_X109_Y54_N27
\inst3|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[12]~55_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(12));

-- Location: LCCOMB_X109_Y54_N28
\inst3|s_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[13]~57_combout\ = (\inst3|s_counter\(13) & (!\inst3|s_counter[12]~56\)) # (!\inst3|s_counter\(13) & ((\inst3|s_counter[12]~56\) # (GND)))
-- \inst3|s_counter[13]~58\ = CARRY((!\inst3|s_counter[12]~56\) # (!\inst3|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(13),
	datad => VCC,
	cin => \inst3|s_counter[12]~56\,
	combout => \inst3|s_counter[13]~57_combout\,
	cout => \inst3|s_counter[13]~58\);

-- Location: FF_X109_Y54_N29
\inst3|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[13]~57_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(13));

-- Location: LCCOMB_X109_Y54_N30
\inst3|s_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[14]~59_combout\ = (\inst3|s_counter\(14) & (\inst3|s_counter[13]~58\ $ (GND))) # (!\inst3|s_counter\(14) & (!\inst3|s_counter[13]~58\ & VCC))
-- \inst3|s_counter[14]~60\ = CARRY((\inst3|s_counter\(14) & !\inst3|s_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(14),
	datad => VCC,
	cin => \inst3|s_counter[13]~58\,
	combout => \inst3|s_counter[14]~59_combout\,
	cout => \inst3|s_counter[14]~60\);

-- Location: FF_X110_Y53_N15
\inst3|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_counter[14]~59_combout\,
	sclr => \inst3|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(14));

-- Location: LCCOMB_X109_Y53_N0
\inst3|s_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[15]~61_combout\ = (\inst3|s_counter\(15) & (!\inst3|s_counter[14]~60\)) # (!\inst3|s_counter\(15) & ((\inst3|s_counter[14]~60\) # (GND)))
-- \inst3|s_counter[15]~62\ = CARRY((!\inst3|s_counter[14]~60\) # (!\inst3|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(15),
	datad => VCC,
	cin => \inst3|s_counter[14]~60\,
	combout => \inst3|s_counter[15]~61_combout\,
	cout => \inst3|s_counter[15]~62\);

-- Location: FF_X109_Y53_N1
\inst3|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[15]~61_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(15));

-- Location: LCCOMB_X109_Y53_N2
\inst3|s_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[16]~63_combout\ = (\inst3|s_counter\(16) & (\inst3|s_counter[15]~62\ $ (GND))) # (!\inst3|s_counter\(16) & (!\inst3|s_counter[15]~62\ & VCC))
-- \inst3|s_counter[16]~64\ = CARRY((\inst3|s_counter\(16) & !\inst3|s_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(16),
	datad => VCC,
	cin => \inst3|s_counter[15]~62\,
	combout => \inst3|s_counter[16]~63_combout\,
	cout => \inst3|s_counter[16]~64\);

-- Location: FF_X109_Y53_N3
\inst3|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[16]~63_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(16));

-- Location: LCCOMB_X109_Y53_N4
\inst3|s_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[17]~65_combout\ = (\inst3|s_counter\(17) & (!\inst3|s_counter[16]~64\)) # (!\inst3|s_counter\(17) & ((\inst3|s_counter[16]~64\) # (GND)))
-- \inst3|s_counter[17]~66\ = CARRY((!\inst3|s_counter[16]~64\) # (!\inst3|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(17),
	datad => VCC,
	cin => \inst3|s_counter[16]~64\,
	combout => \inst3|s_counter[17]~65_combout\,
	cout => \inst3|s_counter[17]~66\);

-- Location: FF_X109_Y53_N5
\inst3|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[17]~65_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(17));

-- Location: LCCOMB_X109_Y53_N6
\inst3|s_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[18]~67_combout\ = (\inst3|s_counter\(18) & (\inst3|s_counter[17]~66\ $ (GND))) # (!\inst3|s_counter\(18) & (!\inst3|s_counter[17]~66\ & VCC))
-- \inst3|s_counter[18]~68\ = CARRY((\inst3|s_counter\(18) & !\inst3|s_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(18),
	datad => VCC,
	cin => \inst3|s_counter[17]~66\,
	combout => \inst3|s_counter[18]~67_combout\,
	cout => \inst3|s_counter[18]~68\);

-- Location: FF_X109_Y53_N7
\inst3|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[18]~67_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(18));

-- Location: LCCOMB_X109_Y53_N8
\inst3|s_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[19]~69_combout\ = (\inst3|s_counter\(19) & (!\inst3|s_counter[18]~68\)) # (!\inst3|s_counter\(19) & ((\inst3|s_counter[18]~68\) # (GND)))
-- \inst3|s_counter[19]~70\ = CARRY((!\inst3|s_counter[18]~68\) # (!\inst3|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(19),
	datad => VCC,
	cin => \inst3|s_counter[18]~68\,
	combout => \inst3|s_counter[19]~69_combout\,
	cout => \inst3|s_counter[19]~70\);

-- Location: FF_X109_Y53_N9
\inst3|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[19]~69_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(19));

-- Location: LCCOMB_X109_Y53_N10
\inst3|s_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[20]~71_combout\ = (\inst3|s_counter\(20) & (\inst3|s_counter[19]~70\ $ (GND))) # (!\inst3|s_counter\(20) & (!\inst3|s_counter[19]~70\ & VCC))
-- \inst3|s_counter[20]~72\ = CARRY((\inst3|s_counter\(20) & !\inst3|s_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(20),
	datad => VCC,
	cin => \inst3|s_counter[19]~70\,
	combout => \inst3|s_counter[20]~71_combout\,
	cout => \inst3|s_counter[20]~72\);

-- Location: FF_X109_Y53_N11
\inst3|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[20]~71_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(20));

-- Location: LCCOMB_X109_Y53_N12
\inst3|s_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[21]~73_combout\ = (\inst3|s_counter\(21) & (!\inst3|s_counter[20]~72\)) # (!\inst3|s_counter\(21) & ((\inst3|s_counter[20]~72\) # (GND)))
-- \inst3|s_counter[21]~74\ = CARRY((!\inst3|s_counter[20]~72\) # (!\inst3|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(21),
	datad => VCC,
	cin => \inst3|s_counter[20]~72\,
	combout => \inst3|s_counter[21]~73_combout\,
	cout => \inst3|s_counter[21]~74\);

-- Location: FF_X109_Y53_N13
\inst3|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[21]~73_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(21));

-- Location: LCCOMB_X109_Y53_N14
\inst3|s_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[22]~75_combout\ = (\inst3|s_counter\(22) & (\inst3|s_counter[21]~74\ $ (GND))) # (!\inst3|s_counter\(22) & (!\inst3|s_counter[21]~74\ & VCC))
-- \inst3|s_counter[22]~76\ = CARRY((\inst3|s_counter\(22) & !\inst3|s_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(22),
	datad => VCC,
	cin => \inst3|s_counter[21]~74\,
	combout => \inst3|s_counter[22]~75_combout\,
	cout => \inst3|s_counter[22]~76\);

-- Location: FF_X109_Y53_N15
\inst3|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[22]~75_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(22));

-- Location: LCCOMB_X109_Y53_N16
\inst3|s_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[23]~77_combout\ = (\inst3|s_counter\(23) & (!\inst3|s_counter[22]~76\)) # (!\inst3|s_counter\(23) & ((\inst3|s_counter[22]~76\) # (GND)))
-- \inst3|s_counter[23]~78\ = CARRY((!\inst3|s_counter[22]~76\) # (!\inst3|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(23),
	datad => VCC,
	cin => \inst3|s_counter[22]~76\,
	combout => \inst3|s_counter[23]~77_combout\,
	cout => \inst3|s_counter[23]~78\);

-- Location: FF_X109_Y53_N17
\inst3|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[23]~77_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(23));

-- Location: LCCOMB_X109_Y53_N18
\inst3|s_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[24]~79_combout\ = (\inst3|s_counter\(24) & (\inst3|s_counter[23]~78\ $ (GND))) # (!\inst3|s_counter\(24) & (!\inst3|s_counter[23]~78\ & VCC))
-- \inst3|s_counter[24]~80\ = CARRY((\inst3|s_counter\(24) & !\inst3|s_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(24),
	datad => VCC,
	cin => \inst3|s_counter[23]~78\,
	combout => \inst3|s_counter[24]~79_combout\,
	cout => \inst3|s_counter[24]~80\);

-- Location: FF_X109_Y53_N19
\inst3|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[24]~79_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(24));

-- Location: LCCOMB_X109_Y53_N20
\inst3|s_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[25]~81_combout\ = (\inst3|s_counter\(25) & (!\inst3|s_counter[24]~80\)) # (!\inst3|s_counter\(25) & ((\inst3|s_counter[24]~80\) # (GND)))
-- \inst3|s_counter[25]~82\ = CARRY((!\inst3|s_counter[24]~80\) # (!\inst3|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(25),
	datad => VCC,
	cin => \inst3|s_counter[24]~80\,
	combout => \inst3|s_counter[25]~81_combout\,
	cout => \inst3|s_counter[25]~82\);

-- Location: FF_X109_Y53_N21
\inst3|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[25]~81_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(25));

-- Location: LCCOMB_X109_Y53_N22
\inst3|s_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[26]~83_combout\ = (\inst3|s_counter\(26) & (\inst3|s_counter[25]~82\ $ (GND))) # (!\inst3|s_counter\(26) & (!\inst3|s_counter[25]~82\ & VCC))
-- \inst3|s_counter[26]~84\ = CARRY((\inst3|s_counter\(26) & !\inst3|s_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(26),
	datad => VCC,
	cin => \inst3|s_counter[25]~82\,
	combout => \inst3|s_counter[26]~83_combout\,
	cout => \inst3|s_counter[26]~84\);

-- Location: FF_X109_Y53_N23
\inst3|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[26]~83_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(26));

-- Location: LCCOMB_X109_Y53_N24
\inst3|s_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[27]~85_combout\ = (\inst3|s_counter\(27) & (!\inst3|s_counter[26]~84\)) # (!\inst3|s_counter\(27) & ((\inst3|s_counter[26]~84\) # (GND)))
-- \inst3|s_counter[27]~86\ = CARRY((!\inst3|s_counter[26]~84\) # (!\inst3|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(27),
	datad => VCC,
	cin => \inst3|s_counter[26]~84\,
	combout => \inst3|s_counter[27]~85_combout\,
	cout => \inst3|s_counter[27]~86\);

-- Location: FF_X109_Y53_N25
\inst3|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[27]~85_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(27));

-- Location: LCCOMB_X109_Y53_N26
\inst3|s_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[28]~87_combout\ = (\inst3|s_counter\(28) & (\inst3|s_counter[27]~86\ $ (GND))) # (!\inst3|s_counter\(28) & (!\inst3|s_counter[27]~86\ & VCC))
-- \inst3|s_counter[28]~88\ = CARRY((\inst3|s_counter\(28) & !\inst3|s_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(28),
	datad => VCC,
	cin => \inst3|s_counter[27]~86\,
	combout => \inst3|s_counter[28]~87_combout\,
	cout => \inst3|s_counter[28]~88\);

-- Location: FF_X109_Y53_N27
\inst3|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[28]~87_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(28));

-- Location: LCCOMB_X109_Y53_N28
\inst3|s_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[29]~89_combout\ = (\inst3|s_counter\(29) & (!\inst3|s_counter[28]~88\)) # (!\inst3|s_counter\(29) & ((\inst3|s_counter[28]~88\) # (GND)))
-- \inst3|s_counter[29]~90\ = CARRY((!\inst3|s_counter[28]~88\) # (!\inst3|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(29),
	datad => VCC,
	cin => \inst3|s_counter[28]~88\,
	combout => \inst3|s_counter[29]~89_combout\,
	cout => \inst3|s_counter[29]~90\);

-- Location: FF_X109_Y53_N29
\inst3|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[29]~89_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(29));

-- Location: LCCOMB_X109_Y53_N30
\inst3|s_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[30]~91_combout\ = \inst3|s_counter\(30) $ (!\inst3|s_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(30),
	cin => \inst3|s_counter[29]~90\,
	combout => \inst3|s_counter[30]~91_combout\);

-- Location: FF_X109_Y53_N31
\inst3|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[30]~91_combout\,
	sclr => \inst3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(30));

-- Location: LCCOMB_X110_Y53_N28
\inst3|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~2_combout\ = (!\inst3|s_counter\(23) & (\inst3|s_counter\(24) & (!\inst3|s_counter\(18) & \inst3|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(23),
	datab => \inst3|s_counter\(24),
	datac => \inst3|s_counter\(18),
	datad => \inst3|s_counter\(20),
	combout => \inst3|clkOut~2_combout\);

-- Location: LCCOMB_X110_Y53_N14
\inst3|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~1_combout\ = (!\inst3|s_counter\(13) & (\inst3|s_counter\(16) & (\inst3|s_counter\(14) & !\inst3|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(13),
	datab => \inst3|s_counter\(16),
	datac => \inst3|s_counter\(14),
	datad => \inst3|s_counter\(15),
	combout => \inst3|clkOut~1_combout\);

-- Location: LCCOMB_X110_Y54_N28
\inst3|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~0_combout\ = (!\inst3|s_counter\(6) & (\inst3|s_counter\(8) & (!\inst3|s_counter\(9) & \inst3|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(6),
	datab => \inst3|s_counter\(8),
	datac => \inst3|s_counter\(9),
	datad => \inst3|s_counter\(11),
	combout => \inst3|clkOut~0_combout\);

-- Location: LCCOMB_X110_Y53_N18
\inst3|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~3_combout\ = (!\inst3|s_counter\(27) & (\inst3|clkOut~2_combout\ & (\inst3|clkOut~1_combout\ & \inst3|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(27),
	datab => \inst3|clkOut~2_combout\,
	datac => \inst3|clkOut~1_combout\,
	datad => \inst3|clkOut~0_combout\,
	combout => \inst3|clkOut~3_combout\);

-- Location: LCCOMB_X110_Y53_N4
\inst3|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~4_combout\ = (!\inst3|s_counter\(30) & (\inst3|Equal0~4_combout\ & (!\inst3|s_counter\(29) & \inst3|clkOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(30),
	datab => \inst3|Equal0~4_combout\,
	datac => \inst3|s_counter\(29),
	datad => \inst3|clkOut~3_combout\,
	combout => \inst3|clkOut~4_combout\);

-- Location: LCCOMB_X110_Y53_N24
\inst3|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~5_combout\ = (\KEY[0]~input_o\ & (!\inst3|Equal0~9_combout\ & ((\inst3|clkOut~q\) # (\inst3|clkOut~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clkOut~q\,
	datab => \KEY[0]~input_o\,
	datac => \inst3|clkOut~4_combout\,
	datad => \inst3|Equal0~9_combout\,
	combout => \inst3|clkOut~5_combout\);

-- Location: LCCOMB_X110_Y53_N16
\inst3|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkOut~feeder_combout\ = \inst3|clkOut~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|clkOut~5_combout\,
	combout => \inst3|clkOut~feeder_combout\);

-- Location: FF_X110_Y53_N17
\inst3|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clkOut~q\);

-- Location: CLKCTRL_G7
\inst3|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X96_Y69_N18
\inst|s_cntVal~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntVal~5_combout\ = (\KEY[0]~input_o\ & !\inst|s_cntVal\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst|s_cntVal\(0),
	combout => \inst|s_cntVal~5_combout\);

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

-- Location: LCCOMB_X96_Y69_N30
\inst|s_cntVal[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntVal[2]~2_combout\ = (\SW[0]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst|s_cntVal[2]~2_combout\);

-- Location: FF_X96_Y69_N19
\inst|s_cntVal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst|s_cntVal~5_combout\,
	ena => \inst|s_cntVal[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntVal\(0));

-- Location: LCCOMB_X96_Y69_N28
\inst|s_cntVal~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntVal~4_combout\ = (\KEY[0]~input_o\ & (\inst|s_cntVal\(1) $ (\inst|s_cntVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst|s_cntVal\(1),
	datad => \inst|s_cntVal\(0),
	combout => \inst|s_cntVal~4_combout\);

-- Location: FF_X96_Y69_N29
\inst|s_cntVal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst|s_cntVal~4_combout\,
	ena => \inst|s_cntVal[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntVal\(1));

-- Location: LCCOMB_X96_Y69_N22
\inst|s_cntVal~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntVal~3_combout\ = (\KEY[0]~input_o\ & (\inst|s_cntVal\(2) $ (((\inst|s_cntVal\(1) & \inst|s_cntVal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|s_cntVal\(1),
	datac => \inst|s_cntVal\(2),
	datad => \inst|s_cntVal\(0),
	combout => \inst|s_cntVal~3_combout\);

-- Location: FF_X96_Y69_N23
\inst|s_cntVal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst|s_cntVal~3_combout\,
	ena => \inst|s_cntVal[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntVal\(2));

-- Location: LCCOMB_X96_Y69_N24
\inst|s_cntVal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntVal~0_combout\ = (!\inst|s_cntVal\(0)) # (!\inst|s_cntVal\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_cntVal\(2),
	datad => \inst|s_cntVal\(0),
	combout => \inst|s_cntVal~0_combout\);

-- Location: LCCOMB_X96_Y69_N12
\inst|s_cntVal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntVal~1_combout\ = (\KEY[0]~input_o\ & (\inst|s_cntVal\(3) $ (((\inst|s_cntVal\(1) & !\inst|s_cntVal~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|s_cntVal\(1),
	datac => \inst|s_cntVal\(3),
	datad => \inst|s_cntVal~0_combout\,
	combout => \inst|s_cntVal~1_combout\);

-- Location: FF_X96_Y69_N13
\inst|s_cntVal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkOut~clkctrl_outclk\,
	d => \inst|s_cntVal~1_combout\,
	ena => \inst|s_cntVal[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntVal\(3));

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


