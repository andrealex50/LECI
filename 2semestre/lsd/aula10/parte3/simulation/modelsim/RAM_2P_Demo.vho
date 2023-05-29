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

-- DATE "05/29/2023 16:25:31"

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

ENTITY 	RAM_2P_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(15 DOWNTO 0)
	);
END RAM_2P_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_2P_Demo IS
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \inst|s_memory~245_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst2|s_cnt[0]~26_combout\ : std_logic;
SIGNAL \inst2|s_cnt[23]~75\ : std_logic;
SIGNAL \inst2|s_cnt[24]~76_combout\ : std_logic;
SIGNAL \inst2|s_cnt[24]~77\ : std_logic;
SIGNAL \inst2|s_cnt[25]~78_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|s_cnt[17]~28_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|s_cnt[17]~29_combout\ : std_logic;
SIGNAL \inst2|s_cnt[0]~27\ : std_logic;
SIGNAL \inst2|s_cnt[1]~30_combout\ : std_logic;
SIGNAL \inst2|s_cnt[1]~31\ : std_logic;
SIGNAL \inst2|s_cnt[2]~32_combout\ : std_logic;
SIGNAL \inst2|s_cnt[2]~33\ : std_logic;
SIGNAL \inst2|s_cnt[3]~34_combout\ : std_logic;
SIGNAL \inst2|s_cnt[3]~35\ : std_logic;
SIGNAL \inst2|s_cnt[4]~36_combout\ : std_logic;
SIGNAL \inst2|s_cnt[4]~37\ : std_logic;
SIGNAL \inst2|s_cnt[5]~38_combout\ : std_logic;
SIGNAL \inst2|s_cnt[5]~39\ : std_logic;
SIGNAL \inst2|s_cnt[6]~40_combout\ : std_logic;
SIGNAL \inst2|s_cnt[6]~41\ : std_logic;
SIGNAL \inst2|s_cnt[7]~42_combout\ : std_logic;
SIGNAL \inst2|s_cnt[7]~43\ : std_logic;
SIGNAL \inst2|s_cnt[8]~44_combout\ : std_logic;
SIGNAL \inst2|s_cnt[8]~45\ : std_logic;
SIGNAL \inst2|s_cnt[9]~46_combout\ : std_logic;
SIGNAL \inst2|s_cnt[9]~47\ : std_logic;
SIGNAL \inst2|s_cnt[10]~48_combout\ : std_logic;
SIGNAL \inst2|s_cnt[10]~49\ : std_logic;
SIGNAL \inst2|s_cnt[11]~50_combout\ : std_logic;
SIGNAL \inst2|s_cnt[11]~51\ : std_logic;
SIGNAL \inst2|s_cnt[12]~52_combout\ : std_logic;
SIGNAL \inst2|s_cnt[12]~53\ : std_logic;
SIGNAL \inst2|s_cnt[13]~54_combout\ : std_logic;
SIGNAL \inst2|s_cnt[13]~55\ : std_logic;
SIGNAL \inst2|s_cnt[14]~56_combout\ : std_logic;
SIGNAL \inst2|s_cnt[14]~57\ : std_logic;
SIGNAL \inst2|s_cnt[15]~58_combout\ : std_logic;
SIGNAL \inst2|s_cnt[15]~59\ : std_logic;
SIGNAL \inst2|s_cnt[16]~60_combout\ : std_logic;
SIGNAL \inst2|s_cnt[16]~61\ : std_logic;
SIGNAL \inst2|s_cnt[17]~62_combout\ : std_logic;
SIGNAL \inst2|s_cnt[17]~63\ : std_logic;
SIGNAL \inst2|s_cnt[18]~64_combout\ : std_logic;
SIGNAL \inst2|s_cnt[18]~65\ : std_logic;
SIGNAL \inst2|s_cnt[19]~66_combout\ : std_logic;
SIGNAL \inst2|s_cnt[19]~67\ : std_logic;
SIGNAL \inst2|s_cnt[20]~68_combout\ : std_logic;
SIGNAL \inst2|s_cnt[20]~69\ : std_logic;
SIGNAL \inst2|s_cnt[21]~70_combout\ : std_logic;
SIGNAL \inst2|s_cnt[21]~71\ : std_logic;
SIGNAL \inst2|s_cnt[22]~72_combout\ : std_logic;
SIGNAL \inst2|s_cnt[22]~73\ : std_logic;
SIGNAL \inst2|s_cnt[23]~74_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|pulse~0_combout\ : std_logic;
SIGNAL \inst2|pulse~q\ : std_logic;
SIGNAL \inst|s_memory~246_combout\ : std_logic;
SIGNAL \inst|s_memory~124_q\ : std_logic;
SIGNAL \inst|s_memory~251_combout\ : std_logic;
SIGNAL \inst|s_memory~252_combout\ : std_logic;
SIGNAL \inst|s_memory~140_q\ : std_logic;
SIGNAL \inst|s_memory~249_combout\ : std_logic;
SIGNAL \inst|s_memory~250_combout\ : std_logic;
SIGNAL \inst|s_memory~116_q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|s_memory~247_combout\ : std_logic;
SIGNAL \inst|s_memory~248_combout\ : std_logic;
SIGNAL \inst|s_memory~132_q\ : std_logic;
SIGNAL \inst|s_memory~148_combout\ : std_logic;
SIGNAL \inst|s_memory~149_combout\ : std_logic;
SIGNAL \inst|s_memory~221_combout\ : std_logic;
SIGNAL \inst|s_memory~222_combout\ : std_logic;
SIGNAL \inst|s_memory~100_q\ : std_logic;
SIGNAL \inst|s_memory~92feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~223_combout\ : std_logic;
SIGNAL \inst|s_memory~224_combout\ : std_logic;
SIGNAL \inst|s_memory~92_q\ : std_logic;
SIGNAL \inst|s_memory~225_combout\ : std_logic;
SIGNAL \inst|s_memory~226_combout\ : std_logic;
SIGNAL \inst|s_memory~84_q\ : std_logic;
SIGNAL \inst|s_memory~141_combout\ : std_logic;
SIGNAL \inst|s_memory~227_combout\ : std_logic;
SIGNAL \inst|s_memory~228_combout\ : std_logic;
SIGNAL \inst|s_memory~108_q\ : std_logic;
SIGNAL \inst|s_memory~142_combout\ : std_logic;
SIGNAL \inst|s_memory~233_combout\ : std_logic;
SIGNAL \inst|s_memory~234_combout\ : std_logic;
SIGNAL \inst|s_memory~52_q\ : std_logic;
SIGNAL \inst|s_memory~231_combout\ : std_logic;
SIGNAL \inst|s_memory~232_combout\ : std_logic;
SIGNAL \inst|s_memory~68_q\ : std_logic;
SIGNAL \inst|s_memory~143_combout\ : std_logic;
SIGNAL \inst|s_memory~235_combout\ : std_logic;
SIGNAL \inst|s_memory~236_combout\ : std_logic;
SIGNAL \inst|s_memory~76_q\ : std_logic;
SIGNAL \inst|s_memory~229_combout\ : std_logic;
SIGNAL \inst|s_memory~230_combout\ : std_logic;
SIGNAL \inst|s_memory~60_q\ : std_logic;
SIGNAL \inst|s_memory~144_combout\ : std_logic;
SIGNAL \inst|s_memory~237_combout\ : std_logic;
SIGNAL \inst|s_memory~238_combout\ : std_logic;
SIGNAL \inst|s_memory~36_q\ : std_logic;
SIGNAL \inst|s_memory~241_combout\ : std_logic;
SIGNAL \inst|s_memory~242_combout\ : std_logic;
SIGNAL \inst|s_memory~20_q\ : std_logic;
SIGNAL \inst|s_memory~239_combout\ : std_logic;
SIGNAL \inst|s_memory~240_combout\ : std_logic;
SIGNAL \inst|s_memory~28_q\ : std_logic;
SIGNAL \inst|s_memory~145_combout\ : std_logic;
SIGNAL \inst|s_memory~243_combout\ : std_logic;
SIGNAL \inst|s_memory~244_combout\ : std_logic;
SIGNAL \inst|s_memory~44_q\ : std_logic;
SIGNAL \inst|s_memory~146_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \inst|s_memory~147_combout\ : std_logic;
SIGNAL \inst|s_memory~150_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|s_memory~67_q\ : std_logic;
SIGNAL \inst|s_memory~131_q\ : std_logic;
SIGNAL \inst|s_memory~99_q\ : std_logic;
SIGNAL \inst|s_memory~35_q\ : std_logic;
SIGNAL \inst|s_memory~151_combout\ : std_logic;
SIGNAL \inst|s_memory~152_combout\ : std_logic;
SIGNAL \inst|s_memory~19_q\ : std_logic;
SIGNAL \inst|s_memory~83_q\ : std_logic;
SIGNAL \inst|s_memory~155_combout\ : std_logic;
SIGNAL \inst|s_memory~115_q\ : std_logic;
SIGNAL \inst|s_memory~51_q\ : std_logic;
SIGNAL \inst|s_memory~156_combout\ : std_logic;
SIGNAL \inst|s_memory~91_q\ : std_logic;
SIGNAL \inst|s_memory~59_q\ : std_logic;
SIGNAL \inst|s_memory~27_q\ : std_logic;
SIGNAL \inst|s_memory~153_combout\ : std_logic;
SIGNAL \inst|s_memory~123_q\ : std_logic;
SIGNAL \inst|s_memory~154_combout\ : std_logic;
SIGNAL \inst|s_memory~157_combout\ : std_logic;
SIGNAL \inst|s_memory~107_q\ : std_logic;
SIGNAL \inst|s_memory~75_q\ : std_logic;
SIGNAL \inst|s_memory~43_q\ : std_logic;
SIGNAL \inst|s_memory~158_combout\ : std_logic;
SIGNAL \inst|s_memory~139_q\ : std_logic;
SIGNAL \inst|s_memory~159_combout\ : std_logic;
SIGNAL \inst|s_memory~160_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_memory~58feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~58_q\ : std_logic;
SIGNAL \inst|s_memory~50_q\ : std_logic;
SIGNAL \inst|s_memory~161_combout\ : std_logic;
SIGNAL \inst|s_memory~66_q\ : std_logic;
SIGNAL \inst|s_memory~74_q\ : std_logic;
SIGNAL \inst|s_memory~162_combout\ : std_logic;
SIGNAL \inst|s_memory~130feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~130_q\ : std_logic;
SIGNAL \inst|s_memory~122feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~122_q\ : std_logic;
SIGNAL \inst|s_memory~114_q\ : std_logic;
SIGNAL \inst|s_memory~168_combout\ : std_logic;
SIGNAL \inst|s_memory~138_q\ : std_logic;
SIGNAL \inst|s_memory~169_combout\ : std_logic;
SIGNAL \inst|s_memory~18_q\ : std_logic;
SIGNAL \inst|s_memory~34_q\ : std_logic;
SIGNAL \inst|s_memory~165_combout\ : std_logic;
SIGNAL \inst|s_memory~26feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~26_q\ : std_logic;
SIGNAL \inst|s_memory~42_q\ : std_logic;
SIGNAL \inst|s_memory~166_combout\ : std_logic;
SIGNAL \inst|s_memory~90feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~90_q\ : std_logic;
SIGNAL \inst|s_memory~98_q\ : std_logic;
SIGNAL \inst|s_memory~82_q\ : std_logic;
SIGNAL \inst|s_memory~163_combout\ : std_logic;
SIGNAL \inst|s_memory~106_q\ : std_logic;
SIGNAL \inst|s_memory~164_combout\ : std_logic;
SIGNAL \inst|s_memory~167_combout\ : std_logic;
SIGNAL \inst|s_memory~170_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|s_memory~89feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~89_q\ : std_logic;
SIGNAL \inst|s_memory~25_q\ : std_logic;
SIGNAL \inst|s_memory~171_combout\ : std_logic;
SIGNAL \inst|s_memory~121_q\ : std_logic;
SIGNAL \inst|s_memory~57feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~57_q\ : std_logic;
SIGNAL \inst|s_memory~172_combout\ : std_logic;
SIGNAL \inst|s_memory~105feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~105_q\ : std_logic;
SIGNAL \inst|s_memory~41_q\ : std_logic;
SIGNAL \inst|s_memory~178_combout\ : std_logic;
SIGNAL \inst|s_memory~137_q\ : std_logic;
SIGNAL \inst|s_memory~73feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~73_q\ : std_logic;
SIGNAL \inst|s_memory~179_combout\ : std_logic;
SIGNAL \inst|s_memory~97feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~97_q\ : std_logic;
SIGNAL \inst|s_memory~129feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~129_q\ : std_logic;
SIGNAL \inst|s_memory~33_q\ : std_logic;
SIGNAL \inst|s_memory~65_q\ : std_logic;
SIGNAL \inst|s_memory~173_combout\ : std_logic;
SIGNAL \inst|s_memory~174_combout\ : std_logic;
SIGNAL \inst|s_memory~49_q\ : std_logic;
SIGNAL \inst|s_memory~17_q\ : std_logic;
SIGNAL \inst|s_memory~175_combout\ : std_logic;
SIGNAL \inst|s_memory~81feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~81_q\ : std_logic;
SIGNAL \inst|s_memory~113_q\ : std_logic;
SIGNAL \inst|s_memory~176_combout\ : std_logic;
SIGNAL \inst|s_memory~177_combout\ : std_logic;
SIGNAL \inst|s_memory~180_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|s_memory~96_q\ : std_logic;
SIGNAL \inst|s_memory~88feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~88_q\ : std_logic;
SIGNAL \inst|s_memory~80_q\ : std_logic;
SIGNAL \inst|s_memory~181_combout\ : std_logic;
SIGNAL \inst|s_memory~104_q\ : std_logic;
SIGNAL \inst|s_memory~182_combout\ : std_logic;
SIGNAL \inst|s_memory~24_q\ : std_logic;
SIGNAL \inst|s_memory~16_q\ : std_logic;
SIGNAL \inst|s_memory~185_combout\ : std_logic;
SIGNAL \inst|s_memory~32_q\ : std_logic;
SIGNAL \inst|s_memory~40_q\ : std_logic;
SIGNAL \inst|s_memory~186_combout\ : std_logic;
SIGNAL \inst|s_memory~56_q\ : std_logic;
SIGNAL \inst|s_memory~72_q\ : std_logic;
SIGNAL \inst|s_memory~64_q\ : std_logic;
SIGNAL \inst|s_memory~48_q\ : std_logic;
SIGNAL \inst|s_memory~183_combout\ : std_logic;
SIGNAL \inst|s_memory~184_combout\ : std_logic;
SIGNAL \inst|s_memory~187_combout\ : std_logic;
SIGNAL \inst|s_memory~112_q\ : std_logic;
SIGNAL \inst|s_memory~128_q\ : std_logic;
SIGNAL \inst|s_memory~188_combout\ : std_logic;
SIGNAL \inst|s_memory~136feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~136_q\ : std_logic;
SIGNAL \inst|s_memory~120_q\ : std_logic;
SIGNAL \inst|s_memory~189_combout\ : std_logic;
SIGNAL \inst|s_memory~190_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_memory~71_q\ : std_logic;
SIGNAL \inst|s_memory~39_q\ : std_logic;
SIGNAL \inst|s_memory~198_combout\ : std_logic;
SIGNAL \inst|s_memory~103feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~103_q\ : std_logic;
SIGNAL \inst|s_memory~135_q\ : std_logic;
SIGNAL \inst|s_memory~199_combout\ : std_logic;
SIGNAL \inst|s_memory~79feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~79_q\ : std_logic;
SIGNAL \inst|s_memory~15_q\ : std_logic;
SIGNAL \inst|s_memory~195_combout\ : std_logic;
SIGNAL \inst|s_memory~111_q\ : std_logic;
SIGNAL \inst|s_memory~47feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~47_q\ : std_logic;
SIGNAL \inst|s_memory~196_combout\ : std_logic;
SIGNAL \inst|s_memory~87feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~87_q\ : std_logic;
SIGNAL \inst|s_memory~23_q\ : std_logic;
SIGNAL \inst|s_memory~55_q\ : std_logic;
SIGNAL \inst|s_memory~193_combout\ : std_logic;
SIGNAL \inst|s_memory~119_q\ : std_logic;
SIGNAL \inst|s_memory~194_combout\ : std_logic;
SIGNAL \inst|s_memory~197_combout\ : std_logic;
SIGNAL \inst|s_memory~31_q\ : std_logic;
SIGNAL \inst|s_memory~95_q\ : std_logic;
SIGNAL \inst|s_memory~191_combout\ : std_logic;
SIGNAL \inst|s_memory~127_q\ : std_logic;
SIGNAL \inst|s_memory~63_q\ : std_logic;
SIGNAL \inst|s_memory~192_combout\ : std_logic;
SIGNAL \inst|s_memory~200_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|s_memory~54_q\ : std_logic;
SIGNAL \inst|s_memory~46_q\ : std_logic;
SIGNAL \inst|s_memory~201_combout\ : std_logic;
SIGNAL \inst|s_memory~62_q\ : std_logic;
SIGNAL \inst|s_memory~70_q\ : std_logic;
SIGNAL \inst|s_memory~202_combout\ : std_logic;
SIGNAL \inst|s_memory~78_q\ : std_logic;
SIGNAL \inst|s_memory~94feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~94_q\ : std_logic;
SIGNAL \inst|s_memory~203_combout\ : std_logic;
SIGNAL \inst|s_memory~86feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~86_q\ : std_logic;
SIGNAL \inst|s_memory~102_q\ : std_logic;
SIGNAL \inst|s_memory~204_combout\ : std_logic;
SIGNAL \inst|s_memory~22_q\ : std_logic;
SIGNAL \inst|s_memory~14_q\ : std_logic;
SIGNAL \inst|s_memory~30feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~30_q\ : std_logic;
SIGNAL \inst|s_memory~205_combout\ : std_logic;
SIGNAL \inst|s_memory~38_q\ : std_logic;
SIGNAL \inst|s_memory~206_combout\ : std_logic;
SIGNAL \inst|s_memory~207_combout\ : std_logic;
SIGNAL \inst|s_memory~110_q\ : std_logic;
SIGNAL \inst|s_memory~118_q\ : std_logic;
SIGNAL \inst|s_memory~208_combout\ : std_logic;
SIGNAL \inst|s_memory~134_q\ : std_logic;
SIGNAL \inst|s_memory~126_q\ : std_logic;
SIGNAL \inst|s_memory~209_combout\ : std_logic;
SIGNAL \inst|s_memory~210_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_memory~133_q\ : std_logic;
SIGNAL \inst|s_memory~101_q\ : std_logic;
SIGNAL \inst|s_memory~37_q\ : std_logic;
SIGNAL \inst|s_memory~218_combout\ : std_logic;
SIGNAL \inst|s_memory~69_q\ : std_logic;
SIGNAL \inst|s_memory~219_combout\ : std_logic;
SIGNAL \inst|s_memory~93_q\ : std_logic;
SIGNAL \inst|s_memory~61_q\ : std_logic;
SIGNAL \inst|s_memory~29_q\ : std_logic;
SIGNAL \inst|s_memory~213_combout\ : std_logic;
SIGNAL \inst|s_memory~125_q\ : std_logic;
SIGNAL \inst|s_memory~214_combout\ : std_logic;
SIGNAL \inst|s_memory~77_q\ : std_logic;
SIGNAL \inst|s_memory~45_q\ : std_logic;
SIGNAL \inst|s_memory~13_q\ : std_logic;
SIGNAL \inst|s_memory~215_combout\ : std_logic;
SIGNAL \inst|s_memory~109_q\ : std_logic;
SIGNAL \inst|s_memory~216_combout\ : std_logic;
SIGNAL \inst|s_memory~217_combout\ : std_logic;
SIGNAL \inst|s_memory~21_q\ : std_logic;
SIGNAL \inst|s_memory~85_q\ : std_logic;
SIGNAL \inst|s_memory~211_combout\ : std_logic;
SIGNAL \inst|s_memory~117_q\ : std_logic;
SIGNAL \inst|s_memory~53feeder_combout\ : std_logic;
SIGNAL \inst|s_memory~53_q\ : std_logic;
SIGNAL \inst|s_memory~212_combout\ : std_logic;
SIGNAL \inst|s_memory~220_combout\ : std_logic;
SIGNAL \inst2|s_cnt\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \inst|s_memory~150_combout\,
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
	i => \inst|s_memory~160_combout\,
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
	i => \inst|s_memory~170_combout\,
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
	i => \inst|s_memory~180_combout\,
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
	i => \inst|s_memory~190_combout\,
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
	i => \inst|s_memory~200_combout\,
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
	i => \inst|s_memory~210_combout\,
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
	i => \inst|s_memory~220_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

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

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X112_Y16_N2
\inst|s_memory~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~245_combout\ = (\SW[12]~input_o\ & (!\SW[13]~input_o\ & (\SW[14]~input_o\ & \SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~245_combout\);

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

-- Location: LCCOMB_X114_Y17_N6
\inst2|s_cnt[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[0]~26_combout\ = \inst2|s_cnt\(0) $ (VCC)
-- \inst2|s_cnt[0]~27\ = CARRY(\inst2|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(0),
	datad => VCC,
	combout => \inst2|s_cnt[0]~26_combout\,
	cout => \inst2|s_cnt[0]~27\);

-- Location: LCCOMB_X114_Y16_N20
\inst2|s_cnt[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[23]~74_combout\ = (\inst2|s_cnt\(23) & (!\inst2|s_cnt[22]~73\)) # (!\inst2|s_cnt\(23) & ((\inst2|s_cnt[22]~73\) # (GND)))
-- \inst2|s_cnt[23]~75\ = CARRY((!\inst2|s_cnt[22]~73\) # (!\inst2|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(23),
	datad => VCC,
	cin => \inst2|s_cnt[22]~73\,
	combout => \inst2|s_cnt[23]~74_combout\,
	cout => \inst2|s_cnt[23]~75\);

-- Location: LCCOMB_X114_Y16_N22
\inst2|s_cnt[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[24]~76_combout\ = (\inst2|s_cnt\(24) & (\inst2|s_cnt[23]~75\ $ (GND))) # (!\inst2|s_cnt\(24) & (!\inst2|s_cnt[23]~75\ & VCC))
-- \inst2|s_cnt[24]~77\ = CARRY((\inst2|s_cnt\(24) & !\inst2|s_cnt[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(24),
	datad => VCC,
	cin => \inst2|s_cnt[23]~75\,
	combout => \inst2|s_cnt[24]~76_combout\,
	cout => \inst2|s_cnt[24]~77\);

-- Location: FF_X114_Y16_N23
\inst2|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[24]~76_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(24));

-- Location: LCCOMB_X114_Y16_N24
\inst2|s_cnt[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[25]~78_combout\ = \inst2|s_cnt[24]~77\ $ (\inst2|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_cnt\(25),
	cin => \inst2|s_cnt[24]~77\,
	combout => \inst2|s_cnt[25]~78_combout\);

-- Location: FF_X114_Y16_N25
\inst2|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[25]~78_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(25));

-- Location: LCCOMB_X113_Y16_N24
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (\inst2|s_cnt\(24)) # (!\inst2|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_cnt\(25),
	datad => \inst2|s_cnt\(24),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X113_Y16_N28
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|s_cnt\(16)) # ((\inst2|s_cnt\(18)) # ((!\inst2|s_cnt\(17)) # (!\inst2|s_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(16),
	datab => \inst2|s_cnt\(18),
	datac => \inst2|s_cnt\(19),
	datad => \inst2|s_cnt\(17),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y16_N16
\inst2|s_cnt[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[17]~28_combout\ = (\inst2|Equal0~6_combout\) # (\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~6_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|s_cnt[17]~28_combout\);

-- Location: LCCOMB_X114_Y16_N30
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (((!\inst2|s_cnt\(14)) # (!\inst2|s_cnt\(12))) # (!\inst2|s_cnt\(13))) # (!\inst2|s_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(15),
	datab => \inst2|s_cnt\(13),
	datac => \inst2|s_cnt\(12),
	datad => \inst2|s_cnt\(14),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y17_N4
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (((!\inst2|s_cnt\(3)) # (!\inst2|s_cnt\(0))) # (!\inst2|s_cnt\(1))) # (!\inst2|s_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(2),
	datab => \inst2|s_cnt\(1),
	datac => \inst2|s_cnt\(0),
	datad => \inst2|s_cnt\(3),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y17_N0
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|s_cnt\(8)) # ((\inst2|s_cnt\(9)) # ((\inst2|s_cnt\(10)) # (\inst2|s_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(8),
	datab => \inst2|s_cnt\(9),
	datac => \inst2|s_cnt\(10),
	datad => \inst2|s_cnt\(11),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X114_Y17_N2
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (((\inst2|s_cnt\(7)) # (!\inst2|s_cnt\(4))) # (!\inst2|s_cnt\(5))) # (!\inst2|s_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(6),
	datab => \inst2|s_cnt\(5),
	datac => \inst2|s_cnt\(4),
	datad => \inst2|s_cnt\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y16_N28
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~3_combout\) # ((\inst2|Equal0~0_combout\) # ((\inst2|Equal0~2_combout\) # (\inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X114_Y16_N26
\inst2|s_cnt[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[17]~29_combout\ = ((!\inst2|Equal0~7_combout\ & (!\inst2|s_cnt[17]~28_combout\ & !\inst2|Equal0~4_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|s_cnt[17]~28_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|s_cnt[17]~29_combout\);

-- Location: FF_X114_Y17_N7
\inst2|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[0]~26_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(0));

-- Location: LCCOMB_X114_Y17_N8
\inst2|s_cnt[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[1]~30_combout\ = (\inst2|s_cnt\(1) & (!\inst2|s_cnt[0]~27\)) # (!\inst2|s_cnt\(1) & ((\inst2|s_cnt[0]~27\) # (GND)))
-- \inst2|s_cnt[1]~31\ = CARRY((!\inst2|s_cnt[0]~27\) # (!\inst2|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(1),
	datad => VCC,
	cin => \inst2|s_cnt[0]~27\,
	combout => \inst2|s_cnt[1]~30_combout\,
	cout => \inst2|s_cnt[1]~31\);

-- Location: FF_X114_Y17_N9
\inst2|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[1]~30_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(1));

-- Location: LCCOMB_X114_Y17_N10
\inst2|s_cnt[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[2]~32_combout\ = (\inst2|s_cnt\(2) & (\inst2|s_cnt[1]~31\ $ (GND))) # (!\inst2|s_cnt\(2) & (!\inst2|s_cnt[1]~31\ & VCC))
-- \inst2|s_cnt[2]~33\ = CARRY((\inst2|s_cnt\(2) & !\inst2|s_cnt[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(2),
	datad => VCC,
	cin => \inst2|s_cnt[1]~31\,
	combout => \inst2|s_cnt[2]~32_combout\,
	cout => \inst2|s_cnt[2]~33\);

-- Location: FF_X114_Y17_N11
\inst2|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[2]~32_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(2));

-- Location: LCCOMB_X114_Y17_N12
\inst2|s_cnt[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[3]~34_combout\ = (\inst2|s_cnt\(3) & (!\inst2|s_cnt[2]~33\)) # (!\inst2|s_cnt\(3) & ((\inst2|s_cnt[2]~33\) # (GND)))
-- \inst2|s_cnt[3]~35\ = CARRY((!\inst2|s_cnt[2]~33\) # (!\inst2|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(3),
	datad => VCC,
	cin => \inst2|s_cnt[2]~33\,
	combout => \inst2|s_cnt[3]~34_combout\,
	cout => \inst2|s_cnt[3]~35\);

-- Location: FF_X114_Y17_N13
\inst2|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[3]~34_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(3));

-- Location: LCCOMB_X114_Y17_N14
\inst2|s_cnt[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[4]~36_combout\ = (\inst2|s_cnt\(4) & (\inst2|s_cnt[3]~35\ $ (GND))) # (!\inst2|s_cnt\(4) & (!\inst2|s_cnt[3]~35\ & VCC))
-- \inst2|s_cnt[4]~37\ = CARRY((\inst2|s_cnt\(4) & !\inst2|s_cnt[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(4),
	datad => VCC,
	cin => \inst2|s_cnt[3]~35\,
	combout => \inst2|s_cnt[4]~36_combout\,
	cout => \inst2|s_cnt[4]~37\);

-- Location: FF_X114_Y17_N15
\inst2|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[4]~36_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(4));

-- Location: LCCOMB_X114_Y17_N16
\inst2|s_cnt[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[5]~38_combout\ = (\inst2|s_cnt\(5) & (!\inst2|s_cnt[4]~37\)) # (!\inst2|s_cnt\(5) & ((\inst2|s_cnt[4]~37\) # (GND)))
-- \inst2|s_cnt[5]~39\ = CARRY((!\inst2|s_cnt[4]~37\) # (!\inst2|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(5),
	datad => VCC,
	cin => \inst2|s_cnt[4]~37\,
	combout => \inst2|s_cnt[5]~38_combout\,
	cout => \inst2|s_cnt[5]~39\);

-- Location: FF_X114_Y17_N17
\inst2|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[5]~38_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(5));

-- Location: LCCOMB_X114_Y17_N18
\inst2|s_cnt[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[6]~40_combout\ = (\inst2|s_cnt\(6) & (\inst2|s_cnt[5]~39\ $ (GND))) # (!\inst2|s_cnt\(6) & (!\inst2|s_cnt[5]~39\ & VCC))
-- \inst2|s_cnt[6]~41\ = CARRY((\inst2|s_cnt\(6) & !\inst2|s_cnt[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(6),
	datad => VCC,
	cin => \inst2|s_cnt[5]~39\,
	combout => \inst2|s_cnt[6]~40_combout\,
	cout => \inst2|s_cnt[6]~41\);

-- Location: FF_X114_Y17_N19
\inst2|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[6]~40_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(6));

-- Location: LCCOMB_X114_Y17_N20
\inst2|s_cnt[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[7]~42_combout\ = (\inst2|s_cnt\(7) & (!\inst2|s_cnt[6]~41\)) # (!\inst2|s_cnt\(7) & ((\inst2|s_cnt[6]~41\) # (GND)))
-- \inst2|s_cnt[7]~43\ = CARRY((!\inst2|s_cnt[6]~41\) # (!\inst2|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(7),
	datad => VCC,
	cin => \inst2|s_cnt[6]~41\,
	combout => \inst2|s_cnt[7]~42_combout\,
	cout => \inst2|s_cnt[7]~43\);

-- Location: FF_X114_Y17_N21
\inst2|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[7]~42_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(7));

-- Location: LCCOMB_X114_Y17_N22
\inst2|s_cnt[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[8]~44_combout\ = (\inst2|s_cnt\(8) & (\inst2|s_cnt[7]~43\ $ (GND))) # (!\inst2|s_cnt\(8) & (!\inst2|s_cnt[7]~43\ & VCC))
-- \inst2|s_cnt[8]~45\ = CARRY((\inst2|s_cnt\(8) & !\inst2|s_cnt[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(8),
	datad => VCC,
	cin => \inst2|s_cnt[7]~43\,
	combout => \inst2|s_cnt[8]~44_combout\,
	cout => \inst2|s_cnt[8]~45\);

-- Location: FF_X114_Y17_N23
\inst2|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[8]~44_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(8));

-- Location: LCCOMB_X114_Y17_N24
\inst2|s_cnt[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[9]~46_combout\ = (\inst2|s_cnt\(9) & (!\inst2|s_cnt[8]~45\)) # (!\inst2|s_cnt\(9) & ((\inst2|s_cnt[8]~45\) # (GND)))
-- \inst2|s_cnt[9]~47\ = CARRY((!\inst2|s_cnt[8]~45\) # (!\inst2|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(9),
	datad => VCC,
	cin => \inst2|s_cnt[8]~45\,
	combout => \inst2|s_cnt[9]~46_combout\,
	cout => \inst2|s_cnt[9]~47\);

-- Location: FF_X114_Y17_N25
\inst2|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[9]~46_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(9));

-- Location: LCCOMB_X114_Y17_N26
\inst2|s_cnt[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[10]~48_combout\ = (\inst2|s_cnt\(10) & (\inst2|s_cnt[9]~47\ $ (GND))) # (!\inst2|s_cnt\(10) & (!\inst2|s_cnt[9]~47\ & VCC))
-- \inst2|s_cnt[10]~49\ = CARRY((\inst2|s_cnt\(10) & !\inst2|s_cnt[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(10),
	datad => VCC,
	cin => \inst2|s_cnt[9]~47\,
	combout => \inst2|s_cnt[10]~48_combout\,
	cout => \inst2|s_cnt[10]~49\);

-- Location: FF_X114_Y17_N27
\inst2|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[10]~48_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(10));

-- Location: LCCOMB_X114_Y17_N28
\inst2|s_cnt[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[11]~50_combout\ = (\inst2|s_cnt\(11) & (!\inst2|s_cnt[10]~49\)) # (!\inst2|s_cnt\(11) & ((\inst2|s_cnt[10]~49\) # (GND)))
-- \inst2|s_cnt[11]~51\ = CARRY((!\inst2|s_cnt[10]~49\) # (!\inst2|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(11),
	datad => VCC,
	cin => \inst2|s_cnt[10]~49\,
	combout => \inst2|s_cnt[11]~50_combout\,
	cout => \inst2|s_cnt[11]~51\);

-- Location: FF_X114_Y17_N29
\inst2|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[11]~50_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(11));

-- Location: LCCOMB_X114_Y17_N30
\inst2|s_cnt[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[12]~52_combout\ = (\inst2|s_cnt\(12) & (\inst2|s_cnt[11]~51\ $ (GND))) # (!\inst2|s_cnt\(12) & (!\inst2|s_cnt[11]~51\ & VCC))
-- \inst2|s_cnt[12]~53\ = CARRY((\inst2|s_cnt\(12) & !\inst2|s_cnt[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(12),
	datad => VCC,
	cin => \inst2|s_cnt[11]~51\,
	combout => \inst2|s_cnt[12]~52_combout\,
	cout => \inst2|s_cnt[12]~53\);

-- Location: FF_X113_Y16_N5
\inst2|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_cnt[12]~52_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(12));

-- Location: LCCOMB_X114_Y16_N0
\inst2|s_cnt[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[13]~54_combout\ = (\inst2|s_cnt\(13) & (!\inst2|s_cnt[12]~53\)) # (!\inst2|s_cnt\(13) & ((\inst2|s_cnt[12]~53\) # (GND)))
-- \inst2|s_cnt[13]~55\ = CARRY((!\inst2|s_cnt[12]~53\) # (!\inst2|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(13),
	datad => VCC,
	cin => \inst2|s_cnt[12]~53\,
	combout => \inst2|s_cnt[13]~54_combout\,
	cout => \inst2|s_cnt[13]~55\);

-- Location: FF_X114_Y16_N1
\inst2|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[13]~54_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(13));

-- Location: LCCOMB_X114_Y16_N2
\inst2|s_cnt[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[14]~56_combout\ = (\inst2|s_cnt\(14) & (\inst2|s_cnt[13]~55\ $ (GND))) # (!\inst2|s_cnt\(14) & (!\inst2|s_cnt[13]~55\ & VCC))
-- \inst2|s_cnt[14]~57\ = CARRY((\inst2|s_cnt\(14) & !\inst2|s_cnt[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(14),
	datad => VCC,
	cin => \inst2|s_cnt[13]~55\,
	combout => \inst2|s_cnt[14]~56_combout\,
	cout => \inst2|s_cnt[14]~57\);

-- Location: FF_X114_Y16_N3
\inst2|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[14]~56_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(14));

-- Location: LCCOMB_X114_Y16_N4
\inst2|s_cnt[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[15]~58_combout\ = (\inst2|s_cnt\(15) & (!\inst2|s_cnt[14]~57\)) # (!\inst2|s_cnt\(15) & ((\inst2|s_cnt[14]~57\) # (GND)))
-- \inst2|s_cnt[15]~59\ = CARRY((!\inst2|s_cnt[14]~57\) # (!\inst2|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(15),
	datad => VCC,
	cin => \inst2|s_cnt[14]~57\,
	combout => \inst2|s_cnt[15]~58_combout\,
	cout => \inst2|s_cnt[15]~59\);

-- Location: FF_X114_Y16_N5
\inst2|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[15]~58_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(15));

-- Location: LCCOMB_X114_Y16_N6
\inst2|s_cnt[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[16]~60_combout\ = (\inst2|s_cnt\(16) & (\inst2|s_cnt[15]~59\ $ (GND))) # (!\inst2|s_cnt\(16) & (!\inst2|s_cnt[15]~59\ & VCC))
-- \inst2|s_cnt[16]~61\ = CARRY((\inst2|s_cnt\(16) & !\inst2|s_cnt[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(16),
	datad => VCC,
	cin => \inst2|s_cnt[15]~59\,
	combout => \inst2|s_cnt[16]~60_combout\,
	cout => \inst2|s_cnt[16]~61\);

-- Location: FF_X114_Y16_N7
\inst2|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[16]~60_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(16));

-- Location: LCCOMB_X114_Y16_N8
\inst2|s_cnt[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[17]~62_combout\ = (\inst2|s_cnt\(17) & (!\inst2|s_cnt[16]~61\)) # (!\inst2|s_cnt\(17) & ((\inst2|s_cnt[16]~61\) # (GND)))
-- \inst2|s_cnt[17]~63\ = CARRY((!\inst2|s_cnt[16]~61\) # (!\inst2|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(17),
	datad => VCC,
	cin => \inst2|s_cnt[16]~61\,
	combout => \inst2|s_cnt[17]~62_combout\,
	cout => \inst2|s_cnt[17]~63\);

-- Location: FF_X114_Y16_N9
\inst2|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[17]~62_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(17));

-- Location: LCCOMB_X114_Y16_N10
\inst2|s_cnt[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[18]~64_combout\ = (\inst2|s_cnt\(18) & (\inst2|s_cnt[17]~63\ $ (GND))) # (!\inst2|s_cnt\(18) & (!\inst2|s_cnt[17]~63\ & VCC))
-- \inst2|s_cnt[18]~65\ = CARRY((\inst2|s_cnt\(18) & !\inst2|s_cnt[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(18),
	datad => VCC,
	cin => \inst2|s_cnt[17]~63\,
	combout => \inst2|s_cnt[18]~64_combout\,
	cout => \inst2|s_cnt[18]~65\);

-- Location: FF_X114_Y16_N11
\inst2|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[18]~64_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(18));

-- Location: LCCOMB_X114_Y16_N12
\inst2|s_cnt[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[19]~66_combout\ = (\inst2|s_cnt\(19) & (!\inst2|s_cnt[18]~65\)) # (!\inst2|s_cnt\(19) & ((\inst2|s_cnt[18]~65\) # (GND)))
-- \inst2|s_cnt[19]~67\ = CARRY((!\inst2|s_cnt[18]~65\) # (!\inst2|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(19),
	datad => VCC,
	cin => \inst2|s_cnt[18]~65\,
	combout => \inst2|s_cnt[19]~66_combout\,
	cout => \inst2|s_cnt[19]~67\);

-- Location: FF_X114_Y16_N13
\inst2|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[19]~66_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(19));

-- Location: LCCOMB_X114_Y16_N14
\inst2|s_cnt[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[20]~68_combout\ = (\inst2|s_cnt\(20) & (\inst2|s_cnt[19]~67\ $ (GND))) # (!\inst2|s_cnt\(20) & (!\inst2|s_cnt[19]~67\ & VCC))
-- \inst2|s_cnt[20]~69\ = CARRY((\inst2|s_cnt\(20) & !\inst2|s_cnt[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(20),
	datad => VCC,
	cin => \inst2|s_cnt[19]~67\,
	combout => \inst2|s_cnt[20]~68_combout\,
	cout => \inst2|s_cnt[20]~69\);

-- Location: FF_X114_Y16_N15
\inst2|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[20]~68_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(20));

-- Location: LCCOMB_X114_Y16_N16
\inst2|s_cnt[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[21]~70_combout\ = (\inst2|s_cnt\(21) & (!\inst2|s_cnt[20]~69\)) # (!\inst2|s_cnt\(21) & ((\inst2|s_cnt[20]~69\) # (GND)))
-- \inst2|s_cnt[21]~71\ = CARRY((!\inst2|s_cnt[20]~69\) # (!\inst2|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(21),
	datad => VCC,
	cin => \inst2|s_cnt[20]~69\,
	combout => \inst2|s_cnt[21]~70_combout\,
	cout => \inst2|s_cnt[21]~71\);

-- Location: FF_X114_Y16_N17
\inst2|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[21]~70_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(21));

-- Location: LCCOMB_X114_Y16_N18
\inst2|s_cnt[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[22]~72_combout\ = (\inst2|s_cnt\(22) & (\inst2|s_cnt[21]~71\ $ (GND))) # (!\inst2|s_cnt\(22) & (!\inst2|s_cnt[21]~71\ & VCC))
-- \inst2|s_cnt[22]~73\ = CARRY((\inst2|s_cnt\(22) & !\inst2|s_cnt[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(22),
	datad => VCC,
	cin => \inst2|s_cnt[21]~71\,
	combout => \inst2|s_cnt[22]~72_combout\,
	cout => \inst2|s_cnt[22]~73\);

-- Location: FF_X114_Y16_N19
\inst2|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[22]~72_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(22));

-- Location: FF_X114_Y16_N21
\inst2|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[23]~74_combout\,
	sclr => \inst2|s_cnt[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(23));

-- Location: LCCOMB_X113_Y16_N30
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (((!\inst2|s_cnt\(22)) # (!\inst2|s_cnt\(20))) # (!\inst2|s_cnt\(21))) # (!\inst2|s_cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(23),
	datab => \inst2|s_cnt\(21),
	datac => \inst2|s_cnt\(20),
	datad => \inst2|s_cnt\(22),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X113_Y16_N18
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (\inst2|Equal0~6_combout\) # ((\inst2|Equal0~7_combout\) # ((\inst2|Equal0~5_combout\) # (\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~6_combout\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X113_Y16_N2
\inst2|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pulse~0_combout\ = (\KEY[0]~input_o\ & !\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|pulse~0_combout\);

-- Location: FF_X113_Y16_N3
\inst2|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pulse~q\);

-- Location: LCCOMB_X113_Y14_N2
\inst|s_memory~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~246_combout\ = (\inst|s_memory~245_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~245_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~246_combout\);

-- Location: FF_X113_Y14_N3
\inst|s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~124_q\);

-- Location: LCCOMB_X111_Y16_N10
\inst|s_memory~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~251_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ & (\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~251_combout\);

-- Location: LCCOMB_X110_Y13_N26
\inst|s_memory~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~252_combout\ = (\inst|s_memory~251_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~251_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~252_combout\);

-- Location: FF_X110_Y13_N31
\inst|s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~140_q\);

-- Location: LCCOMB_X111_Y16_N4
\inst|s_memory~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~249_combout\ = (!\SW[12]~input_o\ & (!\SW[13]~input_o\ & (\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~249_combout\);

-- Location: LCCOMB_X111_Y14_N26
\inst|s_memory~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~250_combout\ = (\inst|s_memory~249_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~249_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~250_combout\);

-- Location: FF_X111_Y14_N27
\inst|s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~116_q\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X111_Y16_N22
\inst|s_memory~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~247_combout\ = (!\SW[12]~input_o\ & (\SW[13]~input_o\ & (\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~247_combout\);

-- Location: LCCOMB_X111_Y14_N18
\inst|s_memory~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~248_combout\ = (\inst|s_memory~247_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~247_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~248_combout\);

-- Location: FF_X111_Y14_N9
\inst|s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~132_q\);

-- Location: LCCOMB_X111_Y14_N8
\inst|s_memory~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~148_combout\ = (\SW[9]~input_o\ & (((\inst|s_memory~132_q\) # (\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\inst|s_memory~116_q\ & ((!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~116_q\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~132_q\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~148_combout\);

-- Location: LCCOMB_X110_Y13_N30
\inst|s_memory~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~149_combout\ = (\SW[8]~input_o\ & ((\inst|s_memory~148_combout\ & ((\inst|s_memory~140_q\))) # (!\inst|s_memory~148_combout\ & (\inst|s_memory~124_q\)))) # (!\SW[8]~input_o\ & (((\inst|s_memory~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|s_memory~124_q\,
	datac => \inst|s_memory~140_q\,
	datad => \inst|s_memory~148_combout\,
	combout => \inst|s_memory~149_combout\);

-- Location: LCCOMB_X112_Y16_N4
\inst|s_memory~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~221_combout\ = (!\SW[12]~input_o\ & (\SW[13]~input_o\ & (!\SW[14]~input_o\ & \SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~221_combout\);

-- Location: LCCOMB_X113_Y13_N20
\inst|s_memory~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~222_combout\ = (\inst|s_memory~221_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~221_combout\,
	datab => \inst2|pulse~q\,
	combout => \inst|s_memory~222_combout\);

-- Location: FF_X113_Y13_N21
\inst|s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~100_q\);

-- Location: LCCOMB_X112_Y13_N28
\inst|s_memory~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~92feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \inst|s_memory~92feeder_combout\);

-- Location: LCCOMB_X112_Y16_N14
\inst|s_memory~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~223_combout\ = (\SW[12]~input_o\ & (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & \SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~223_combout\);

-- Location: LCCOMB_X112_Y13_N8
\inst|s_memory~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~224_combout\ = (\inst|s_memory~223_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~223_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~224_combout\);

-- Location: FF_X112_Y13_N29
\inst|s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~92feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~92_q\);

-- Location: LCCOMB_X112_Y16_N16
\inst|s_memory~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~225_combout\ = (!\SW[12]~input_o\ & (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & \SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~225_combout\);

-- Location: LCCOMB_X112_Y13_N4
\inst|s_memory~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~226_combout\ = (\inst|s_memory~225_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~225_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~226_combout\);

-- Location: FF_X112_Y13_N19
\inst|s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~84_q\);

-- Location: LCCOMB_X112_Y13_N18
\inst|s_memory~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~141_combout\ = (\SW[8]~input_o\ & ((\inst|s_memory~92_q\) # ((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (((\inst|s_memory~84_q\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|s_memory~92_q\,
	datac => \inst|s_memory~84_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~141_combout\);

-- Location: LCCOMB_X111_Y16_N8
\inst|s_memory~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~227_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ & (\SW[15]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~227_combout\);

-- Location: LCCOMB_X111_Y13_N8
\inst|s_memory~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~228_combout\ = (\inst|s_memory~227_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~227_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~228_combout\);

-- Location: FF_X111_Y13_N13
\inst|s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~108_q\);

-- Location: LCCOMB_X111_Y13_N12
\inst|s_memory~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~142_combout\ = (\inst|s_memory~141_combout\ & (((\inst|s_memory~108_q\) # (!\SW[9]~input_o\)))) # (!\inst|s_memory~141_combout\ & (\inst|s_memory~100_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~100_q\,
	datab => \inst|s_memory~141_combout\,
	datac => \inst|s_memory~108_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~142_combout\);

-- Location: LCCOMB_X111_Y16_N16
\inst|s_memory~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~233_combout\ = (!\SW[12]~input_o\ & (!\SW[13]~input_o\ & (!\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~233_combout\);

-- Location: LCCOMB_X114_Y14_N18
\inst|s_memory~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~234_combout\ = (\inst2|pulse~q\ & \inst|s_memory~233_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pulse~q\,
	datab => \inst|s_memory~233_combout\,
	combout => \inst|s_memory~234_combout\);

-- Location: FF_X114_Y14_N7
\inst|s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~52_q\);

-- Location: LCCOMB_X111_Y16_N6
\inst|s_memory~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~231_combout\ = (!\SW[12]~input_o\ & (\SW[13]~input_o\ & (!\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~231_combout\);

-- Location: LCCOMB_X114_Y14_N4
\inst|s_memory~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~232_combout\ = (\inst2|pulse~q\ & \inst|s_memory~231_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pulse~q\,
	datad => \inst|s_memory~231_combout\,
	combout => \inst|s_memory~232_combout\);

-- Location: FF_X114_Y14_N1
\inst|s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~68_q\);

-- Location: LCCOMB_X114_Y14_N6
\inst|s_memory~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~143_combout\ = (\SW[8]~input_o\ & (\SW[9]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\inst|s_memory~68_q\))) # (!\SW[9]~input_o\ & (\inst|s_memory~52_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~52_q\,
	datad => \inst|s_memory~68_q\,
	combout => \inst|s_memory~143_combout\);

-- Location: LCCOMB_X111_Y16_N18
\inst|s_memory~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~235_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ & (!\SW[15]~input_o\ & \SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~235_combout\);

-- Location: LCCOMB_X110_Y14_N2
\inst|s_memory~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~236_combout\ = (\inst|s_memory~235_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~235_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~236_combout\);

-- Location: FF_X110_Y14_N13
\inst|s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~76_q\);

-- Location: LCCOMB_X112_Y16_N6
\inst|s_memory~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~229_combout\ = (\SW[12]~input_o\ & (!\SW[13]~input_o\ & (\SW[14]~input_o\ & !\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~229_combout\);

-- Location: LCCOMB_X113_Y14_N16
\inst|s_memory~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~230_combout\ = (\inst|s_memory~229_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~229_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~230_combout\);

-- Location: FF_X113_Y14_N17
\inst|s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~60_q\);

-- Location: LCCOMB_X110_Y14_N12
\inst|s_memory~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~144_combout\ = (\inst|s_memory~143_combout\ & (((\inst|s_memory~76_q\)) # (!\SW[8]~input_o\))) # (!\inst|s_memory~143_combout\ & (\SW[8]~input_o\ & ((\inst|s_memory~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~143_combout\,
	datab => \SW[8]~input_o\,
	datac => \inst|s_memory~76_q\,
	datad => \inst|s_memory~60_q\,
	combout => \inst|s_memory~144_combout\);

-- Location: LCCOMB_X112_Y16_N12
\inst|s_memory~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~237_combout\ = (!\SW[12]~input_o\ & (\SW[13]~input_o\ & (!\SW[14]~input_o\ & !\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~237_combout\);

-- Location: LCCOMB_X113_Y13_N0
\inst|s_memory~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~238_combout\ = (\inst|s_memory~237_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~237_combout\,
	datab => \inst2|pulse~q\,
	combout => \inst|s_memory~238_combout\);

-- Location: FF_X113_Y13_N27
\inst|s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~36_q\);

-- Location: LCCOMB_X112_Y16_N28
\inst|s_memory~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~241_combout\ = (!\SW[12]~input_o\ & (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & !\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~241_combout\);

-- Location: LCCOMB_X112_Y14_N28
\inst|s_memory~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~242_combout\ = (\inst|s_memory~241_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~241_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~242_combout\);

-- Location: FF_X112_Y14_N31
\inst|s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~20_q\);

-- Location: LCCOMB_X112_Y16_N22
\inst|s_memory~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~239_combout\ = (\SW[12]~input_o\ & (!\SW[13]~input_o\ & (!\SW[14]~input_o\ & !\SW[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \inst|s_memory~239_combout\);

-- Location: LCCOMB_X112_Y14_N16
\inst|s_memory~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~240_combout\ = (\inst|s_memory~239_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~239_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~240_combout\);

-- Location: FF_X112_Y14_N29
\inst|s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~28_q\);

-- Location: LCCOMB_X112_Y14_N30
\inst|s_memory~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~145_combout\ = (\SW[9]~input_o\ & (\SW[8]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\inst|s_memory~28_q\))) # (!\SW[8]~input_o\ & (\inst|s_memory~20_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \inst|s_memory~20_q\,
	datad => \inst|s_memory~28_q\,
	combout => \inst|s_memory~145_combout\);

-- Location: LCCOMB_X111_Y16_N0
\inst|s_memory~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~243_combout\ = (\SW[12]~input_o\ & (\SW[13]~input_o\ & (!\SW[15]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst|s_memory~243_combout\);

-- Location: LCCOMB_X111_Y13_N4
\inst|s_memory~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~244_combout\ = (\inst|s_memory~243_combout\ & \inst2|pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_memory~243_combout\,
	datad => \inst2|pulse~q\,
	combout => \inst|s_memory~244_combout\);

-- Location: FF_X111_Y13_N27
\inst|s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~44_q\);

-- Location: LCCOMB_X111_Y13_N26
\inst|s_memory~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~146_combout\ = (\inst|s_memory~145_combout\ & (((\inst|s_memory~44_q\) # (!\SW[9]~input_o\)))) # (!\inst|s_memory~145_combout\ & (\inst|s_memory~36_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~36_q\,
	datab => \inst|s_memory~145_combout\,
	datac => \inst|s_memory~44_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~146_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X110_Y13_N8
\inst|s_memory~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~147_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~144_combout\) # ((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~146_combout\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~144_combout\,
	datab => \inst|s_memory~146_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~147_combout\);

-- Location: LCCOMB_X110_Y13_N16
\inst|s_memory~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~150_combout\ = (\inst|s_memory~147_combout\ & ((\inst|s_memory~149_combout\) # ((!\SW[11]~input_o\)))) # (!\inst|s_memory~147_combout\ & (((\inst|s_memory~142_combout\ & \SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~149_combout\,
	datab => \inst|s_memory~142_combout\,
	datac => \inst|s_memory~147_combout\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~150_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X114_Y14_N29
\inst|s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~67_q\);

-- Location: FF_X110_Y14_N7
\inst|s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~131_q\);

-- Location: FF_X113_Y13_N9
\inst|s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~99_q\);

-- Location: FF_X113_Y13_N31
\inst|s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~35_q\);

-- Location: LCCOMB_X113_Y13_N30
\inst|s_memory~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~151_combout\ = (\SW[11]~input_o\ & ((\inst|s_memory~99_q\) # ((\SW[10]~input_o\)))) # (!\SW[11]~input_o\ & (((\inst|s_memory~35_q\ & !\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \inst|s_memory~99_q\,
	datac => \inst|s_memory~35_q\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~151_combout\);

-- Location: LCCOMB_X110_Y14_N6
\inst|s_memory~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~152_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~151_combout\ & ((\inst|s_memory~131_q\))) # (!\inst|s_memory~151_combout\ & (\inst|s_memory~67_q\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~67_q\,
	datac => \inst|s_memory~131_q\,
	datad => \inst|s_memory~151_combout\,
	combout => \inst|s_memory~152_combout\);

-- Location: FF_X112_Y14_N27
\inst|s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~19_q\);

-- Location: FF_X112_Y13_N23
\inst|s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~83_q\);

-- Location: LCCOMB_X112_Y14_N26
\inst|s_memory~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~155_combout\ = (\SW[10]~input_o\ & (\SW[11]~input_o\)) # (!\SW[10]~input_o\ & ((\SW[11]~input_o\ & ((\inst|s_memory~83_q\))) # (!\SW[11]~input_o\ & (\inst|s_memory~19_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \inst|s_memory~19_q\,
	datad => \inst|s_memory~83_q\,
	combout => \inst|s_memory~155_combout\);

-- Location: FF_X111_Y14_N13
\inst|s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~115_q\);

-- Location: FF_X114_Y14_N15
\inst|s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~51_q\);

-- Location: LCCOMB_X111_Y14_N12
\inst|s_memory~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~156_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~155_combout\ & (\inst|s_memory~115_q\)) # (!\inst|s_memory~155_combout\ & ((\inst|s_memory~51_q\))))) # (!\SW[10]~input_o\ & (\inst|s_memory~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~155_combout\,
	datac => \inst|s_memory~115_q\,
	datad => \inst|s_memory~51_q\,
	combout => \inst|s_memory~156_combout\);

-- Location: FF_X112_Y13_N5
\inst|s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~91_q\);

-- Location: FF_X113_Y14_N25
\inst|s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~59_q\);

-- Location: FF_X112_Y14_N25
\inst|s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~27_q\);

-- Location: LCCOMB_X112_Y14_N24
\inst|s_memory~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~153_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~59_q\) # ((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~27_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~59_q\,
	datac => \inst|s_memory~27_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~153_combout\);

-- Location: FF_X113_Y14_N7
\inst|s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~123_q\);

-- Location: LCCOMB_X113_Y14_N6
\inst|s_memory~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~154_combout\ = (\inst|s_memory~153_combout\ & (((\inst|s_memory~123_q\) # (!\SW[11]~input_o\)))) # (!\inst|s_memory~153_combout\ & (\inst|s_memory~91_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~91_q\,
	datab => \inst|s_memory~153_combout\,
	datac => \inst|s_memory~123_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~154_combout\);

-- Location: LCCOMB_X111_Y14_N10
\inst|s_memory~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~157_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\inst|s_memory~154_combout\))) # (!\SW[8]~input_o\ & (\inst|s_memory~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~156_combout\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~154_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~157_combout\);

-- Location: FF_X111_Y13_N9
\inst|s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~107_q\);

-- Location: FF_X110_Y14_N29
\inst|s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~75_q\);

-- Location: FF_X111_Y13_N19
\inst|s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~43_q\);

-- Location: LCCOMB_X111_Y13_N18
\inst|s_memory~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~158_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~75_q\) # ((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~43_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~75_q\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~43_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~158_combout\);

-- Location: FF_X110_Y13_N23
\inst|s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~139_q\);

-- Location: LCCOMB_X110_Y13_N22
\inst|s_memory~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~159_combout\ = (\inst|s_memory~158_combout\ & (((\inst|s_memory~139_q\) # (!\SW[11]~input_o\)))) # (!\inst|s_memory~158_combout\ & (\inst|s_memory~107_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~107_q\,
	datab => \inst|s_memory~158_combout\,
	datac => \inst|s_memory~139_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~159_combout\);

-- Location: LCCOMB_X109_Y14_N28
\inst|s_memory~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~160_combout\ = (\inst|s_memory~157_combout\ & (((\inst|s_memory~159_combout\) # (!\SW[9]~input_o\)))) # (!\inst|s_memory~157_combout\ & (\inst|s_memory~152_combout\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~152_combout\,
	datab => \inst|s_memory~157_combout\,
	datac => \inst|s_memory~159_combout\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~160_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X113_Y14_N8
\inst|s_memory~58feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~58feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \inst|s_memory~58feeder_combout\);

-- Location: FF_X113_Y14_N9
\inst|s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~58feeder_combout\,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~58_q\);

-- Location: FF_X114_Y14_N27
\inst|s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~50_q\);

-- Location: LCCOMB_X114_Y14_N26
\inst|s_memory~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~161_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\inst|s_memory~58_q\)) # (!\SW[8]~input_o\ & ((\inst|s_memory~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~58_q\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~50_q\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~161_combout\);

-- Location: FF_X114_Y14_N25
\inst|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~66_q\);

-- Location: FF_X110_Y14_N31
\inst|s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~74_q\);

-- Location: LCCOMB_X110_Y14_N30
\inst|s_memory~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~162_combout\ = (\inst|s_memory~161_combout\ & (((\inst|s_memory~74_q\) # (!\SW[9]~input_o\)))) # (!\inst|s_memory~161_combout\ & (\inst|s_memory~66_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~161_combout\,
	datab => \inst|s_memory~66_q\,
	datac => \inst|s_memory~74_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~162_combout\);

-- Location: LCCOMB_X111_Y14_N16
\inst|s_memory~130feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~130feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \inst|s_memory~130feeder_combout\);

-- Location: FF_X111_Y14_N17
\inst|s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~130feeder_combout\,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~130_q\);

-- Location: LCCOMB_X113_Y14_N26
\inst|s_memory~122feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~122feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \inst|s_memory~122feeder_combout\);

-- Location: FF_X113_Y14_N27
\inst|s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~122feeder_combout\,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~122_q\);

-- Location: FF_X111_Y14_N15
\inst|s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~114_q\);

-- Location: LCCOMB_X111_Y14_N14
\inst|s_memory~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~168_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\inst|s_memory~122_q\)) # (!\SW[8]~input_o\ & ((\inst|s_memory~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~122_q\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~114_q\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~168_combout\);

-- Location: FF_X110_Y13_N3
\inst|s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~138_q\);

-- Location: LCCOMB_X110_Y13_N2
\inst|s_memory~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~169_combout\ = (\inst|s_memory~168_combout\ & (((\inst|s_memory~138_q\) # (!\SW[9]~input_o\)))) # (!\inst|s_memory~168_combout\ & (\inst|s_memory~130_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~130_q\,
	datab => \inst|s_memory~168_combout\,
	datac => \inst|s_memory~138_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~169_combout\);

-- Location: FF_X112_Y14_N7
\inst|s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~18_q\);

-- Location: FF_X113_Y13_N11
\inst|s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~34_q\);

-- Location: LCCOMB_X112_Y14_N6
\inst|s_memory~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~165_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\) # ((\inst|s_memory~34_q\)))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & (\inst|s_memory~18_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \inst|s_memory~18_q\,
	datad => \inst|s_memory~34_q\,
	combout => \inst|s_memory~165_combout\);

-- Location: LCCOMB_X112_Y14_N8
\inst|s_memory~26feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~26feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \inst|s_memory~26feeder_combout\);

-- Location: FF_X112_Y14_N9
\inst|s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~26feeder_combout\,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~26_q\);

-- Location: FF_X111_Y13_N15
\inst|s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~42_q\);

-- Location: LCCOMB_X111_Y13_N14
\inst|s_memory~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~166_combout\ = (\inst|s_memory~165_combout\ & (((\inst|s_memory~42_q\) # (!\SW[8]~input_o\)))) # (!\inst|s_memory~165_combout\ & (\inst|s_memory~26_q\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~165_combout\,
	datab => \inst|s_memory~26_q\,
	datac => \inst|s_memory~42_q\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~166_combout\);

-- Location: LCCOMB_X112_Y13_N12
\inst|s_memory~90feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~90feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \inst|s_memory~90feeder_combout\);

-- Location: FF_X112_Y13_N13
\inst|s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~90feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~90_q\);

-- Location: FF_X113_Y13_N25
\inst|s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~98_q\);

-- Location: FF_X112_Y13_N11
\inst|s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~82_q\);

-- Location: LCCOMB_X112_Y13_N10
\inst|s_memory~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~163_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\inst|s_memory~98_q\)) # (!\SW[9]~input_o\ & ((\inst|s_memory~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|s_memory~98_q\,
	datac => \inst|s_memory~82_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~163_combout\);

-- Location: FF_X111_Y13_N29
\inst|s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~106_q\);

-- Location: LCCOMB_X111_Y13_N28
\inst|s_memory~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~164_combout\ = (\inst|s_memory~163_combout\ & (((\inst|s_memory~106_q\) # (!\SW[8]~input_o\)))) # (!\inst|s_memory~163_combout\ & (\inst|s_memory~90_q\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~90_q\,
	datab => \inst|s_memory~163_combout\,
	datac => \inst|s_memory~106_q\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~164_combout\);

-- Location: LCCOMB_X110_Y13_N12
\inst|s_memory~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~167_combout\ = (\SW[11]~input_o\ & (((\SW[10]~input_o\) # (\inst|s_memory~164_combout\)))) # (!\SW[11]~input_o\ & (\inst|s_memory~166_combout\ & (!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~166_combout\,
	datab => \SW[11]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst|s_memory~164_combout\,
	combout => \inst|s_memory~167_combout\);

-- Location: LCCOMB_X110_Y13_N4
\inst|s_memory~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~170_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~167_combout\ & ((\inst|s_memory~169_combout\))) # (!\inst|s_memory~167_combout\ & (\inst|s_memory~162_combout\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~162_combout\,
	datab => \inst|s_memory~169_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|s_memory~167_combout\,
	combout => \inst|s_memory~170_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X112_Y13_N0
\inst|s_memory~89feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~89feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~89feeder_combout\);

-- Location: FF_X112_Y13_N1
\inst|s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~89feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~89_q\);

-- Location: FF_X112_Y14_N1
\inst|s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~25_q\);

-- Location: LCCOMB_X112_Y14_N0
\inst|s_memory~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~171_combout\ = (\SW[10]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[11]~input_o\ & (\inst|s_memory~89_q\)) # (!\SW[11]~input_o\ & ((\inst|s_memory~25_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~89_q\,
	datac => \inst|s_memory~25_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~171_combout\);

-- Location: FF_X113_Y14_N31
\inst|s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~121_q\);

-- Location: LCCOMB_X113_Y14_N12
\inst|s_memory~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~57feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~57feeder_combout\);

-- Location: FF_X113_Y14_N13
\inst|s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~57feeder_combout\,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~57_q\);

-- Location: LCCOMB_X113_Y14_N30
\inst|s_memory~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~172_combout\ = (\inst|s_memory~171_combout\ & (((\inst|s_memory~121_q\)) # (!\SW[10]~input_o\))) # (!\inst|s_memory~171_combout\ & (\SW[10]~input_o\ & ((\inst|s_memory~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~171_combout\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~121_q\,
	datad => \inst|s_memory~57_q\,
	combout => \inst|s_memory~172_combout\);

-- Location: LCCOMB_X111_Y13_N16
\inst|s_memory~105feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~105feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~105feeder_combout\);

-- Location: FF_X111_Y13_N17
\inst|s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~105feeder_combout\,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~105_q\);

