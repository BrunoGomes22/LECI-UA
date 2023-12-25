-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/09/2022 11:33:45"

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

ENTITY 	RAM_1P_16_8 IS
    PORT (
	clk : IN std_logic;
	writeEnable : IN std_logic;
	writeData : IN std_logic_vector(7 DOWNTO 0);
	address : IN std_logic_vector(3 DOWNTO 0);
	readData : OUT std_logic_vector(7 DOWNTO 0)
	);
END RAM_1P_16_8;

-- Design Ports Information
-- readData[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeEnable	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeData[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_1P_16_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_writeEnable : std_logic;
SIGNAL ww_writeData : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_readData : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \readData[0]~output_o\ : std_logic;
SIGNAL \readData[1]~output_o\ : std_logic;
SIGNAL \readData[2]~output_o\ : std_logic;
SIGNAL \readData[3]~output_o\ : std_logic;
SIGNAL \readData[4]~output_o\ : std_logic;
SIGNAL \readData[5]~output_o\ : std_logic;
SIGNAL \readData[6]~output_o\ : std_logic;
SIGNAL \readData[7]~output_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \writeData[0]~input_o\ : std_logic;
SIGNAL \writeEnable~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \s_memory~225_combout\ : std_logic;
SIGNAL \s_memory~226_combout\ : std_logic;
SIGNAL \s_memory~77_q\ : std_logic;
SIGNAL \s_memory~223_combout\ : std_logic;
SIGNAL \s_memory~224_combout\ : std_logic;
SIGNAL \s_memory~85_q\ : std_logic;
SIGNAL \s_memory~141_combout\ : std_logic;
SIGNAL \s_memory~227_combout\ : std_logic;
SIGNAL \s_memory~228_combout\ : std_logic;
SIGNAL \s_memory~101_q\ : std_logic;
SIGNAL \s_memory~93feeder_combout\ : std_logic;
SIGNAL \s_memory~221_combout\ : std_logic;
SIGNAL \s_memory~222_combout\ : std_logic;
SIGNAL \s_memory~93_q\ : std_logic;
SIGNAL \s_memory~142_combout\ : std_logic;
SIGNAL \s_memory~29feeder_combout\ : std_logic;
SIGNAL \s_memory~237_combout\ : std_logic;
SIGNAL \s_memory~238_combout\ : std_logic;
SIGNAL \s_memory~29_q\ : std_logic;
SIGNAL \s_memory~243_combout\ : std_logic;
SIGNAL \s_memory~244_combout\ : std_logic;
SIGNAL \s_memory~37_q\ : std_logic;
SIGNAL \s_memory~241_combout\ : std_logic;
SIGNAL \s_memory~242_combout\ : std_logic;
SIGNAL \s_memory~13_q\ : std_logic;
SIGNAL \s_memory~21feeder_combout\ : std_logic;
SIGNAL \s_memory~239_combout\ : std_logic;
SIGNAL \s_memory~240_combout\ : std_logic;
SIGNAL \s_memory~21_q\ : std_logic;
SIGNAL \s_memory~145_combout\ : std_logic;
SIGNAL \s_memory~146_combout\ : std_logic;
SIGNAL \s_memory~231_combout\ : std_logic;
SIGNAL \s_memory~232_combout\ : std_logic;
SIGNAL \s_memory~61_q\ : std_logic;
SIGNAL \s_memory~233_combout\ : std_logic;
SIGNAL \s_memory~234_combout\ : std_logic;
SIGNAL \s_memory~45_q\ : std_logic;
SIGNAL \s_memory~143_combout\ : std_logic;
SIGNAL \s_memory~235_combout\ : std_logic;
SIGNAL \s_memory~236_combout\ : std_logic;
SIGNAL \s_memory~69_q\ : std_logic;
SIGNAL \s_memory~53feeder_combout\ : std_logic;
SIGNAL \s_memory~229_combout\ : std_logic;
SIGNAL \s_memory~230_combout\ : std_logic;
SIGNAL \s_memory~53_q\ : std_logic;
SIGNAL \s_memory~144_combout\ : std_logic;
SIGNAL \s_memory~147_combout\ : std_logic;
SIGNAL \s_memory~245_combout\ : std_logic;
SIGNAL \s_memory~246_combout\ : std_logic;
SIGNAL \s_memory~117_q\ : std_logic;
SIGNAL \s_memory~251_combout\ : std_logic;
SIGNAL \s_memory~252_combout\ : std_logic;
SIGNAL \s_memory~133_q\ : std_logic;
SIGNAL \s_memory~247_combout\ : std_logic;
SIGNAL \s_memory~248_combout\ : std_logic;
SIGNAL \s_memory~125_q\ : std_logic;
SIGNAL \s_memory~249_combout\ : std_logic;
SIGNAL \s_memory~250_combout\ : std_logic;
SIGNAL \s_memory~109_q\ : std_logic;
SIGNAL \s_memory~148_combout\ : std_logic;
SIGNAL \s_memory~149_combout\ : std_logic;
SIGNAL \s_memory~150_combout\ : std_logic;
SIGNAL \writeData[1]~input_o\ : std_logic;
SIGNAL \s_memory~54_q\ : std_logic;
SIGNAL \s_memory~22_q\ : std_logic;
SIGNAL \s_memory~153_combout\ : std_logic;
SIGNAL \s_memory~86_q\ : std_logic;
SIGNAL \s_memory~118_q\ : std_logic;
SIGNAL \s_memory~154_combout\ : std_logic;
SIGNAL \s_memory~78_q\ : std_logic;
SIGNAL \s_memory~14_q\ : std_logic;
SIGNAL \s_memory~155_combout\ : std_logic;
SIGNAL \s_memory~46feeder_combout\ : std_logic;
SIGNAL \s_memory~46_q\ : std_logic;
SIGNAL \s_memory~110_q\ : std_logic;
SIGNAL \s_memory~156_combout\ : std_logic;
SIGNAL \s_memory~157_combout\ : std_logic;
SIGNAL \s_memory~94_q\ : std_logic;
SIGNAL \s_memory~30_q\ : std_logic;
SIGNAL \s_memory~151_combout\ : std_logic;
SIGNAL \s_memory~126_q\ : std_logic;
SIGNAL \s_memory~62feeder_combout\ : std_logic;
SIGNAL \s_memory~62_q\ : std_logic;
SIGNAL \s_memory~152_combout\ : std_logic;
SIGNAL \s_memory~70_q\ : std_logic;
SIGNAL \s_memory~38_q\ : std_logic;
SIGNAL \s_memory~158_combout\ : std_logic;
SIGNAL \s_memory~102_q\ : std_logic;
SIGNAL \s_memory~134_q\ : std_logic;
SIGNAL \s_memory~159_combout\ : std_logic;
SIGNAL \s_memory~160_combout\ : std_logic;
SIGNAL \writeData[2]~input_o\ : std_logic;
SIGNAL \s_memory~23feeder_combout\ : std_logic;
SIGNAL \s_memory~23_q\ : std_logic;
SIGNAL \s_memory~39_q\ : std_logic;
SIGNAL \s_memory~15_q\ : std_logic;
SIGNAL \s_memory~31_q\ : std_logic;
SIGNAL \s_memory~165_combout\ : std_logic;
SIGNAL \s_memory~166_combout\ : std_logic;
SIGNAL \s_memory~95feeder_combout\ : std_logic;
SIGNAL \s_memory~95_q\ : std_logic;
SIGNAL \s_memory~79_q\ : std_logic;
SIGNAL \s_memory~163_combout\ : std_logic;
SIGNAL \s_memory~103_q\ : std_logic;
SIGNAL \s_memory~87_q\ : std_logic;
SIGNAL \s_memory~164_combout\ : std_logic;
SIGNAL \s_memory~167_combout\ : std_logic;
SIGNAL \s_memory~55feeder_combout\ : std_logic;
SIGNAL \s_memory~55_q\ : std_logic;
SIGNAL \s_memory~47_q\ : std_logic;
SIGNAL \s_memory~161_combout\ : std_logic;
SIGNAL \s_memory~63_q\ : std_logic;
SIGNAL \s_memory~71_q\ : std_logic;
SIGNAL \s_memory~162_combout\ : std_logic;
SIGNAL \s_memory~127_q\ : std_logic;
SIGNAL \s_memory~135_q\ : std_logic;
SIGNAL \s_memory~111_q\ : std_logic;
SIGNAL \s_memory~119feeder_combout\ : std_logic;
SIGNAL \s_memory~119_q\ : std_logic;
SIGNAL \s_memory~168_combout\ : std_logic;
SIGNAL \s_memory~169_combout\ : std_logic;
SIGNAL \s_memory~170_combout\ : std_logic;
SIGNAL \writeData[3]~input_o\ : std_logic;
SIGNAL \s_memory~96_q\ : std_logic;
SIGNAL \s_memory~128_q\ : std_logic;
SIGNAL \s_memory~64feeder_combout\ : std_logic;
SIGNAL \s_memory~64_q\ : std_logic;
SIGNAL \s_memory~32_q\ : std_logic;
SIGNAL \s_memory~173_combout\ : std_logic;
SIGNAL \s_memory~174_combout\ : std_logic;
SIGNAL \s_memory~80_q\ : std_logic;
SIGNAL \s_memory~112_q\ : std_logic;
SIGNAL \s_memory~16_q\ : std_logic;
SIGNAL \s_memory~48feeder_combout\ : std_logic;
SIGNAL \s_memory~48_q\ : std_logic;
SIGNAL \s_memory~175_combout\ : std_logic;
SIGNAL \s_memory~176_combout\ : std_logic;
SIGNAL \s_memory~177_combout\ : std_logic;
SIGNAL \s_memory~40_q\ : std_logic;
SIGNAL \s_memory~104feeder_combout\ : std_logic;
SIGNAL \s_memory~104_q\ : std_logic;
SIGNAL \s_memory~178_combout\ : std_logic;
SIGNAL \s_memory~72feeder_combout\ : std_logic;
SIGNAL \s_memory~72_q\ : std_logic;
SIGNAL \s_memory~136_q\ : std_logic;
SIGNAL \s_memory~179_combout\ : std_logic;
SIGNAL \s_memory~24_q\ : std_logic;
SIGNAL \s_memory~88_q\ : std_logic;
SIGNAL \s_memory~171_combout\ : std_logic;
SIGNAL \s_memory~56feeder_combout\ : std_logic;
SIGNAL \s_memory~56_q\ : std_logic;
SIGNAL \s_memory~120_q\ : std_logic;
SIGNAL \s_memory~172_combout\ : std_logic;
SIGNAL \s_memory~180_combout\ : std_logic;
SIGNAL \writeData[4]~input_o\ : std_logic;
SIGNAL \s_memory~113_q\ : std_logic;
SIGNAL \s_memory~129feeder_combout\ : std_logic;
SIGNAL \s_memory~129_q\ : std_logic;
SIGNAL \s_memory~188_combout\ : std_logic;
SIGNAL \s_memory~121_q\ : std_logic;
SIGNAL \s_memory~137_q\ : std_logic;
SIGNAL \s_memory~189_combout\ : std_logic;
SIGNAL \s_memory~65feeder_combout\ : std_logic;
SIGNAL \s_memory~65_q\ : std_logic;
SIGNAL \s_memory~49_q\ : std_logic;
SIGNAL \s_memory~183_combout\ : std_logic;
SIGNAL \s_memory~73_q\ : std_logic;
SIGNAL \s_memory~57feeder_combout\ : std_logic;
SIGNAL \s_memory~57_q\ : std_logic;
SIGNAL \s_memory~184_combout\ : std_logic;
SIGNAL \s_memory~25feeder_combout\ : std_logic;
SIGNAL \s_memory~25_q\ : std_logic;
SIGNAL \s_memory~17_q\ : std_logic;
SIGNAL \s_memory~185_combout\ : std_logic;
SIGNAL \s_memory~41_q\ : std_logic;
SIGNAL \s_memory~33_q\ : std_logic;
SIGNAL \s_memory~186_combout\ : std_logic;
SIGNAL \s_memory~187_combout\ : std_logic;
SIGNAL \s_memory~97_q\ : std_logic;
SIGNAL \s_memory~105_q\ : std_logic;
SIGNAL \s_memory~89_q\ : std_logic;
SIGNAL \s_memory~81_q\ : std_logic;
SIGNAL \s_memory~181_combout\ : std_logic;
SIGNAL \s_memory~182_combout\ : std_logic;
SIGNAL \s_memory~190_combout\ : std_logic;
SIGNAL \writeData[5]~input_o\ : std_logic;
SIGNAL \s_memory~98_q\ : std_logic;
SIGNAL \s_memory~34_q\ : std_logic;
SIGNAL \s_memory~191_combout\ : std_logic;
SIGNAL \s_memory~130_q\ : std_logic;
SIGNAL \s_memory~66_q\ : std_logic;
SIGNAL \s_memory~192_combout\ : std_logic;
SIGNAL \s_memory~90_q\ : std_logic;
SIGNAL \s_memory~58_q\ : std_logic;
SIGNAL \s_memory~26_q\ : std_logic;
SIGNAL \s_memory~193_combout\ : std_logic;
SIGNAL \s_memory~122_q\ : std_logic;
SIGNAL \s_memory~194_combout\ : std_logic;
SIGNAL \s_memory~82_q\ : std_logic;
SIGNAL \s_memory~18_q\ : std_logic;
SIGNAL \s_memory~195_combout\ : std_logic;
SIGNAL \s_memory~114_q\ : std_logic;
SIGNAL \s_memory~50_q\ : std_logic;
SIGNAL \s_memory~196_combout\ : std_logic;
SIGNAL \s_memory~197_combout\ : std_logic;
SIGNAL \s_memory~74_q\ : std_logic;
SIGNAL \s_memory~42_q\ : std_logic;
SIGNAL \s_memory~198_combout\ : std_logic;
SIGNAL \s_memory~106_q\ : std_logic;
SIGNAL \s_memory~138_q\ : std_logic;
SIGNAL \s_memory~199_combout\ : std_logic;
SIGNAL \s_memory~200_combout\ : std_logic;
SIGNAL \writeData[6]~input_o\ : std_logic;
SIGNAL \s_memory~91_q\ : std_logic;
SIGNAL \s_memory~107_q\ : std_logic;
SIGNAL \s_memory~99_q\ : std_logic;
SIGNAL \s_memory~83_q\ : std_logic;
SIGNAL \s_memory~203_combout\ : std_logic;
SIGNAL \s_memory~204_combout\ : std_logic;
SIGNAL \s_memory~27_q\ : std_logic;
SIGNAL \s_memory~43_q\ : std_logic;
SIGNAL \s_memory~35_q\ : std_logic;
SIGNAL \s_memory~19_q\ : std_logic;
SIGNAL \s_memory~205_combout\ : std_logic;
SIGNAL \s_memory~206_combout\ : std_logic;
SIGNAL \s_memory~207_combout\ : std_logic;
SIGNAL \s_memory~67_q\ : std_logic;
SIGNAL \s_memory~59_q\ : std_logic;
SIGNAL \s_memory~51_q\ : std_logic;
SIGNAL \s_memory~201_combout\ : std_logic;
SIGNAL \s_memory~75_q\ : std_logic;
SIGNAL \s_memory~202_combout\ : std_logic;
SIGNAL \s_memory~115_q\ : std_logic;
SIGNAL \s_memory~123_q\ : std_logic;
SIGNAL \s_memory~208_combout\ : std_logic;
SIGNAL \s_memory~139_q\ : std_logic;
SIGNAL \s_memory~131_q\ : std_logic;
SIGNAL \s_memory~209_combout\ : std_logic;
SIGNAL \s_memory~210_combout\ : std_logic;
SIGNAL \writeData[7]~input_o\ : std_logic;
SIGNAL \s_memory~100_q\ : std_logic;
SIGNAL \s_memory~132_q\ : std_logic;
SIGNAL \s_memory~68feeder_combout\ : std_logic;
SIGNAL \s_memory~68_q\ : std_logic;
SIGNAL \s_memory~36_q\ : std_logic;
SIGNAL \s_memory~213_combout\ : std_logic;
SIGNAL \s_memory~214_combout\ : std_logic;
SIGNAL \s_memory~52feeder_combout\ : std_logic;
SIGNAL \s_memory~52_q\ : std_logic;
SIGNAL \s_memory~20_q\ : std_logic;
SIGNAL \s_memory~215_combout\ : std_logic;
SIGNAL \s_memory~116_q\ : std_logic;
SIGNAL \s_memory~84feeder_combout\ : std_logic;
SIGNAL \s_memory~84_q\ : std_logic;
SIGNAL \s_memory~216_combout\ : std_logic;
SIGNAL \s_memory~217_combout\ : std_logic;
SIGNAL \s_memory~76_q\ : std_logic;
SIGNAL \s_memory~108_q\ : std_logic;
SIGNAL \s_memory~44_q\ : std_logic;
SIGNAL \s_memory~218_combout\ : std_logic;
SIGNAL \s_memory~140_q\ : std_logic;
SIGNAL \s_memory~219_combout\ : std_logic;
SIGNAL \s_memory~60_q\ : std_logic;
SIGNAL \s_memory~92_q\ : std_logic;
SIGNAL \s_memory~28_q\ : std_logic;
SIGNAL \s_memory~211_combout\ : std_logic;
SIGNAL \s_memory~124_q\ : std_logic;
SIGNAL \s_memory~212_combout\ : std_logic;
SIGNAL \s_memory~220_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_writeEnable <= writeEnable;
ww_writeData <= writeData;
ww_address <= address;
readData <= ww_readData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N16
\readData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~150_combout\,
	devoe => ww_devoe,
	o => \readData[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\readData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~160_combout\,
	devoe => ww_devoe,
	o => \readData[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\readData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~170_combout\,
	devoe => ww_devoe,
	o => \readData[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\readData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~180_combout\,
	devoe => ww_devoe,
	o => \readData[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\readData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~190_combout\,
	devoe => ww_devoe,
	o => \readData[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\readData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~200_combout\,
	devoe => ww_devoe,
	o => \readData[5]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\readData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~210_combout\,
	devoe => ww_devoe,
	o => \readData[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\readData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_memory~220_combout\,
	devoe => ww_devoe,
	o => \readData[7]~output_o\);

-- Location: IOIBUF_X58_Y73_N15
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

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

-- Location: IOIBUF_X58_Y73_N1
\writeData[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(0),
	o => \writeData[0]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\writeEnable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeEnable,
	o => \writeEnable~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: LCCOMB_X61_Y69_N24
\s_memory~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~225_combout\ = (!\address[2]~input_o\ & (!\address[1]~input_o\ & (\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~225_combout\);

-- Location: LCCOMB_X60_Y69_N4
\s_memory~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~226_combout\ = (\writeEnable~input_o\ & \s_memory~225_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~225_combout\,
	combout => \s_memory~226_combout\);

-- Location: FF_X60_Y70_N19
\s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~77_q\);

-- Location: LCCOMB_X61_Y69_N28
\s_memory~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~223_combout\ = (!\address[2]~input_o\ & (!\address[1]~input_o\ & (\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~223_combout\);

-- Location: LCCOMB_X61_Y69_N22
\s_memory~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~224_combout\ = (\writeEnable~input_o\ & \s_memory~223_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~223_combout\,
	combout => \s_memory~224_combout\);

-- Location: FF_X60_Y70_N1
\s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~85_q\);

-- Location: LCCOMB_X60_Y70_N18
\s_memory~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~141_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\s_memory~85_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\s_memory~77_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \s_memory~77_q\,
	datad => \s_memory~85_q\,
	combout => \s_memory~141_combout\);

-- Location: LCCOMB_X61_Y69_N10
\s_memory~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~227_combout\ = (!\address[2]~input_o\ & (\address[1]~input_o\ & (\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~227_combout\);

-- Location: LCCOMB_X61_Y69_N4
\s_memory~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~228_combout\ = (\writeEnable~input_o\ & \s_memory~227_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~227_combout\,
	combout => \s_memory~228_combout\);

-- Location: FF_X59_Y70_N19
\s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~101_q\);

-- Location: LCCOMB_X59_Y70_N24
\s_memory~93feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~93feeder_combout\ = \writeData[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[0]~input_o\,
	combout => \s_memory~93feeder_combout\);

-- Location: LCCOMB_X61_Y69_N18
\s_memory~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~221_combout\ = (!\address[2]~input_o\ & (\address[1]~input_o\ & (\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~221_combout\);

-- Location: LCCOMB_X60_Y69_N2
\s_memory~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~222_combout\ = (\writeEnable~input_o\ & \s_memory~221_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~221_combout\,
	combout => \s_memory~222_combout\);

-- Location: FF_X59_Y70_N25
\s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~93feeder_combout\,
	ena => \s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~93_q\);

-- Location: LCCOMB_X59_Y70_N18
\s_memory~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~142_combout\ = (\s_memory~141_combout\ & (((\s_memory~101_q\)) # (!\address[1]~input_o\))) # (!\s_memory~141_combout\ & (\address[1]~input_o\ & ((\s_memory~93_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~141_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~101_q\,
	datad => \s_memory~93_q\,
	combout => \s_memory~142_combout\);

-- Location: LCCOMB_X58_Y71_N8
\s_memory~29feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~29feeder_combout\ = \writeData[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[0]~input_o\,
	combout => \s_memory~29feeder_combout\);

-- Location: LCCOMB_X59_Y69_N24
\s_memory~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~237_combout\ = (\address[1]~input_o\ & (!\address[3]~input_o\ & (!\address[0]~input_o\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[2]~input_o\,
	combout => \s_memory~237_combout\);

-- Location: LCCOMB_X59_Y69_N10
\s_memory~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~238_combout\ = (\writeEnable~input_o\ & \s_memory~237_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~237_combout\,
	combout => \s_memory~238_combout\);

-- Location: FF_X58_Y71_N9
\s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~29feeder_combout\,
	ena => \s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~29_q\);

-- Location: LCCOMB_X61_Y71_N14
\s_memory~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~243_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & (!\address[2]~input_o\ & !\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~243_combout\);

-- Location: LCCOMB_X61_Y71_N0
\s_memory~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~244_combout\ = (\writeEnable~input_o\ & \s_memory~243_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datac => \s_memory~243_combout\,
	combout => \s_memory~244_combout\);

-- Location: FF_X59_Y71_N27
\s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~37_q\);

-- Location: LCCOMB_X59_Y69_N20
\s_memory~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~241_combout\ = (!\address[1]~input_o\ & (!\address[3]~input_o\ & (!\address[0]~input_o\ & !\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[2]~input_o\,
	combout => \s_memory~241_combout\);

-- Location: LCCOMB_X59_Y69_N22
\s_memory~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~242_combout\ = (\writeEnable~input_o\ & \s_memory~241_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~241_combout\,
	combout => \s_memory~242_combout\);

-- Location: FF_X60_Y72_N17
\s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~13_q\);

-- Location: LCCOMB_X61_Y72_N18
\s_memory~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~21feeder_combout\ = \writeData[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[0]~input_o\,
	combout => \s_memory~21feeder_combout\);

-- Location: LCCOMB_X61_Y69_N30
\s_memory~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~239_combout\ = (!\address[2]~input_o\ & (!\address[1]~input_o\ & (!\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~239_combout\);

-- Location: LCCOMB_X61_Y69_N8
\s_memory~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~240_combout\ = (\writeEnable~input_o\ & \s_memory~239_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datac => \s_memory~239_combout\,
	combout => \s_memory~240_combout\);

-- Location: FF_X61_Y72_N19
\s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~21feeder_combout\,
	ena => \s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~21_q\);

-- Location: LCCOMB_X60_Y72_N16
\s_memory~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~145_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\s_memory~21_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\s_memory~13_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \s_memory~13_q\,
	datad => \s_memory~21_q\,
	combout => \s_memory~145_combout\);

-- Location: LCCOMB_X59_Y71_N26
\s_memory~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~146_combout\ = (\address[1]~input_o\ & ((\s_memory~145_combout\ & ((\s_memory~37_q\))) # (!\s_memory~145_combout\ & (\s_memory~29_q\)))) # (!\address[1]~input_o\ & (((\s_memory~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~29_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~37_q\,
	datad => \s_memory~145_combout\,
	combout => \s_memory~146_combout\);

-- Location: LCCOMB_X61_Y69_N26
\s_memory~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~231_combout\ = (\address[2]~input_o\ & (\address[1]~input_o\ & (!\address[3]~input_o\ & !\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~231_combout\);

-- Location: LCCOMB_X61_Y69_N12
\s_memory~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~232_combout\ = (\writeEnable~input_o\ & \s_memory~231_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datac => \s_memory~231_combout\,
	combout => \s_memory~232_combout\);

-- Location: FF_X58_Y72_N17
\s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~61_q\);

-- Location: LCCOMB_X59_Y69_N12
\s_memory~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~233_combout\ = (!\address[1]~input_o\ & (!\address[3]~input_o\ & (!\address[0]~input_o\ & \address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[2]~input_o\,
	combout => \s_memory~233_combout\);

-- Location: LCCOMB_X59_Y69_N14
\s_memory~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~234_combout\ = (\writeEnable~input_o\ & \s_memory~233_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~233_combout\,
	combout => \s_memory~234_combout\);

-- Location: FF_X58_Y72_N3
\s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~45_q\);

-- Location: LCCOMB_X58_Y72_N2
\s_memory~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~143_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~61_q\)) # (!\address[1]~input_o\ & ((\s_memory~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~61_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~45_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~143_combout\);

-- Location: LCCOMB_X60_Y71_N2
\s_memory~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~235_combout\ = (\address[2]~input_o\ & (!\address[3]~input_o\ & (\address[1]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~235_combout\);

-- Location: LCCOMB_X60_Y71_N22
\s_memory~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~236_combout\ = (\writeEnable~input_o\ & \s_memory~235_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writeEnable~input_o\,
	datad => \s_memory~235_combout\,
	combout => \s_memory~236_combout\);

-- Location: FF_X59_Y71_N1
\s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~69_q\);

-- Location: LCCOMB_X61_Y72_N0
\s_memory~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~53feeder_combout\ = \writeData[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[0]~input_o\,
	combout => \s_memory~53feeder_combout\);

-- Location: LCCOMB_X61_Y69_N6
\s_memory~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~229_combout\ = (\address[2]~input_o\ & (!\address[1]~input_o\ & (!\address[3]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~229_combout\);

-- Location: LCCOMB_X61_Y69_N0
\s_memory~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~230_combout\ = (\writeEnable~input_o\ & \s_memory~229_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~229_combout\,
	combout => \s_memory~230_combout\);

-- Location: FF_X61_Y72_N1
\s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~53feeder_combout\,
	ena => \s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~53_q\);

-- Location: LCCOMB_X59_Y71_N0
\s_memory~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~144_combout\ = (\s_memory~143_combout\ & (((\s_memory~69_q\)) # (!\address[0]~input_o\))) # (!\s_memory~143_combout\ & (\address[0]~input_o\ & ((\s_memory~53_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~143_combout\,
	datab => \address[0]~input_o\,
	datac => \s_memory~69_q\,
	datad => \s_memory~53_q\,
	combout => \s_memory~144_combout\);

-- Location: LCCOMB_X59_Y71_N28
\s_memory~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~147_combout\ = (\address[2]~input_o\ & (((\s_memory~144_combout\) # (\address[3]~input_o\)))) # (!\address[2]~input_o\ & (\s_memory~146_combout\ & ((!\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~146_combout\,
	datab => \s_memory~144_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~147_combout\);

-- Location: LCCOMB_X59_Y69_N16
\s_memory~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~245_combout\ = (!\address[1]~input_o\ & (\address[3]~input_o\ & (\address[0]~input_o\ & \address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[2]~input_o\,
	combout => \s_memory~245_combout\);

-- Location: LCCOMB_X59_Y69_N26
\s_memory~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~246_combout\ = (\writeEnable~input_o\ & \s_memory~245_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datad => \s_memory~245_combout\,
	combout => \s_memory~246_combout\);

-- Location: FF_X60_Y71_N25
\s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~117_q\);

-- Location: LCCOMB_X60_Y71_N12
\s_memory~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~251_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\ & (\address[1]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \s_memory~251_combout\);

-- Location: LCCOMB_X60_Y71_N6
\s_memory~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~252_combout\ = (\writeEnable~input_o\ & \s_memory~251_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \writeEnable~input_o\,
	datad => \s_memory~251_combout\,
	combout => \s_memory~252_combout\);

-- Location: FF_X60_Y71_N27
\s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~133_q\);

-- Location: LCCOMB_X61_Y71_N26
\s_memory~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~247_combout\ = (!\address[0]~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~247_combout\);

-- Location: LCCOMB_X61_Y71_N28
\s_memory~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~248_combout\ = (\writeEnable~input_o\ & \s_memory~247_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writeEnable~input_o\,
	datac => \s_memory~247_combout\,
	combout => \s_memory~248_combout\);

-- Location: FF_X59_Y72_N1
\s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~125_q\);

-- Location: LCCOMB_X61_Y71_N6
\s_memory~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~249_combout\ = (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\address[2]~input_o\ & \address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~249_combout\);

-- Location: LCCOMB_X60_Y71_N24
\s_memory~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~250_combout\ = (\writeEnable~input_o\ & \s_memory~249_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writeEnable~input_o\,
	datad => \s_memory~249_combout\,
	combout => \s_memory~250_combout\);

-- Location: FF_X60_Y72_N27
\s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[0]~input_o\,
	sload => VCC,
	ena => \s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~109_q\);

-- Location: LCCOMB_X60_Y72_N26
\s_memory~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~148_combout\ = (\address[1]~input_o\ & ((\s_memory~125_q\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\s_memory~109_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~125_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~109_q\,
	datad => \address[0]~input_o\,
	combout => \s_memory~148_combout\);

-- Location: LCCOMB_X60_Y71_N26
\s_memory~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~149_combout\ = (\address[0]~input_o\ & ((\s_memory~148_combout\ & ((\s_memory~133_q\))) # (!\s_memory~148_combout\ & (\s_memory~117_q\)))) # (!\address[0]~input_o\ & (((\s_memory~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~117_q\,
	datac => \s_memory~133_q\,
	datad => \s_memory~148_combout\,
	combout => \s_memory~149_combout\);

-- Location: LCCOMB_X59_Y71_N6
\s_memory~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~150_combout\ = (\s_memory~147_combout\ & (((\s_memory~149_combout\) # (!\address[3]~input_o\)))) # (!\s_memory~147_combout\ & (\s_memory~142_combout\ & ((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~142_combout\,
	datab => \s_memory~147_combout\,
	datac => \s_memory~149_combout\,
	datad => \address[3]~input_o\,
	combout => \s_memory~150_combout\);

-- Location: IOIBUF_X60_Y73_N15
\writeData[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(1),
	o => \writeData[1]~input_o\);

-- Location: FF_X61_Y72_N21
\s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~54_q\);

-- Location: FF_X61_Y72_N15
\s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~22_q\);

-- Location: LCCOMB_X61_Y72_N14
\s_memory~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~153_combout\ = (\address[2]~input_o\ & ((\s_memory~54_q\) # ((\address[3]~input_o\)))) # (!\address[2]~input_o\ & (((\s_memory~22_q\ & !\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~54_q\,
	datac => \s_memory~22_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~153_combout\);

-- Location: FF_X62_Y72_N9
\s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~86_q\);

-- Location: FF_X62_Y72_N27
\s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~118_q\);

-- Location: LCCOMB_X62_Y72_N26
\s_memory~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~154_combout\ = (\s_memory~153_combout\ & (((\s_memory~118_q\) # (!\address[3]~input_o\)))) # (!\s_memory~153_combout\ & (\s_memory~86_q\ & ((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~153_combout\,
	datab => \s_memory~86_q\,
	datac => \s_memory~118_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~154_combout\);

-- Location: FF_X60_Y70_N21
\s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~78_q\);

-- Location: FF_X60_Y72_N13
\s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~14_q\);

-- Location: LCCOMB_X60_Y72_N12
\s_memory~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~155_combout\ = (\address[3]~input_o\ & ((\s_memory~78_q\) # ((\address[2]~input_o\)))) # (!\address[3]~input_o\ & (((\s_memory~14_q\ & !\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~78_q\,
	datac => \s_memory~14_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~155_combout\);

-- Location: LCCOMB_X58_Y72_N6
\s_memory~46feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~46feeder_combout\ = \writeData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[1]~input_o\,
	combout => \s_memory~46feeder_combout\);

-- Location: FF_X58_Y72_N7
\s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~46feeder_combout\,
	ena => \s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~46_q\);

-- Location: FF_X60_Y72_N15
\s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~110_q\);

-- Location: LCCOMB_X60_Y72_N14
\s_memory~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~156_combout\ = (\s_memory~155_combout\ & (((\s_memory~110_q\) # (!\address[2]~input_o\)))) # (!\s_memory~155_combout\ & (\s_memory~46_q\ & ((\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~155_combout\,
	datab => \s_memory~46_q\,
	datac => \s_memory~110_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~156_combout\);

-- Location: LCCOMB_X60_Y70_N14
\s_memory~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~157_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\s_memory~154_combout\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & ((\s_memory~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \s_memory~154_combout\,
	datad => \s_memory~156_combout\,
	combout => \s_memory~157_combout\);

-- Location: FF_X59_Y70_N13
\s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~94_q\);

-- Location: FF_X59_Y72_N27
\s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~30_q\);

-- Location: LCCOMB_X59_Y72_N26
\s_memory~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~151_combout\ = (\address[3]~input_o\ & ((\s_memory~94_q\) # ((\address[2]~input_o\)))) # (!\address[3]~input_o\ & (((\s_memory~30_q\ & !\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~94_q\,
	datac => \s_memory~30_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~151_combout\);

-- Location: FF_X59_Y72_N5
\s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~126_q\);

-- Location: LCCOMB_X58_Y72_N12
\s_memory~62feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~62feeder_combout\ = \writeData[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[1]~input_o\,
	combout => \s_memory~62feeder_combout\);

-- Location: FF_X58_Y72_N13
\s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~62feeder_combout\,
	ena => \s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~62_q\);

-- Location: LCCOMB_X59_Y72_N4
\s_memory~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~152_combout\ = (\s_memory~151_combout\ & (((\s_memory~126_q\)) # (!\address[2]~input_o\))) # (!\s_memory~151_combout\ & (\address[2]~input_o\ & ((\s_memory~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~151_combout\,
	datab => \address[2]~input_o\,
	datac => \s_memory~126_q\,
	datad => \s_memory~62_q\,
	combout => \s_memory~152_combout\);

-- Location: FF_X59_Y71_N25
\s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~70_q\);

-- Location: FF_X61_Y71_N19
\s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~38_q\);

-- Location: LCCOMB_X61_Y71_N18
\s_memory~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~158_combout\ = (\address[2]~input_o\ & ((\s_memory~70_q\) # ((\address[3]~input_o\)))) # (!\address[2]~input_o\ & (((\s_memory~38_q\ & !\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~70_q\,
	datac => \s_memory~38_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~158_combout\);

-- Location: FF_X61_Y71_N25
\s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~102_q\);

-- Location: FF_X60_Y71_N29
\s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[1]~input_o\,
	sload => VCC,
	ena => \s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~134_q\);

-- Location: LCCOMB_X60_Y71_N28
\s_memory~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~159_combout\ = (\s_memory~158_combout\ & (((\s_memory~134_q\) # (!\address[3]~input_o\)))) # (!\s_memory~158_combout\ & (\s_memory~102_q\ & ((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~158_combout\,
	datab => \s_memory~102_q\,
	datac => \s_memory~134_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~159_combout\);

-- Location: LCCOMB_X60_Y71_N30
\s_memory~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~160_combout\ = (\s_memory~157_combout\ & (((\s_memory~159_combout\)) # (!\address[1]~input_o\))) # (!\s_memory~157_combout\ & (\address[1]~input_o\ & (\s_memory~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~157_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~152_combout\,
	datad => \s_memory~159_combout\,
	combout => \s_memory~160_combout\);

-- Location: IOIBUF_X58_Y73_N8
\writeData[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(2),
	o => \writeData[2]~input_o\);

-- Location: LCCOMB_X61_Y72_N10
\s_memory~23feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~23feeder_combout\ = \writeData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[2]~input_o\,
	combout => \s_memory~23feeder_combout\);

-- Location: FF_X61_Y72_N11
\s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~23feeder_combout\,
	ena => \s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~23_q\);

-- Location: FF_X61_Y71_N13
\s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~39_q\);

-- Location: FF_X60_Y72_N1
\s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~15_q\);

-- Location: FF_X59_Y72_N15
\s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~31_q\);

-- Location: LCCOMB_X60_Y72_N0
\s_memory~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~165_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\s_memory~31_q\))) # (!\address[1]~input_o\ & (\s_memory~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \s_memory~15_q\,
	datad => \s_memory~31_q\,
	combout => \s_memory~165_combout\);

-- Location: LCCOMB_X61_Y71_N12
\s_memory~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~166_combout\ = (\address[0]~input_o\ & ((\s_memory~165_combout\ & ((\s_memory~39_q\))) # (!\s_memory~165_combout\ & (\s_memory~23_q\)))) # (!\address[0]~input_o\ & (((\s_memory~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~23_q\,
	datac => \s_memory~39_q\,
	datad => \s_memory~165_combout\,
	combout => \s_memory~166_combout\);

-- Location: LCCOMB_X59_Y70_N14
\s_memory~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~95feeder_combout\ = \writeData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[2]~input_o\,
	combout => \s_memory~95feeder_combout\);

-- Location: FF_X59_Y70_N15
\s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~95feeder_combout\,
	ena => \s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~95_q\);

-- Location: FF_X60_Y70_N27
\s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~79_q\);

-- Location: LCCOMB_X60_Y70_N26
\s_memory~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~163_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~95_q\)) # (!\address[1]~input_o\ & ((\s_memory~79_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~95_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~79_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~163_combout\);

-- Location: FF_X61_Y70_N1
\s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~103_q\);

-- Location: FF_X60_Y70_N9
\s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~87_q\);

-- Location: LCCOMB_X61_Y70_N0
\s_memory~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~164_combout\ = (\s_memory~163_combout\ & (((\s_memory~103_q\)) # (!\address[0]~input_o\))) # (!\s_memory~163_combout\ & (\address[0]~input_o\ & ((\s_memory~87_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~163_combout\,
	datab => \address[0]~input_o\,
	datac => \s_memory~103_q\,
	datad => \s_memory~87_q\,
	combout => \s_memory~164_combout\);

-- Location: LCCOMB_X61_Y71_N22
\s_memory~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~167_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((\s_memory~164_combout\))) # (!\address[3]~input_o\ & (\s_memory~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~166_combout\,
	datab => \s_memory~164_combout\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \s_memory~167_combout\);

-- Location: LCCOMB_X61_Y72_N16
\s_memory~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~55feeder_combout\ = \writeData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[2]~input_o\,
	combout => \s_memory~55feeder_combout\);

-- Location: FF_X61_Y72_N17
\s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~55feeder_combout\,
	ena => \s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~55_q\);

