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

-- DATE "03/20/2023 16:06:11"

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

ENTITY 	AccN IS
    PORT (
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	enable : IN std_logic;
	clk : IN std_logic;
	dataOut : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END AccN;

-- Design Ports Information
-- dataOut[0]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AccN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \reg|dataOut[0]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \reg|dataOut[0]~10_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \reg|dataOut[0]~9\ : std_logic;
SIGNAL \reg|dataOut[1]~11_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \reg|dataOut[1]~12\ : std_logic;
SIGNAL \reg|dataOut[2]~13_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \reg|dataOut[2]~14\ : std_logic;
SIGNAL \reg|dataOut[3]~15_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \reg|dataOut[3]~16\ : std_logic;
SIGNAL \reg|dataOut[4]~17_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \reg|dataOut[4]~18\ : std_logic;
SIGNAL \reg|dataOut[5]~19_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \reg|dataOut[5]~20\ : std_logic;
SIGNAL \reg|dataOut[6]~21_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \reg|dataOut[6]~22\ : std_logic;
SIGNAL \reg|dataOut[7]~23_combout\ : std_logic;
SIGNAL \reg|dataOut\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_dataIn <= dataIn;
ww_reset <= reset;
ww_enable <= enable;
ww_clk <= clk;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N23
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(4),
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(5),
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(6),
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|dataOut\(7),
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y28_N22
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N4
\reg|dataOut[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[0]~8_combout\ = (\dataIn[0]~input_o\ & (\reg|dataOut\(0) $ (VCC))) # (!\dataIn[0]~input_o\ & (\reg|dataOut\(0) & VCC))
-- \reg|dataOut[0]~9\ = CARRY((\dataIn[0]~input_o\ & \reg|dataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \reg|dataOut\(0),
	datad => VCC,
	combout => \reg|dataOut[0]~8_combout\,
	cout => \reg|dataOut[0]~9\);

-- Location: IOIBUF_X0_Y24_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\reg|dataOut[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[0]~10_combout\ = (\reset~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \enable~input_o\,
	combout => \reg|dataOut[0]~10_combout\);

-- Location: FF_X1_Y24_N5
\reg|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|dataOut[0]~8_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(0));

-- Location: IOIBUF_X0_Y24_N15
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N6
\reg|dataOut[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[1]~11_combout\ = (\reg|dataOut\(1) & ((\dataIn[1]~input_o\ & (\reg|dataOut[0]~9\ & VCC)) # (!\dataIn[1]~input_o\ & (!\reg|dataOut[0]~9\)))) # (!\reg|dataOut\(1) & ((\dataIn[1]~input_o\ & (!\reg|dataOut[0]~9\)) # (!\dataIn[1]~input_o\ & 
-- ((\reg|dataOut[0]~9\) # (GND)))))
-- \reg|dataOut[1]~12\ = CARRY((\reg|dataOut\(1) & (!\dataIn[1]~input_o\ & !\reg|dataOut[0]~9\)) # (!\reg|dataOut\(1) & ((!\reg|dataOut[0]~9\) # (!\dataIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|dataOut\(1),
	datab => \dataIn[1]~input_o\,
	datad => VCC,
	cin => \reg|dataOut[0]~9\,
	combout => \reg|dataOut[1]~11_combout\,
	cout => \reg|dataOut[1]~12\);

-- Location: FF_X1_Y24_N7
\reg|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|dataOut[1]~11_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(1));

-- Location: IOIBUF_X0_Y24_N8
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\reg|dataOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[2]~13_combout\ = ((\dataIn[2]~input_o\ $ (\reg|dataOut\(2) $ (!\reg|dataOut[1]~12\)))) # (GND)
-- \reg|dataOut[2]~14\ = CARRY((\dataIn[2]~input_o\ & ((\reg|dataOut\(2)) # (!\reg|dataOut[1]~12\))) # (!\dataIn[2]~input_o\ & (\reg|dataOut\(2) & !\reg|dataOut[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \reg|dataOut\(2),
	datad => VCC,
	cin => \reg|dataOut[1]~12\,
	combout => \reg|dataOut[2]~13_combout\,
	cout => \reg|dataOut[2]~14\);

-- Location: FF_X1_Y24_N9
\reg|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|dataOut[2]~13_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(2));

-- Location: IOIBUF_X0_Y27_N22
\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\reg|dataOut[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[3]~15_combout\ = (\reg|dataOut\(3) & ((\dataIn[3]~input_o\ & (\reg|dataOut[2]~14\ & VCC)) # (!\dataIn[3]~input_o\ & (!\reg|dataOut[2]~14\)))) # (!\reg|dataOut\(3) & ((\dataIn[3]~input_o\ & (!\reg|dataOut[2]~14\)) # (!\dataIn[3]~input_o\ & 
-- ((\reg|dataOut[2]~14\) # (GND)))))
-- \reg|dataOut[3]~16\ = CARRY((\reg|dataOut\(3) & (!\dataIn[3]~input_o\ & !\reg|dataOut[2]~14\)) # (!\reg|dataOut\(3) & ((!\reg|dataOut[2]~14\) # (!\dataIn[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|dataOut\(3),
	datab => \dataIn[3]~input_o\,
	datad => VCC,
	cin => \reg|dataOut[2]~14\,
	combout => \reg|dataOut[3]~15_combout\,
	cout => \reg|dataOut[3]~16\);

-- Location: FF_X1_Y24_N11
\reg|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|dataOut[3]~15_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(3));

-- Location: IOIBUF_X0_Y25_N22
\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\reg|dataOut[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[4]~17_combout\ = ((\reg|dataOut\(4) $ (\dataIn[4]~input_o\ $ (!\reg|dataOut[3]~16\)))) # (GND)
-- \reg|dataOut[4]~18\ = CARRY((\reg|dataOut\(4) & ((\dataIn[4]~input_o\) # (!\reg|dataOut[3]~16\))) # (!\reg|dataOut\(4) & (\dataIn[4]~input_o\ & !\reg|dataOut[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|dataOut\(4),
	datab => \dataIn[4]~input_o\,
	datad => VCC,
	cin => \reg|dataOut[3]~16\,
	combout => \reg|dataOut[4]~17_combout\,
	cout => \reg|dataOut[4]~18\);

-- Location: FF_X1_Y24_N13
\reg|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|dataOut[4]~17_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(4));

-- Location: IOIBUF_X0_Y28_N15
\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: LCCOMB_X1_Y24_N14
\reg|dataOut[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[5]~19_combout\ = (\dataIn[5]~input_o\ & ((\reg|dataOut\(5) & (\reg|dataOut[4]~18\ & VCC)) # (!\reg|dataOut\(5) & (!\reg|dataOut[4]~18\)))) # (!\dataIn[5]~input_o\ & ((\reg|dataOut\(5) & (!\reg|dataOut[4]~18\)) # (!\reg|dataOut\(5) & 
-- ((\reg|dataOut[4]~18\) # (GND)))))
-- \reg|dataOut[5]~20\ = CARRY((\dataIn[5]~input_o\ & (!\reg|dataOut\(5) & !\reg|dataOut[4]~18\)) # (!\dataIn[5]~input_o\ & ((!\reg|dataOut[4]~18\) # (!\reg|dataOut\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => \reg|dataOut\(5),
	datad => VCC,
	cin => \reg|dataOut[4]~18\,
	combout => \reg|dataOut[5]~19_combout\,
	cout => \reg|dataOut[5]~20\);

-- Location: FF_X1_Y24_N15
\reg|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|dataOut[5]~19_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(5));

-- Location: IOIBUF_X0_Y26_N15
\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

-- Location: LCCOMB_X1_Y24_N16
\reg|dataOut[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[6]~21_combout\ = ((\dataIn[6]~input_o\ $ (\reg|dataOut\(6) $ (!\reg|dataOut[5]~20\)))) # (GND)
-- \reg|dataOut[6]~22\ = CARRY((\dataIn[6]~input_o\ & ((\reg|dataOut\(6)) # (!\reg|dataOut[5]~20\))) # (!\dataIn[6]~input_o\ & (\reg|dataOut\(6) & !\reg|dataOut[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[6]~input_o\,
	datab => \reg|dataOut\(6),
	datad => VCC,
	cin => \reg|dataOut[5]~20\,
	combout => \reg|dataOut[6]~21_combout\,
	cout => \reg|dataOut[6]~22\);

-- Location: FF_X1_Y24_N17
\reg|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|dataOut[6]~21_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(6));

-- Location: IOIBUF_X0_Y25_N15
\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\reg|dataOut[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|dataOut[7]~23_combout\ = \dataIn[7]~input_o\ $ (\reg|dataOut[6]~22\ $ (\reg|dataOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dataIn[7]~input_o\,
	datad => \reg|dataOut\(7),
	cin => \reg|dataOut[6]~22\,
	combout => \reg|dataOut[7]~23_combout\);

-- Location: FF_X1_Y24_N19
\reg|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|dataOut[7]~23_combout\,
	sclr => \reset~input_o\,
	ena => \reg|dataOut[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|dataOut\(7));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