-- Location: FF_X111_Y13_N7
\inst|s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~41_q\);

-- Location: LCCOMB_X111_Y13_N6
\inst|s_memory~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~178_combout\ = (\SW[10]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[11]~input_o\ & (\inst|s_memory~105_q\)) # (!\SW[11]~input_o\ & ((\inst|s_memory~41_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~105_q\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~41_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~178_combout\);

-- Location: FF_X110_Y13_N15
\inst|s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~137_q\);

-- Location: LCCOMB_X110_Y14_N20
\inst|s_memory~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~73feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~73feeder_combout\);

-- Location: FF_X110_Y14_N21
\inst|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~73feeder_combout\,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~73_q\);

-- Location: LCCOMB_X110_Y13_N14
\inst|s_memory~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~179_combout\ = (\inst|s_memory~178_combout\ & (((\inst|s_memory~137_q\)) # (!\SW[10]~input_o\))) # (!\inst|s_memory~178_combout\ & (\SW[10]~input_o\ & ((\inst|s_memory~73_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~178_combout\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~137_q\,
	datad => \inst|s_memory~73_q\,
	combout => \inst|s_memory~179_combout\);

-- Location: LCCOMB_X113_Y13_N16
\inst|s_memory~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~97feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~97feeder_combout\);

-- Location: FF_X113_Y13_N17
\inst|s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~97feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~97_q\);