-- Location: FF_X58_Y72_N19
\s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~47_q\);

-- Location: LCCOMB_X58_Y72_N18
\s_memory~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~161_combout\ = (\address[0]~input_o\ & ((\s_memory~55_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\s_memory~47_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~55_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~47_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~161_combout\);

-- Location: FF_X58_Y72_N9
\s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~63_q\);

-- Location: FF_X59_Y71_N19
\s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~71_q\);

-- Location: LCCOMB_X59_Y71_N18
\s_memory~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~162_combout\ = (\s_memory~161_combout\ & (((\s_memory~71_q\) # (!\address[1]~input_o\)))) # (!\s_memory~161_combout\ & (\s_memory~63_q\ & ((\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~161_combout\,
	datab => \s_memory~63_q\,
	datac => \s_memory~71_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~162_combout\);

-- Location: FF_X59_Y72_N9
\s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~127_q\);

-- Location: FF_X60_Y71_N17
\s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~135_q\);

-- Location: FF_X60_Y72_N3
\s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[2]~input_o\,
	sload => VCC,
	ena => \s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~111_q\);

-- Location: LCCOMB_X62_Y72_N20
\s_memory~119feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~119feeder_combout\ = \writeData[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[2]~input_o\,
	combout => \s_memory~119feeder_combout\);

