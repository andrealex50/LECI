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

-- DATE "05/15/2023 16:53:24"

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

ENTITY 	Drinks IS
    PORT (
	SW : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END Drinks;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Drinks IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Drinks|pState~8_combout\ : std_logic;
SIGNAL \Drinks|pState.E4~q\ : std_logic;
SIGNAL \Drinks|pState~13_combout\ : std_logic;
SIGNAL \Drinks|pState~14_combout\ : std_logic;
SIGNAL \Drinks|pState.E5~q\ : std_logic;
SIGNAL \Drinks|pState~12_combout\ : std_logic;
SIGNAL \Drinks|pState.E0~q\ : std_logic;
SIGNAL \Drinks|pState~11_combout\ : std_logic;
SIGNAL \Drinks|pState.E1~q\ : std_logic;
SIGNAL \Drinks|pState~10_combout\ : std_logic;
SIGNAL \Drinks|pState.E3~q\ : std_logic;
SIGNAL \Drinks|pState~9_combout\ : std_logic;
SIGNAL \Drinks|pState.E2~q\ : std_logic;
SIGNAL \Drinks|Selector0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \Drinks|Selector0~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: IOIBUF_X115_Y51_N8
\SW~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW,
	o => \SW~input_o\);

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

-- Location: LCCOMB_X114_Y51_N28
\Drinks|pState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drinks|pState~8_combout\ = (!\KEY[0]~input_o\ & ((\SW~input_o\ & ((\Drinks|pState.E1~q\))) # (!\SW~input_o\ & (\Drinks|pState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \Drinks|pState.E2~q\,
	datad => \Drinks|pState.E1~q\,
	combout => \Drinks|pState~8_combout\);

-- Location: FF_X114_Y51_N29
\Drinks|pState.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Drinks|pState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Drinks|pState.E4~q\);

-- Location: LCCOMB_X114_Y51_N6
\Drinks|pState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drinks|pState~13_combout\ = (\Drinks|pState.E3~q\) # (\Drinks|pState.E2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Drinks|pState.E3~q\,
	datad => \Drinks|pState.E2~q\,
	combout => \Drinks|pState~13_combout\);

-- Location: LCCOMB_X114_Y51_N16
\Drinks|pState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drinks|pState~14_combout\ = (!\KEY[0]~input_o\ & ((\Drinks|pState.E4~q\) # ((\SW~input_o\ & \Drinks|pState~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \Drinks|pState.E4~q\,
	datac => \KEY[0]~input_o\,
	datad => \Drinks|pState~13_combout\,
	combout => \Drinks|pState~14_combout\);

-- Location: FF_X114_Y51_N17
\Drinks|pState.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Drinks|pState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Drinks|pState.E5~q\);

-- Location: LCCOMB_X114_Y51_N18
\Drinks|pState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drinks|pState~12_combout\ = (!\KEY[0]~input_o\ & !\Drinks|pState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \Drinks|pState.E5~q\,
	combout => \Drinks|pState~12_combout\);

-- Location: FF_X114_Y51_N19
\Drinks|pState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Drinks|pState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Drinks|pState.E0~q\);

-- Location: LCCOMB_X114_Y51_N20
\Drinks|pState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drinks|pState~11_combout\ = (!\SW~input_o\ & (!\KEY[0]~input_o\ & !\Drinks|pState.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \Drinks|pState.E0~q\,
	combout => \Drinks|pState~11_combout\);

-- Location: FF_X114_Y51_N21
\Drinks|pState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Drinks|pState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Drinks|pState.E1~q\);

-- Location: LCCOMB_X114_Y51_N4
\Drinks|pState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drinks|pState~10_combout\ = (!\SW~input_o\ & (!\KEY[0]~input_o\ & \Drinks|pState.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \Drinks|pState.E1~q\,
	combout => \Drinks|pState~10_combout\);

-- Location: FF_X114_Y51_N5
\Drinks|pState.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Drinks|pState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Drinks|pState.E3~q\);

-- Location: LCCOMB_X114_Y51_N10
\Drinks|pState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drinks|pState~9_combout\ = (!\KEY[0]~input_o\ & ((\SW~input_o\ & ((!\Drinks|pState.E0~q\))) # (!\SW~input_o\ & (\Drinks|pState.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \Drinks|pState.E3~q\,
	datad => \Drinks|pState.E0~q\,
	combout => \Drinks|pState~9_combout\);

-- Location: FF_X114_Y51_N11
\Drinks|pState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Drinks|pState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Drinks|pState.E2~q\);

-- Location: LCCOMB_X114_Y51_N26
\Drinks|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Drinks|Selector0~0_combout\ = (\Drinks|pState.E4~q\) # ((\SW~input_o\ & ((\Drinks|pState.E2~q\) # (\Drinks|pState.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Drinks|pState.E2~q\,
	datab => \Drinks|pState.E4~q\,
	datac => \Drinks|pState.E3~q\,
	datad => \SW~input_o\,
	combout => \Drinks|Selector0~0_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