-- Location: LCCOMB_X111_Y14_N0
\inst|s_memory~129feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~129feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~129feeder_combout\);

-- Location: FF_X111_Y14_N1
\inst|s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~129feeder_combout\,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~129_q\);

-- Location: FF_X113_Y13_N23
\inst|s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~33_q\);

-- Location: FF_X114_Y14_N17
\inst|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~65_q\);

-- Location: LCCOMB_X113_Y13_N22
\inst|s_memory~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~173_combout\ = (\SW[11]~input_o\ & (\SW[10]~input_o\)) # (!\SW[11]~input_o\ & ((\SW[10]~input_o\ & ((\inst|s_memory~65_q\))) # (!\SW[10]~input_o\ & (\inst|s_memory~33_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~33_q\,
	datad => \inst|s_memory~65_q\,
	combout => \inst|s_memory~173_combout\);

-- Location: LCCOMB_X110_Y13_N10
\inst|s_memory~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~174_combout\ = (\inst|s_memory~173_combout\ & (((\inst|s_memory~129_q\) # (!\SW[11]~input_o\)))) # (!\inst|s_memory~173_combout\ & (\inst|s_memory~97_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~97_q\,
	datab => \inst|s_memory~129_q\,
	datac => \inst|s_memory~173_combout\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~174_combout\);

-- Location: FF_X114_Y14_N3
\inst|s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~49_q\);

-- Location: FF_X112_Y14_N3
\inst|s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~17_q\);