-- Location: FF_X62_Y72_N21
\s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~119feeder_combout\,
	ena => \s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~119_q\);

-- Location: LCCOMB_X60_Y72_N2
\s_memory~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~168_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\s_memory~119_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\s_memory~111_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \s_memory~111_q\,
	datad => \s_memory~119_q\,
	combout => \s_memory~168_combout\);

-- Location: LCCOMB_X60_Y71_N16
\s_memory~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~169_combout\ = (\address[1]~input_o\ & ((\s_memory~168_combout\ & ((\s_memory~135_q\))) # (!\s_memory~168_combout\ & (\s_memory~127_q\)))) # (!\address[1]~input_o\ & (((\s_memory~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~127_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~135_q\,
	datad => \s_memory~168_combout\,
	combout => \s_memory~169_combout\);

-- Location: LCCOMB_X61_Y71_N8
\s_memory~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~170_combout\ = (\s_memory~167_combout\ & (((\s_memory~169_combout\) # (!\address[2]~input_o\)))) # (!\s_memory~167_combout\ & (\s_memory~162_combout\ & (\address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~167_combout\,
	datab => \s_memory~162_combout\,
	datac => \address[2]~input_o\,
	datad => \s_memory~169_combout\,
	combout => \s_memory~170_combout\);

-- Location: IOIBUF_X62_Y73_N15
\writeData[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(3),
	o => \writeData[3]~input_o\);

-- Location: FF_X59_Y70_N9
\s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~96_q\);

-- Location: FF_X59_Y72_N29
\s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~128_q\);

-- Location: LCCOMB_X58_Y72_N20
\s_memory~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~64feeder_combout\ = \writeData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[3]~input_o\,
	combout => \s_memory~64feeder_combout\);