-- Location: LCCOMB_X112_Y14_N2
\inst|s_memory~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~175_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~49_q\) # ((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~17_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~49_q\,
	datac => \inst|s_memory~17_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~175_combout\);

-- Location: LCCOMB_X112_Y13_N14
\inst|s_memory~81feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~81feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \inst|s_memory~81feeder_combout\);

-- Location: FF_X112_Y13_N15
\inst|s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~81feeder_combout\,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~81_q\);

-- Location: FF_X111_Y14_N31
\inst|s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~113_q\);

-- Location: LCCOMB_X111_Y14_N30
\inst|s_memory~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~176_combout\ = (\inst|s_memory~175_combout\ & (((\inst|s_memory~113_q\) # (!\SW[11]~input_o\)))) # (!\inst|s_memory~175_combout\ & (\inst|s_memory~81_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~175_combout\,
	datab => \inst|s_memory~81_q\,
	datac => \inst|s_memory~113_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~176_combout\);

-- Location: LCCOMB_X110_Y13_N20
\inst|s_memory~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~177_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\inst|s_memory~174_combout\)) # (!\SW[9]~input_o\ & ((\inst|s_memory~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~174_combout\,
	datab => \inst|s_memory~176_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~177_combout\);

-- Location: LCCOMB_X110_Y13_N28
\inst|s_memory~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~180_combout\ = (\SW[8]~input_o\ & ((\inst|s_memory~177_combout\ & ((\inst|s_memory~179_combout\))) # (!\inst|s_memory~177_combout\ & (\inst|s_memory~172_combout\)))) # (!\SW[8]~input_o\ & (((\inst|s_memory~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|s_memory~172_combout\,
	datac => \inst|s_memory~179_combout\,
	datad => \inst|s_memory~177_combout\,
	combout => \inst|s_memory~180_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X113_Y13_N29
\inst|s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~96_q\);

-- Location: LCCOMB_X112_Y13_N20
\inst|s_memory~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~88feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~88feeder_combout\);

-- Location: FF_X112_Y13_N21
\inst|s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~88feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~88_q\);

-- Location: FF_X112_Y13_N27
\inst|s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~80_q\);

-- Location: LCCOMB_X112_Y13_N26
\inst|s_memory~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~181_combout\ = (\SW[8]~input_o\ & ((\inst|s_memory~88_q\) # ((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (((\inst|s_memory~80_q\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|s_memory~88_q\,
	datac => \inst|s_memory~80_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~181_combout\);

-- Location: FF_X111_Y13_N25
\inst|s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~104_q\);

-- Location: LCCOMB_X111_Y13_N24
\inst|s_memory~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~182_combout\ = (\inst|s_memory~181_combout\ & (((\inst|s_memory~104_q\) # (!\SW[9]~input_o\)))) # (!\inst|s_memory~181_combout\ & (\inst|s_memory~96_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~96_q\,
	datab => \inst|s_memory~181_combout\,
	datac => \inst|s_memory~104_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~182_combout\);

-- Location: FF_X112_Y14_N21
\inst|s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~24_q\);

-- Location: FF_X112_Y14_N19
\inst|s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~16_q\);

-- Location: LCCOMB_X112_Y14_N20
\inst|s_memory~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~185_combout\ = (\SW[9]~input_o\ & (\SW[8]~input_o\)) # (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & (\inst|s_memory~24_q\)) # (!\SW[8]~input_o\ & ((\inst|s_memory~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \inst|s_memory~24_q\,
	datad => \inst|s_memory~16_q\,
	combout => \inst|s_memory~185_combout\);