-- Location: FF_X58_Y72_N21
\s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~64feeder_combout\,
	ena => \s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~64_q\);

-- Location: FF_X59_Y72_N11
\s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~32_q\);

-- Location: LCCOMB_X59_Y72_N10
\s_memory~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~173_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~64_q\)) # (!\address[2]~input_o\ & ((\s_memory~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~64_q\,
	datac => \s_memory~32_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~173_combout\);

-- Location: LCCOMB_X59_Y72_N28
\s_memory~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~174_combout\ = (\address[3]~input_o\ & ((\s_memory~173_combout\ & ((\s_memory~128_q\))) # (!\s_memory~173_combout\ & (\s_memory~96_q\)))) # (!\address[3]~input_o\ & (((\s_memory~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~96_q\,
	datac => \s_memory~128_q\,
	datad => \s_memory~173_combout\,
	combout => \s_memory~174_combout\);

-- Location: FF_X60_Y70_N13
\s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~80_q\);

-- Location: FF_X60_Y72_N7
\s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~112_q\);

-- Location: FF_X60_Y72_N21
\s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~16_q\);

-- Location: LCCOMB_X58_Y72_N14
\s_memory~48feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~48feeder_combout\ = \writeData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[3]~input_o\,
	combout => \s_memory~48feeder_combout\);