-- Location: FF_X113_Y13_N19
\inst|s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~32_q\);

-- Location: FF_X111_Y13_N3
\inst|s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~40_q\);

-- Location: LCCOMB_X111_Y13_N2
\inst|s_memory~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~186_combout\ = (\inst|s_memory~185_combout\ & (((\inst|s_memory~40_q\) # (!\SW[9]~input_o\)))) # (!\inst|s_memory~185_combout\ & (\inst|s_memory~32_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~185_combout\,
	datab => \inst|s_memory~32_q\,
	datac => \inst|s_memory~40_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~186_combout\);

-- Location: FF_X113_Y14_N1
\inst|s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~56_q\);

-- Location: FF_X110_Y14_N23
\inst|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~72_q\);

-- Location: FF_X114_Y14_N21
\inst|s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~64_q\);

-- Location: FF_X114_Y14_N11
\inst|s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~48_q\);

-- Location: LCCOMB_X114_Y14_N10
\inst|s_memory~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~183_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\inst|s_memory~64_q\)) # (!\SW[9]~input_o\ & ((\inst|s_memory~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|s_memory~64_q\,
	datac => \inst|s_memory~48_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~183_combout\);

-- Location: LCCOMB_X110_Y14_N22
\inst|s_memory~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~184_combout\ = (\SW[8]~input_o\ & ((\inst|s_memory~183_combout\ & ((\inst|s_memory~72_q\))) # (!\inst|s_memory~183_combout\ & (\inst|s_memory~56_q\)))) # (!\SW[8]~input_o\ & (((\inst|s_memory~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~56_q\,
	datab => \SW[8]~input_o\,
	datac => \inst|s_memory~72_q\,
	datad => \inst|s_memory~183_combout\,
	combout => \inst|s_memory~184_combout\);

-- Location: LCCOMB_X110_Y14_N8
\inst|s_memory~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~187_combout\ = (\SW[11]~input_o\ & (((\SW[10]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[10]~input_o\ & ((\inst|s_memory~184_combout\))) # (!\SW[10]~input_o\ & (\inst|s_memory~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~186_combout\,
	datab => \SW[11]~input_o\,
	datac => \inst|s_memory~184_combout\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~187_combout\);

-- Location: FF_X111_Y14_N3
\inst|s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~112_q\);

-- Location: FF_X111_Y14_N21
\inst|s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~128_q\);

-- Location: LCCOMB_X111_Y14_N2
\inst|s_memory~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~188_combout\ = (\SW[8]~input_o\ & (\SW[9]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\inst|s_memory~128_q\))) # (!\SW[9]~input_o\ & (\inst|s_memory~112_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~112_q\,
	datad => \inst|s_memory~128_q\,
	combout => \inst|s_memory~188_combout\);

-- Location: LCCOMB_X110_Y13_N18
\inst|s_memory~136feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~136feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \inst|s_memory~136feeder_combout\);

-- Location: FF_X110_Y13_N19
\inst|s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~136feeder_combout\,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~136_q\);

-- Location: FF_X113_Y14_N15
\inst|s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~120_q\);

-- Location: LCCOMB_X110_Y14_N18
\inst|s_memory~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~189_combout\ = (\inst|s_memory~188_combout\ & (((\inst|s_memory~136_q\)) # (!\SW[8]~input_o\))) # (!\inst|s_memory~188_combout\ & (\SW[8]~input_o\ & ((\inst|s_memory~120_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~188_combout\,
	datab => \SW[8]~input_o\,
	datac => \inst|s_memory~136_q\,
	datad => \inst|s_memory~120_q\,
	combout => \inst|s_memory~189_combout\);

-- Location: LCCOMB_X110_Y14_N4
\inst|s_memory~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~190_combout\ = (\SW[11]~input_o\ & ((\inst|s_memory~187_combout\ & ((\inst|s_memory~189_combout\))) # (!\inst|s_memory~187_combout\ & (\inst|s_memory~182_combout\)))) # (!\SW[11]~input_o\ & (((\inst|s_memory~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~182_combout\,
	datab => \SW[11]~input_o\,
	datac => \inst|s_memory~187_combout\,
	datad => \inst|s_memory~189_combout\,
	combout => \inst|s_memory~190_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X110_Y14_N3
\inst|s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~71_q\);

-- Location: FF_X111_Y13_N1
\inst|s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~39_q\);

-- Location: LCCOMB_X111_Y13_N0
\inst|s_memory~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~198_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~71_q\) # ((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~39_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~71_q\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~39_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~198_combout\);

-- Location: LCCOMB_X110_Y13_N24
\inst|s_memory~103feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~103feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~103feeder_combout\);

-- Location: FF_X110_Y13_N25
\inst|s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~103feeder_combout\,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~103_q\);

-- Location: FF_X110_Y13_N7
\inst|s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~135_q\);

-- Location: LCCOMB_X110_Y13_N6
\inst|s_memory~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~199_combout\ = (\inst|s_memory~198_combout\ & (((\inst|s_memory~135_q\) # (!\SW[11]~input_o\)))) # (!\inst|s_memory~198_combout\ & (\inst|s_memory~103_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~198_combout\,
	datab => \inst|s_memory~103_q\,
	datac => \inst|s_memory~135_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~199_combout\);

-- Location: LCCOMB_X112_Y13_N6
\inst|s_memory~79feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~79feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~79feeder_combout\);

-- Location: FF_X112_Y13_N7
\inst|s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~79feeder_combout\,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~79_q\);

-- Location: FF_X112_Y14_N15
\inst|s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~15_q\);

-- Location: LCCOMB_X112_Y14_N14
\inst|s_memory~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~195_combout\ = (\SW[10]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[11]~input_o\ & (\inst|s_memory~79_q\)) # (!\SW[11]~input_o\ & ((\inst|s_memory~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~79_q\,
	datac => \inst|s_memory~15_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~195_combout\);

-- Location: FF_X111_Y14_N7
\inst|s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~111_q\);

-- Location: LCCOMB_X114_Y14_N30
\inst|s_memory~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~47feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~47feeder_combout\);

-- Location: FF_X114_Y14_N31
\inst|s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~47feeder_combout\,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~47_q\);

-- Location: LCCOMB_X111_Y14_N6
\inst|s_memory~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~196_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~195_combout\ & (\inst|s_memory~111_q\)) # (!\inst|s_memory~195_combout\ & ((\inst|s_memory~47_q\))))) # (!\SW[10]~input_o\ & (\inst|s_memory~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~195_combout\,
	datac => \inst|s_memory~111_q\,
	datad => \inst|s_memory~47_q\,
	combout => \inst|s_memory~196_combout\);

-- Location: LCCOMB_X112_Y13_N24
\inst|s_memory~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~87feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \inst|s_memory~87feeder_combout\);

-- Location: FF_X112_Y13_N25
\inst|s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~87feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~87_q\);

-- Location: FF_X112_Y14_N5
\inst|s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~23_q\);

-- Location: FF_X113_Y14_N5
\inst|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~55_q\);

-- Location: LCCOMB_X112_Y14_N4
\inst|s_memory~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~193_combout\ = (\SW[10]~input_o\ & ((\SW[11]~input_o\) # ((\inst|s_memory~55_q\)))) # (!\SW[10]~input_o\ & (!\SW[11]~input_o\ & (\inst|s_memory~23_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \inst|s_memory~23_q\,
	datad => \inst|s_memory~55_q\,
	combout => \inst|s_memory~193_combout\);

-- Location: FF_X113_Y14_N11
\inst|s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~119_q\);

-- Location: LCCOMB_X113_Y14_N10
\inst|s_memory~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~194_combout\ = (\inst|s_memory~193_combout\ & (((\inst|s_memory~119_q\) # (!\SW[11]~input_o\)))) # (!\inst|s_memory~193_combout\ & (\inst|s_memory~87_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~87_q\,
	datab => \inst|s_memory~193_combout\,
	datac => \inst|s_memory~119_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~194_combout\);

-- Location: LCCOMB_X111_Y14_N4
\inst|s_memory~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~197_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\inst|s_memory~194_combout\))) # (!\SW[8]~input_o\ & (\inst|s_memory~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~196_combout\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~194_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~197_combout\);

-- Location: FF_X113_Y13_N3
\inst|s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~31_q\);

-- Location: FF_X113_Y13_N13
\inst|s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~95_q\);

-- Location: LCCOMB_X113_Y13_N2
\inst|s_memory~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~191_combout\ = (\SW[11]~input_o\ & ((\SW[10]~input_o\) # ((\inst|s_memory~95_q\)))) # (!\SW[11]~input_o\ & (!\SW[10]~input_o\ & (\inst|s_memory~31_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~31_q\,
	datad => \inst|s_memory~95_q\,
	combout => \inst|s_memory~191_combout\);

-- Location: FF_X111_Y14_N29
\inst|s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~127_q\);

-- Location: FF_X114_Y14_N5
\inst|s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~63_q\);

-- Location: LCCOMB_X111_Y14_N28
\inst|s_memory~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~192_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~191_combout\ & (\inst|s_memory~127_q\)) # (!\inst|s_memory~191_combout\ & ((\inst|s_memory~63_q\))))) # (!\SW[10]~input_o\ & (\inst|s_memory~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~191_combout\,
	datac => \inst|s_memory~127_q\,
	datad => \inst|s_memory~63_q\,
	combout => \inst|s_memory~192_combout\);

-- Location: LCCOMB_X110_Y13_N0
\inst|s_memory~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~200_combout\ = (\SW[9]~input_o\ & ((\inst|s_memory~197_combout\ & (\inst|s_memory~199_combout\)) # (!\inst|s_memory~197_combout\ & ((\inst|s_memory~192_combout\))))) # (!\SW[9]~input_o\ & (((\inst|s_memory~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~199_combout\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~197_combout\,
	datad => \inst|s_memory~192_combout\,
	combout => \inst|s_memory~200_combout\);

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

-- Location: FF_X113_Y14_N29
\inst|s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~54_q\);