-- Location: FF_X58_Y72_N15
\s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~48feeder_combout\,
	ena => \s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~48_q\);

-- Location: LCCOMB_X60_Y72_N20
\s_memory~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~175_combout\ = (\address[3]~input_o\ & (\address[2]~input_o\)) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & ((\s_memory~48_q\))) # (!\address[2]~input_o\ & (\s_memory~16_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \address[2]~input_o\,
	datac => \s_memory~16_q\,
	datad => \s_memory~48_q\,
	combout => \s_memory~175_combout\);

-- Location: LCCOMB_X60_Y72_N6
\s_memory~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~176_combout\ = (\address[3]~input_o\ & ((\s_memory~175_combout\ & ((\s_memory~112_q\))) # (!\s_memory~175_combout\ & (\s_memory~80_q\)))) # (!\address[3]~input_o\ & (((\s_memory~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~80_q\,
	datac => \s_memory~112_q\,
	datad => \s_memory~175_combout\,
	combout => \s_memory~176_combout\);

-- Location: LCCOMB_X60_Y69_N8
\s_memory~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~177_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~174_combout\)) # (!\address[1]~input_o\ & ((\s_memory~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \s_memory~174_combout\,
	datac => \address[1]~input_o\,
	datad => \s_memory~176_combout\,
	combout => \s_memory~177_combout\);