-- Location: FF_X114_Y14_N23
\inst|s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~46_q\);

-- Location: LCCOMB_X114_Y14_N22
\inst|s_memory~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~201_combout\ = (\SW[8]~input_o\ & ((\inst|s_memory~54_q\) # ((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & (((\inst|s_memory~46_q\ & !\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|s_memory~54_q\,
	datac => \inst|s_memory~46_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~201_combout\);

-- Location: FF_X114_Y14_N13
\inst|s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~62_q\);

-- Location: FF_X110_Y14_N25
\inst|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~70_q\);

-- Location: LCCOMB_X110_Y14_N24
\inst|s_memory~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~202_combout\ = (\inst|s_memory~201_combout\ & (((\inst|s_memory~70_q\) # (!\SW[9]~input_o\)))) # (!\inst|s_memory~201_combout\ & (\inst|s_memory~62_q\ & ((\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~201_combout\,
	datab => \inst|s_memory~62_q\,
	datac => \inst|s_memory~70_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~202_combout\);

-- Location: FF_X112_Y13_N3
\inst|s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~78_q\);

-- Location: LCCOMB_X113_Y13_N4
\inst|s_memory~94feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~94feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~94feeder_combout\);

-- Location: FF_X113_Y13_N5
\inst|s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~94feeder_combout\,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~94_q\);

-- Location: LCCOMB_X112_Y13_N2
\inst|s_memory~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~203_combout\ = (\SW[8]~input_o\ & (\SW[9]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\inst|s_memory~94_q\))) # (!\SW[9]~input_o\ & (\inst|s_memory~78_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~78_q\,
	datad => \inst|s_memory~94_q\,
	combout => \inst|s_memory~203_combout\);

-- Location: LCCOMB_X112_Y13_N16
\inst|s_memory~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~86feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~86feeder_combout\);

-- Location: FF_X112_Y13_N17
\inst|s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~86feeder_combout\,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~86_q\);

-- Location: FF_X111_Y13_N23
\inst|s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~102_q\);

-- Location: LCCOMB_X111_Y13_N22
\inst|s_memory~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~204_combout\ = (\inst|s_memory~203_combout\ & (((\inst|s_memory~102_q\) # (!\SW[8]~input_o\)))) # (!\inst|s_memory~203_combout\ & (\inst|s_memory~86_q\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~203_combout\,
	datab => \inst|s_memory~86_q\,
	datac => \inst|s_memory~102_q\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~204_combout\);

-- Location: FF_X112_Y14_N17
\inst|s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~22_q\);

-- Location: FF_X112_Y14_N11
\inst|s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~14_q\);

-- Location: LCCOMB_X113_Y13_N14
\inst|s_memory~30feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~30feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst|s_memory~30feeder_combout\);

-- Location: FF_X113_Y13_N15
\inst|s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~30feeder_combout\,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~30_q\);

-- Location: LCCOMB_X112_Y14_N10
\inst|s_memory~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~205_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\) # ((\inst|s_memory~30_q\)))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\ & (\inst|s_memory~14_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \inst|s_memory~14_q\,
	datad => \inst|s_memory~30_q\,
	combout => \inst|s_memory~205_combout\);

-- Location: FF_X111_Y13_N21
\inst|s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~38_q\);

-- Location: LCCOMB_X111_Y13_N20
\inst|s_memory~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~206_combout\ = (\inst|s_memory~205_combout\ & (((\inst|s_memory~38_q\) # (!\SW[8]~input_o\)))) # (!\inst|s_memory~205_combout\ & (\inst|s_memory~22_q\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~22_q\,
	datab => \inst|s_memory~205_combout\,
	datac => \inst|s_memory~38_q\,
	datad => \SW[8]~input_o\,
	combout => \inst|s_memory~206_combout\);

-- Location: LCCOMB_X111_Y13_N30
\inst|s_memory~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~207_combout\ = (\SW[10]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[11]~input_o\ & (\inst|s_memory~204_combout\)) # (!\SW[11]~input_o\ & ((\inst|s_memory~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~204_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \inst|s_memory~206_combout\,
	combout => \inst|s_memory~207_combout\);

-- Location: FF_X111_Y14_N25
\inst|s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~110_q\);

-- Location: FF_X113_Y14_N19
\inst|s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~118_q\);

-- Location: LCCOMB_X111_Y14_N24
\inst|s_memory~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~208_combout\ = (\SW[8]~input_o\ & ((\SW[9]~input_o\) # ((\inst|s_memory~118_q\)))) # (!\SW[8]~input_o\ & (!\SW[9]~input_o\ & (\inst|s_memory~110_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \inst|s_memory~110_q\,
	datad => \inst|s_memory~118_q\,
	combout => \inst|s_memory~208_combout\);

-- Location: FF_X109_Y13_N1
\inst|s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~134_q\);

-- Location: FF_X111_Y14_N19
\inst|s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~126_q\);

-- Location: LCCOMB_X109_Y14_N18
\inst|s_memory~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~209_combout\ = (\inst|s_memory~208_combout\ & ((\inst|s_memory~134_q\) # ((!\SW[9]~input_o\)))) # (!\inst|s_memory~208_combout\ & (((\inst|s_memory~126_q\ & \SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~208_combout\,
	datab => \inst|s_memory~134_q\,
	datac => \inst|s_memory~126_q\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~209_combout\);

-- Location: LCCOMB_X109_Y14_N4
\inst|s_memory~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~210_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~207_combout\ & ((\inst|s_memory~209_combout\))) # (!\inst|s_memory~207_combout\ & (\inst|s_memory~202_combout\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~202_combout\,
	datac => \inst|s_memory~207_combout\,
	datad => \inst|s_memory~209_combout\,
	combout => \inst|s_memory~210_combout\);

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

-- Location: FF_X110_Y13_N27
\inst|s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~133_q\);

-- Location: FF_X111_Y13_N5
\inst|s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~101_q\);

-- Location: FF_X111_Y13_N11
\inst|s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~37_q\);

-- Location: LCCOMB_X111_Y13_N10
\inst|s_memory~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~218_combout\ = (\SW[10]~input_o\ & (((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[11]~input_o\ & (\inst|s_memory~101_q\)) # (!\SW[11]~input_o\ & ((\inst|s_memory~37_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~101_q\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~37_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~218_combout\);

-- Location: FF_X110_Y14_N11
\inst|s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~69_q\);

-- Location: LCCOMB_X110_Y14_N10
\inst|s_memory~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~219_combout\ = (\inst|s_memory~218_combout\ & ((\inst|s_memory~133_q\) # ((!\SW[10]~input_o\)))) # (!\inst|s_memory~218_combout\ & (((\inst|s_memory~69_q\ & \SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~133_q\,
	datab => \inst|s_memory~218_combout\,
	datac => \inst|s_memory~69_q\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~219_combout\);

-- Location: FF_X113_Y13_N1
\inst|s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~93_q\);

-- Location: FF_X114_Y14_N9
\inst|s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~61_q\);

-- Location: FF_X113_Y13_N7
\inst|s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~29_q\);

-- Location: LCCOMB_X113_Y13_N6
\inst|s_memory~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~213_combout\ = (\SW[11]~input_o\ & (((\SW[10]~input_o\)))) # (!\SW[11]~input_o\ & ((\SW[10]~input_o\ & (\inst|s_memory~61_q\)) # (!\SW[10]~input_o\ & ((\inst|s_memory~29_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \inst|s_memory~61_q\,
	datac => \inst|s_memory~29_q\,
	datad => \SW[10]~input_o\,
	combout => \inst|s_memory~213_combout\);

-- Location: FF_X110_Y14_N27
\inst|s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~125_q\);

-- Location: LCCOMB_X110_Y14_N26
\inst|s_memory~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~214_combout\ = (\inst|s_memory~213_combout\ & (((\inst|s_memory~125_q\) # (!\SW[11]~input_o\)))) # (!\inst|s_memory~213_combout\ & (\inst|s_memory~93_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~93_q\,
	datab => \inst|s_memory~213_combout\,
	datac => \inst|s_memory~125_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~214_combout\);

-- Location: FF_X112_Y13_N31
\inst|s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~77_q\);

-- Location: FF_X114_Y14_N19
\inst|s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~45_q\);

-- Location: FF_X112_Y14_N23
\inst|s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~13_q\);

-- Location: LCCOMB_X112_Y14_N22
\inst|s_memory~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~215_combout\ = (\SW[10]~input_o\ & ((\inst|s_memory~45_q\) # ((\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (((\inst|s_memory~13_q\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|s_memory~45_q\,
	datac => \inst|s_memory~13_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~215_combout\);

-- Location: FF_X111_Y14_N23
\inst|s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~109_q\);

-- Location: LCCOMB_X111_Y14_N22
\inst|s_memory~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~216_combout\ = (\inst|s_memory~215_combout\ & (((\inst|s_memory~109_q\) # (!\SW[11]~input_o\)))) # (!\inst|s_memory~215_combout\ & (\inst|s_memory~77_q\ & ((\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~77_q\,
	datab => \inst|s_memory~215_combout\,
	datac => \inst|s_memory~109_q\,
	datad => \SW[11]~input_o\,
	combout => \inst|s_memory~216_combout\);

-- Location: LCCOMB_X110_Y14_N0
\inst|s_memory~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~217_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\inst|s_memory~214_combout\)) # (!\SW[9]~input_o\ & ((\inst|s_memory~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~214_combout\,
	datab => \inst|s_memory~216_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|s_memory~217_combout\);

-- Location: FF_X112_Y14_N13
\inst|s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~21_q\);

-- Location: FF_X112_Y13_N9
\inst|s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~85_q\);

-- Location: LCCOMB_X112_Y14_N12
\inst|s_memory~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~211_combout\ = (\SW[10]~input_o\ & (\SW[11]~input_o\)) # (!\SW[10]~input_o\ & ((\SW[11]~input_o\ & ((\inst|s_memory~85_q\))) # (!\SW[11]~input_o\ & (\inst|s_memory~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[11]~input_o\,
	datac => \inst|s_memory~21_q\,
	datad => \inst|s_memory~85_q\,
	combout => \inst|s_memory~211_combout\);

-- Location: FF_X113_Y14_N23
\inst|s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \inst|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~117_q\);

-- Location: LCCOMB_X113_Y14_N20
\inst|s_memory~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~53feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \inst|s_memory~53feeder_combout\);

-- Location: FF_X113_Y14_N21
\inst|s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_memory~53feeder_combout\,
	ena => \inst|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_memory~53_q\);

-- Location: LCCOMB_X113_Y14_N22
\inst|s_memory~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~212_combout\ = (\inst|s_memory~211_combout\ & (((\inst|s_memory~117_q\)) # (!\SW[10]~input_o\))) # (!\inst|s_memory~211_combout\ & (\SW[10]~input_o\ & ((\inst|s_memory~53_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~211_combout\,
	datab => \SW[10]~input_o\,
	datac => \inst|s_memory~117_q\,
	datad => \inst|s_memory~53_q\,
	combout => \inst|s_memory~212_combout\);

-- Location: LCCOMB_X110_Y14_N16
\inst|s_memory~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_memory~220_combout\ = (\inst|s_memory~217_combout\ & ((\inst|s_memory~219_combout\) # ((!\SW[8]~input_o\)))) # (!\inst|s_memory~217_combout\ & (((\SW[8]~input_o\ & \inst|s_memory~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_memory~219_combout\,
	datab => \inst|s_memory~217_combout\,
	datac => \SW[8]~input_o\,
	datad => \inst|s_memory~212_combout\,
	combout => \inst|s_memory~220_combout\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