-- Location: FF_X61_Y71_N5
\s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~40_q\);

-- Location: LCCOMB_X61_Y71_N10
\s_memory~104feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~104feeder_combout\ = \writeData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[3]~input_o\,
	combout => \s_memory~104feeder_combout\);

-- Location: FF_X61_Y71_N11
\s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~104feeder_combout\,
	ena => \s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~104_q\);

-- Location: LCCOMB_X61_Y71_N4
\s_memory~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~178_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((\s_memory~104_q\))) # (!\address[3]~input_o\ & (\s_memory~40_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \s_memory~40_q\,
	datad => \s_memory~104_q\,
	combout => \s_memory~178_combout\);

-- Location: LCCOMB_X59_Y71_N4
\s_memory~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~72feeder_combout\ = \writeData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[3]~input_o\,
	combout => \s_memory~72feeder_combout\);

-- Location: FF_X59_Y71_N5
\s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~72feeder_combout\,
	ena => \s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~72_q\);

-- Location: FF_X60_Y71_N19
\s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~136_q\);

-- Location: LCCOMB_X60_Y71_N18
\s_memory~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~179_combout\ = (\s_memory~178_combout\ & (((\s_memory~136_q\) # (!\address[2]~input_o\)))) # (!\s_memory~178_combout\ & (\s_memory~72_q\ & ((\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~178_combout\,
	datab => \s_memory~72_q\,
	datac => \s_memory~136_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~179_combout\);

-- Location: FF_X61_Y72_N7
\s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~24_q\);

-- Location: FF_X62_Y72_N7
\s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~88_q\);

-- Location: LCCOMB_X61_Y72_N6
\s_memory~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~171_combout\ = (\address[2]~input_o\ & (\address[3]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & ((\s_memory~88_q\))) # (!\address[3]~input_o\ & (\s_memory~24_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[3]~input_o\,
	datac => \s_memory~24_q\,
	datad => \s_memory~88_q\,
	combout => \s_memory~171_combout\);

-- Location: LCCOMB_X61_Y72_N4
\s_memory~56feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~56feeder_combout\ = \writeData[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[3]~input_o\,
	combout => \s_memory~56feeder_combout\);

-- Location: FF_X61_Y72_N5
\s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~56feeder_combout\,
	ena => \s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~56_q\);

-- Location: FF_X62_Y72_N17
\s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[3]~input_o\,
	sload => VCC,
	ena => \s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~120_q\);

-- Location: LCCOMB_X62_Y72_N16
\s_memory~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~172_combout\ = (\s_memory~171_combout\ & (((\s_memory~120_q\) # (!\address[2]~input_o\)))) # (!\s_memory~171_combout\ & (\s_memory~56_q\ & ((\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~171_combout\,
	datab => \s_memory~56_q\,
	datac => \s_memory~120_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~172_combout\);

-- Location: LCCOMB_X61_Y69_N16
\s_memory~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~180_combout\ = (\s_memory~177_combout\ & ((\s_memory~179_combout\) # ((!\address[0]~input_o\)))) # (!\s_memory~177_combout\ & (((\address[0]~input_o\ & \s_memory~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~177_combout\,
	datab => \s_memory~179_combout\,
	datac => \address[0]~input_o\,
	datad => \s_memory~172_combout\,
	combout => \s_memory~180_combout\);

-- Location: IOIBUF_X60_Y73_N8
\writeData[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(4),
	o => \writeData[4]~input_o\);

-- Location: FF_X60_Y72_N9
\s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~113_q\);

-- Location: LCCOMB_X59_Y72_N22
\s_memory~129feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~129feeder_combout\ = \writeData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[4]~input_o\,
	combout => \s_memory~129feeder_combout\);

-- Location: FF_X59_Y72_N23
\s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~129feeder_combout\,
	ena => \s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~129_q\);

-- Location: LCCOMB_X60_Y72_N8
\s_memory~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~188_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\s_memory~129_q\))) # (!\address[1]~input_o\ & (\s_memory~113_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \s_memory~113_q\,
	datad => \s_memory~129_q\,
	combout => \s_memory~188_combout\);

-- Location: FF_X60_Y71_N23
\s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~121_q\);

-- Location: FF_X60_Y71_N9
\s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~137_q\);

-- Location: LCCOMB_X60_Y71_N8
\s_memory~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~189_combout\ = (\s_memory~188_combout\ & (((\s_memory~137_q\) # (!\address[0]~input_o\)))) # (!\s_memory~188_combout\ & (\s_memory~121_q\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~188_combout\,
	datab => \s_memory~121_q\,
	datac => \s_memory~137_q\,
	datad => \address[0]~input_o\,
	combout => \s_memory~189_combout\);

-- Location: LCCOMB_X58_Y72_N24
\s_memory~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~65feeder_combout\ = \writeData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[4]~input_o\,
	combout => \s_memory~65feeder_combout\);

-- Location: FF_X58_Y72_N25
\s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~65feeder_combout\,
	ena => \s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~65_q\);

-- Location: FF_X58_Y72_N11
\s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~49_q\);

-- Location: LCCOMB_X58_Y72_N10
\s_memory~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~183_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~65_q\)) # (!\address[1]~input_o\ & ((\s_memory~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~65_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~49_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~183_combout\);

-- Location: FF_X59_Y71_N31
\s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~73_q\);

-- Location: LCCOMB_X61_Y72_N8
\s_memory~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~57feeder_combout\ = \writeData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[4]~input_o\,
	combout => \s_memory~57feeder_combout\);

-- Location: FF_X61_Y72_N9
\s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~57feeder_combout\,
	ena => \s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~57_q\);

-- Location: LCCOMB_X59_Y71_N30
\s_memory~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~184_combout\ = (\s_memory~183_combout\ & (((\s_memory~73_q\)) # (!\address[0]~input_o\))) # (!\s_memory~183_combout\ & (\address[0]~input_o\ & ((\s_memory~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~183_combout\,
	datab => \address[0]~input_o\,
	datac => \s_memory~73_q\,
	datad => \s_memory~57_q\,
	combout => \s_memory~184_combout\);

-- Location: LCCOMB_X61_Y72_N26
\s_memory~25feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~25feeder_combout\ = \writeData[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[4]~input_o\,
	combout => \s_memory~25feeder_combout\);

-- Location: FF_X61_Y72_N27
\s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~25feeder_combout\,
	ena => \s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~25_q\);

-- Location: FF_X58_Y71_N13
\s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~17_q\);

-- Location: LCCOMB_X58_Y71_N12
\s_memory~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~185_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~25_q\)) # (!\address[0]~input_o\ & ((\s_memory~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~25_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~17_q\,
	datad => \address[0]~input_o\,
	combout => \s_memory~185_combout\);

-- Location: FF_X59_Y71_N17
\s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~41_q\);

-- Location: FF_X58_Y71_N3
\s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~33_q\);

-- Location: LCCOMB_X59_Y71_N16
\s_memory~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~186_combout\ = (\s_memory~185_combout\ & (((\s_memory~41_q\)) # (!\address[1]~input_o\))) # (!\s_memory~185_combout\ & (\address[1]~input_o\ & ((\s_memory~33_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~185_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~41_q\,
	datad => \s_memory~33_q\,
	combout => \s_memory~186_combout\);

-- Location: LCCOMB_X60_Y71_N20
\s_memory~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~187_combout\ = (\address[2]~input_o\ & ((\s_memory~184_combout\) # ((\address[3]~input_o\)))) # (!\address[2]~input_o\ & (((\s_memory~186_combout\ & !\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~184_combout\,
	datac => \s_memory~186_combout\,
	datad => \address[3]~input_o\,
	combout => \s_memory~187_combout\);

-- Location: FF_X59_Y70_N11
\s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~97_q\);

-- Location: FF_X59_Y70_N29
\s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~105_q\);

-- Location: FF_X60_Y70_N7
\s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~89_q\);

-- Location: FF_X60_Y70_N25
\s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[4]~input_o\,
	sload => VCC,
	ena => \s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~81_q\);

-- Location: LCCOMB_X60_Y70_N24
\s_memory~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~181_combout\ = (\address[0]~input_o\ & ((\s_memory~89_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\s_memory~81_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~89_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~81_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~181_combout\);

-- Location: LCCOMB_X59_Y70_N28
\s_memory~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~182_combout\ = (\address[1]~input_o\ & ((\s_memory~181_combout\ & ((\s_memory~105_q\))) # (!\s_memory~181_combout\ & (\s_memory~97_q\)))) # (!\address[1]~input_o\ & (((\s_memory~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~97_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~105_q\,
	datad => \s_memory~181_combout\,
	combout => \s_memory~182_combout\);

-- Location: LCCOMB_X60_Y71_N10
\s_memory~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~190_combout\ = (\s_memory~187_combout\ & ((\s_memory~189_combout\) # ((!\address[3]~input_o\)))) # (!\s_memory~187_combout\ & (((\s_memory~182_combout\ & \address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~189_combout\,
	datab => \s_memory~187_combout\,
	datac => \s_memory~182_combout\,
	datad => \address[3]~input_o\,
	combout => \s_memory~190_combout\);

-- Location: IOIBUF_X54_Y73_N8
\writeData[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(5),
	o => \writeData[5]~input_o\);

-- Location: FF_X59_Y70_N23
\s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~98_q\);

-- Location: FF_X59_Y72_N25
\s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~34_q\);

-- Location: LCCOMB_X59_Y72_N24
\s_memory~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~191_combout\ = (\address[3]~input_o\ & ((\s_memory~98_q\) # ((\address[2]~input_o\)))) # (!\address[3]~input_o\ & (((\s_memory~34_q\ & !\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~98_q\,
	datac => \s_memory~34_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~191_combout\);

-- Location: FF_X59_Y72_N3
\s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~130_q\);

-- Location: FF_X58_Y72_N29
\s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~66_q\);

-- Location: LCCOMB_X59_Y72_N2
\s_memory~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~192_combout\ = (\address[2]~input_o\ & ((\s_memory~191_combout\ & (\s_memory~130_q\)) # (!\s_memory~191_combout\ & ((\s_memory~66_q\))))) # (!\address[2]~input_o\ & (\s_memory~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~191_combout\,
	datac => \s_memory~130_q\,
	datad => \s_memory~66_q\,
	combout => \s_memory~192_combout\);

-- Location: FF_X62_Y72_N11
\s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~90_q\);

-- Location: FF_X61_Y72_N29
\s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~58_q\);

-- Location: FF_X61_Y72_N23
\s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~26_q\);

-- Location: LCCOMB_X61_Y72_N22
\s_memory~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~193_combout\ = (\address[2]~input_o\ & ((\s_memory~58_q\) # ((\address[3]~input_o\)))) # (!\address[2]~input_o\ & (((\s_memory~26_q\ & !\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~58_q\,
	datac => \s_memory~26_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~193_combout\);

-- Location: FF_X62_Y72_N5
\s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~122_q\);

-- Location: LCCOMB_X62_Y72_N4
\s_memory~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~194_combout\ = (\s_memory~193_combout\ & (((\s_memory~122_q\) # (!\address[3]~input_o\)))) # (!\s_memory~193_combout\ & (\s_memory~90_q\ & ((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~90_q\,
	datab => \s_memory~193_combout\,
	datac => \s_memory~122_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~194_combout\);

-- Location: FF_X60_Y70_N3
\s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~82_q\);

-- Location: FF_X60_Y72_N11
\s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~18_q\);

-- Location: LCCOMB_X60_Y72_N10
\s_memory~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~195_combout\ = (\address[3]~input_o\ & ((\s_memory~82_q\) # ((\address[2]~input_o\)))) # (!\address[3]~input_o\ & (((\s_memory~18_q\ & !\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~82_q\,
	datac => \s_memory~18_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~195_combout\);

-- Location: FF_X60_Y72_N29
\s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~114_q\);

-- Location: FF_X58_Y72_N23
\s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~50_q\);

-- Location: LCCOMB_X60_Y72_N28
\s_memory~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~196_combout\ = (\s_memory~195_combout\ & (((\s_memory~114_q\)) # (!\address[2]~input_o\))) # (!\s_memory~195_combout\ & (\address[2]~input_o\ & ((\s_memory~50_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~195_combout\,
	datab => \address[2]~input_o\,
	datac => \s_memory~114_q\,
	datad => \s_memory~50_q\,
	combout => \s_memory~196_combout\);

-- Location: LCCOMB_X60_Y72_N30
\s_memory~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~197_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\s_memory~194_combout\)) # (!\address[0]~input_o\ & ((\s_memory~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~194_combout\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \s_memory~196_combout\,
	combout => \s_memory~197_combout\);

-- Location: FF_X59_Y71_N3
\s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~74_q\);

-- Location: FF_X59_Y71_N13
\s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~42_q\);

-- Location: LCCOMB_X59_Y71_N12
\s_memory~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~198_combout\ = (\address[2]~input_o\ & ((\s_memory~74_q\) # ((\address[3]~input_o\)))) # (!\address[2]~input_o\ & (((\s_memory~42_q\ & !\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~74_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~42_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~198_combout\);

-- Location: FF_X59_Y70_N17
\s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~106_q\);

-- Location: FF_X60_Y71_N5
\s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[5]~input_o\,
	sload => VCC,
	ena => \s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~138_q\);

-- Location: LCCOMB_X60_Y71_N4
\s_memory~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~199_combout\ = (\s_memory~198_combout\ & (((\s_memory~138_q\) # (!\address[3]~input_o\)))) # (!\s_memory~198_combout\ & (\s_memory~106_q\ & ((\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~198_combout\,
	datab => \s_memory~106_q\,
	datac => \s_memory~138_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~199_combout\);

-- Location: LCCOMB_X60_Y72_N24
\s_memory~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~200_combout\ = (\address[1]~input_o\ & ((\s_memory~197_combout\ & ((\s_memory~199_combout\))) # (!\s_memory~197_combout\ & (\s_memory~192_combout\)))) # (!\address[1]~input_o\ & (((\s_memory~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~192_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~197_combout\,
	datad => \s_memory~199_combout\,
	combout => \s_memory~200_combout\);

-- Location: IOIBUF_X60_Y73_N22
\writeData[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(6),
	o => \writeData[6]~input_o\);

-- Location: FF_X60_Y70_N5
\s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~91_q\);

-- Location: FF_X59_Y70_N21
\s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~107_q\);

-- Location: FF_X59_Y70_N3
\s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~99_q\);

-- Location: FF_X60_Y70_N23
\s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~83_q\);

-- Location: LCCOMB_X60_Y70_N22
\s_memory~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~203_combout\ = (\address[0]~input_o\ & (((\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\s_memory~99_q\)) # (!\address[1]~input_o\ & ((\s_memory~83_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~99_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~83_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~203_combout\);

-- Location: LCCOMB_X59_Y70_N20
\s_memory~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~204_combout\ = (\address[0]~input_o\ & ((\s_memory~203_combout\ & ((\s_memory~107_q\))) # (!\s_memory~203_combout\ & (\s_memory~91_q\)))) # (!\address[0]~input_o\ & (((\s_memory~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~91_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~107_q\,
	datad => \s_memory~203_combout\,
	combout => \s_memory~204_combout\);

-- Location: FF_X61_Y72_N3
\s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~27_q\);

-- Location: FF_X59_Y71_N9
\s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~43_q\);

-- Location: FF_X58_Y71_N7
\s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~35_q\);

-- Location: FF_X58_Y71_N25
\s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~19_q\);

-- Location: LCCOMB_X58_Y71_N24
\s_memory~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~205_combout\ = (\address[1]~input_o\ & ((\s_memory~35_q\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\s_memory~19_q\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~35_q\,
	datab => \address[1]~input_o\,
	datac => \s_memory~19_q\,
	datad => \address[0]~input_o\,
	combout => \s_memory~205_combout\);

-- Location: LCCOMB_X59_Y71_N8
\s_memory~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~206_combout\ = (\address[0]~input_o\ & ((\s_memory~205_combout\ & ((\s_memory~43_q\))) # (!\s_memory~205_combout\ & (\s_memory~27_q\)))) # (!\address[0]~input_o\ & (((\s_memory~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~27_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~43_q\,
	datad => \s_memory~205_combout\,
	combout => \s_memory~206_combout\);

-- Location: LCCOMB_X59_Y69_N0
\s_memory~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~207_combout\ = (\address[3]~input_o\ & ((\s_memory~204_combout\) # ((\address[2]~input_o\)))) # (!\address[3]~input_o\ & (((\s_memory~206_combout\ & !\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~204_combout\,
	datab => \address[3]~input_o\,
	datac => \s_memory~206_combout\,
	datad => \address[2]~input_o\,
	combout => \s_memory~207_combout\);

-- Location: FF_X58_Y72_N1
\s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~67_q\);

-- Location: FF_X61_Y72_N25
\s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~59_q\);

-- Location: FF_X58_Y72_N27
\s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~51_q\);

-- Location: LCCOMB_X58_Y72_N26
\s_memory~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~201_combout\ = (\address[0]~input_o\ & ((\s_memory~59_q\) # ((\address[1]~input_o\)))) # (!\address[0]~input_o\ & (((\s_memory~51_q\ & !\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~59_q\,
	datab => \address[0]~input_o\,
	datac => \s_memory~51_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~201_combout\);

-- Location: FF_X59_Y71_N23
\s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~75_q\);

-- Location: LCCOMB_X59_Y71_N22
\s_memory~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~202_combout\ = (\s_memory~201_combout\ & (((\s_memory~75_q\) # (!\address[1]~input_o\)))) # (!\s_memory~201_combout\ & (\s_memory~67_q\ & ((\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~67_q\,
	datab => \s_memory~201_combout\,
	datac => \s_memory~75_q\,
	datad => \address[1]~input_o\,
	combout => \s_memory~202_combout\);

-- Location: FF_X60_Y72_N19
\s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~115_q\);

-- Location: FF_X62_Y72_N23
\s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~123_q\);

-- Location: LCCOMB_X60_Y72_N18
\s_memory~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~208_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\) # ((\s_memory~123_q\)))) # (!\address[0]~input_o\ & (!\address[1]~input_o\ & (\s_memory~115_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \s_memory~115_q\,
	datad => \s_memory~123_q\,
	combout => \s_memory~208_combout\);

-- Location: FF_X60_Y71_N15
\s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~139_q\);

-- Location: FF_X59_Y72_N13
\s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[6]~input_o\,
	sload => VCC,
	ena => \s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~131_q\);

-- Location: LCCOMB_X60_Y71_N14
\s_memory~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~209_combout\ = (\s_memory~208_combout\ & (((\s_memory~139_q\)) # (!\address[1]~input_o\))) # (!\s_memory~208_combout\ & (\address[1]~input_o\ & ((\s_memory~131_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~208_combout\,
	datab => \address[1]~input_o\,
	datac => \s_memory~139_q\,
	datad => \s_memory~131_q\,
	combout => \s_memory~209_combout\);

-- Location: LCCOMB_X59_Y69_N2
\s_memory~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~210_combout\ = (\address[2]~input_o\ & ((\s_memory~207_combout\ & ((\s_memory~209_combout\))) # (!\s_memory~207_combout\ & (\s_memory~202_combout\)))) # (!\address[2]~input_o\ & (\s_memory~207_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~207_combout\,
	datac => \s_memory~202_combout\,
	datad => \s_memory~209_combout\,
	combout => \s_memory~210_combout\);

-- Location: IOIBUF_X60_Y73_N1
\writeData[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeData(7),
	o => \writeData[7]~input_o\);

-- Location: FF_X59_Y70_N7
\s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~100_q\);

-- Location: FF_X59_Y72_N17
\s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~132_q\);

-- Location: LCCOMB_X58_Y72_N4
\s_memory~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~68feeder_combout\ = \writeData[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[7]~input_o\,
	combout => \s_memory~68feeder_combout\);

-- Location: FF_X58_Y72_N5
\s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~68feeder_combout\,
	ena => \s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~68_q\);

-- Location: FF_X59_Y72_N7
\s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~36_q\);

-- Location: LCCOMB_X59_Y72_N6
\s_memory~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~213_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~68_q\)) # (!\address[2]~input_o\ & ((\s_memory~36_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~68_q\,
	datac => \s_memory~36_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~213_combout\);

-- Location: LCCOMB_X59_Y72_N16
\s_memory~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~214_combout\ = (\address[3]~input_o\ & ((\s_memory~213_combout\ & ((\s_memory~132_q\))) # (!\s_memory~213_combout\ & (\s_memory~100_q\)))) # (!\address[3]~input_o\ & (((\s_memory~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~100_q\,
	datac => \s_memory~132_q\,
	datad => \s_memory~213_combout\,
	combout => \s_memory~214_combout\);

-- Location: LCCOMB_X58_Y72_N30
\s_memory~52feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~52feeder_combout\ = \writeData[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[7]~input_o\,
	combout => \s_memory~52feeder_combout\);

-- Location: FF_X58_Y72_N31
\s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~52feeder_combout\,
	ena => \s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~52_q\);

-- Location: FF_X60_Y72_N5
\s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~20_q\);

-- Location: LCCOMB_X60_Y72_N4
\s_memory~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~215_combout\ = (\address[3]~input_o\ & (((\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[2]~input_o\ & (\s_memory~52_q\)) # (!\address[2]~input_o\ & ((\s_memory~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~52_q\,
	datac => \s_memory~20_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~215_combout\);

-- Location: FF_X60_Y72_N23
\s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~116_q\);

-- Location: LCCOMB_X60_Y70_N16
\s_memory~84feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~84feeder_combout\ = \writeData[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writeData[7]~input_o\,
	combout => \s_memory~84feeder_combout\);

-- Location: FF_X60_Y70_N17
\s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_memory~84feeder_combout\,
	ena => \s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~84_q\);

-- Location: LCCOMB_X60_Y72_N22
\s_memory~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~216_combout\ = (\address[3]~input_o\ & ((\s_memory~215_combout\ & (\s_memory~116_q\)) # (!\s_memory~215_combout\ & ((\s_memory~84_q\))))) # (!\address[3]~input_o\ & (\s_memory~215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[3]~input_o\,
	datab => \s_memory~215_combout\,
	datac => \s_memory~116_q\,
	datad => \s_memory~84_q\,
	combout => \s_memory~216_combout\);

-- Location: LCCOMB_X62_Y72_N12
\s_memory~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~217_combout\ = (\address[1]~input_o\ & ((\s_memory~214_combout\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((!\address[0]~input_o\ & \s_memory~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~214_combout\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \s_memory~216_combout\,
	combout => \s_memory~217_combout\);

-- Location: FF_X59_Y71_N11
\s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~76_q\);

-- Location: FF_X59_Y70_N1
\s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~108_q\);

-- Location: FF_X59_Y71_N21
\s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~44_q\);

-- Location: LCCOMB_X59_Y71_N20
\s_memory~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~218_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~108_q\)) # (!\address[3]~input_o\ & ((\s_memory~44_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~108_q\,
	datab => \address[2]~input_o\,
	datac => \s_memory~44_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~218_combout\);

-- Location: FF_X60_Y71_N1
\s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~140_q\);

-- Location: LCCOMB_X60_Y71_N0
\s_memory~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~219_combout\ = (\s_memory~218_combout\ & (((\s_memory~140_q\) # (!\address[2]~input_o\)))) # (!\s_memory~218_combout\ & (\s_memory~76_q\ & ((\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~76_q\,
	datab => \s_memory~218_combout\,
	datac => \s_memory~140_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~219_combout\);

-- Location: FF_X61_Y72_N13
\s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~60_q\);

-- Location: FF_X62_Y72_N25
\s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~92_q\);

-- Location: FF_X61_Y72_N31
\s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~28_q\);

-- Location: LCCOMB_X61_Y72_N30
\s_memory~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~211_combout\ = (\address[2]~input_o\ & (((\address[3]~input_o\)))) # (!\address[2]~input_o\ & ((\address[3]~input_o\ & (\s_memory~92_q\)) # (!\address[3]~input_o\ & ((\s_memory~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \s_memory~92_q\,
	datac => \s_memory~28_q\,
	datad => \address[3]~input_o\,
	combout => \s_memory~211_combout\);

-- Location: FF_X62_Y72_N19
\s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeData[7]~input_o\,
	sload => VCC,
	ena => \s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_memory~124_q\);

-- Location: LCCOMB_X62_Y72_N18
\s_memory~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~212_combout\ = (\s_memory~211_combout\ & (((\s_memory~124_q\) # (!\address[2]~input_o\)))) # (!\s_memory~211_combout\ & (\s_memory~60_q\ & ((\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~60_q\,
	datab => \s_memory~211_combout\,
	datac => \s_memory~124_q\,
	datad => \address[2]~input_o\,
	combout => \s_memory~212_combout\);

-- Location: LCCOMB_X62_Y72_N14
\s_memory~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_memory~220_combout\ = (\s_memory~217_combout\ & (((\s_memory~219_combout\)) # (!\address[0]~input_o\))) # (!\s_memory~217_combout\ & (\address[0]~input_o\ & ((\s_memory~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_memory~217_combout\,
	datab => \address[0]~input_o\,
	datac => \s_memory~219_combout\,
	datad => \s_memory~212_combout\,
	combout => \s_memory~220_combout\);

ww_readData(0) <= \readData[0]~output_o\;

ww_readData(1) <= \readData[1]~output_o\;

ww_readData(2) <= \readData[2]~output_o\;

ww_readData(3) <= \readData[3]~output_o\;

ww_readData(4) <= \readData[4]~output_o\;

ww_readData(5) <= \readData[5]~output_o\;

ww_readData(6) <= \readData[6]~output_o\;

ww_readData(7) <= \readData[7]~output_o\;
END structure;


