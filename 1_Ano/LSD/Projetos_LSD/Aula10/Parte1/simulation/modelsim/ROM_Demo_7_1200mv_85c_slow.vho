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

-- DATE "06/09/2022 10:45:55"

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
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0)
	);
END ROM_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FreqDivider|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \FreqDivider|Add0~0_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~1\ : std_logic;
SIGNAL \FreqDivider|Add0~2_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~3\ : std_logic;
SIGNAL \FreqDivider|Add0~4_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~5\ : std_logic;
SIGNAL \FreqDivider|Add0~6_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~7\ : std_logic;
SIGNAL \FreqDivider|Add0~8_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~9\ : std_logic;
SIGNAL \FreqDivider|Add0~10_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~11\ : std_logic;
SIGNAL \FreqDivider|Add0~12_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~13\ : std_logic;
SIGNAL \FreqDivider|Add0~14_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~10_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~5_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~2_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~47\ : std_logic;
SIGNAL \FreqDivider|Add0~48_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~49\ : std_logic;
SIGNAL \FreqDivider|Add0~50_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~0_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~51\ : std_logic;
SIGNAL \FreqDivider|Add0~52_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~1_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~53\ : std_logic;
SIGNAL \FreqDivider|Add0~54_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~55\ : std_logic;
SIGNAL \FreqDivider|Add0~56_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~57\ : std_logic;
SIGNAL \FreqDivider|Add0~58_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~59\ : std_logic;
SIGNAL \FreqDivider|Add0~60_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~0_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~3_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~4_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~11_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~11_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~15\ : std_logic;
SIGNAL \FreqDivider|Add0~16_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~17\ : std_logic;
SIGNAL \FreqDivider|Add0~18_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~19\ : std_logic;
SIGNAL \FreqDivider|Add0~20_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~21\ : std_logic;
SIGNAL \FreqDivider|Add0~22_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~23\ : std_logic;
SIGNAL \FreqDivider|Add0~24_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~10_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~25\ : std_logic;
SIGNAL \FreqDivider|Add0~26_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~9_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~27\ : std_logic;
SIGNAL \FreqDivider|Add0~28_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~8_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~29\ : std_logic;
SIGNAL \FreqDivider|Add0~30_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~3_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~31\ : std_logic;
SIGNAL \FreqDivider|Add0~32_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~33\ : std_logic;
SIGNAL \FreqDivider|Add0~34_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~2_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~35\ : std_logic;
SIGNAL \FreqDivider|Add0~36_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~37\ : std_logic;
SIGNAL \FreqDivider|Add0~38_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~7_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~39\ : std_logic;
SIGNAL \FreqDivider|Add0~40_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~6_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~41\ : std_logic;
SIGNAL \FreqDivider|Add0~42_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~5_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~43\ : std_logic;
SIGNAL \FreqDivider|Add0~44_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~4_combout\ : std_logic;
SIGNAL \FreqDivider|Add0~45\ : std_logic;
SIGNAL \FreqDivider|Add0~46_combout\ : std_logic;
SIGNAL \FreqDivider|s_divCounter~1_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~7_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~8_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~9_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~0_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~1_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~2_combout\ : std_logic;
SIGNAL \FreqDivider|Equal0~6_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~3_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~feeder_combout\ : std_logic;
SIGNAL \FreqDivider|clkOut~q\ : std_logic;
SIGNAL \FreqDivider|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Counter|s_count~0_combout\ : std_logic;
SIGNAL \Counter|s_count~1_combout\ : std_logic;
SIGNAL \Counter|s_count~2_combout\ : std_logic;
SIGNAL \Counter|s_count~3_combout\ : std_logic;
SIGNAL \Counter|s_count~4_combout\ : std_logic;
SIGNAL \ROM|Mux3~0_combout\ : std_logic;
SIGNAL \ROM|Mux3~1_combout\ : std_logic;
SIGNAL \Counter|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FreqDivider|s_divCounter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
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

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter|s_count\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter|s_count\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter|s_count\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counter|s_count\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

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

-- Location: LCCOMB_X55_Y5_N2
\FreqDivider|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~0_combout\ = \FreqDivider|s_divCounter\(0) $ (VCC)
-- \FreqDivider|Add0~1\ = CARRY(\FreqDivider|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(0),
	datad => VCC,
	combout => \FreqDivider|Add0~0_combout\,
	cout => \FreqDivider|Add0~1\);

-- Location: FF_X55_Y5_N3
\FreqDivider|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(0));

-- Location: LCCOMB_X55_Y5_N4
\FreqDivider|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~2_combout\ = (\FreqDivider|s_divCounter\(1) & (!\FreqDivider|Add0~1\)) # (!\FreqDivider|s_divCounter\(1) & ((\FreqDivider|Add0~1\) # (GND)))
-- \FreqDivider|Add0~3\ = CARRY((!\FreqDivider|Add0~1\) # (!\FreqDivider|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(1),
	datad => VCC,
	cin => \FreqDivider|Add0~1\,
	combout => \FreqDivider|Add0~2_combout\,
	cout => \FreqDivider|Add0~3\);

-- Location: FF_X55_Y5_N5
\FreqDivider|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(1));

-- Location: LCCOMB_X55_Y5_N6
\FreqDivider|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~4_combout\ = (\FreqDivider|s_divCounter\(2) & (\FreqDivider|Add0~3\ $ (GND))) # (!\FreqDivider|s_divCounter\(2) & (!\FreqDivider|Add0~3\ & VCC))
-- \FreqDivider|Add0~5\ = CARRY((\FreqDivider|s_divCounter\(2) & !\FreqDivider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(2),
	datad => VCC,
	cin => \FreqDivider|Add0~3\,
	combout => \FreqDivider|Add0~4_combout\,
	cout => \FreqDivider|Add0~5\);

-- Location: FF_X55_Y5_N7
\FreqDivider|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(2));

-- Location: LCCOMB_X55_Y5_N8
\FreqDivider|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~6_combout\ = (\FreqDivider|s_divCounter\(3) & (!\FreqDivider|Add0~5\)) # (!\FreqDivider|s_divCounter\(3) & ((\FreqDivider|Add0~5\) # (GND)))
-- \FreqDivider|Add0~7\ = CARRY((!\FreqDivider|Add0~5\) # (!\FreqDivider|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(3),
	datad => VCC,
	cin => \FreqDivider|Add0~5\,
	combout => \FreqDivider|Add0~6_combout\,
	cout => \FreqDivider|Add0~7\);

-- Location: FF_X55_Y5_N9
\FreqDivider|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(3));

-- Location: LCCOMB_X55_Y5_N10
\FreqDivider|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~8_combout\ = (\FreqDivider|s_divCounter\(4) & (\FreqDivider|Add0~7\ $ (GND))) # (!\FreqDivider|s_divCounter\(4) & (!\FreqDivider|Add0~7\ & VCC))
-- \FreqDivider|Add0~9\ = CARRY((\FreqDivider|s_divCounter\(4) & !\FreqDivider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(4),
	datad => VCC,
	cin => \FreqDivider|Add0~7\,
	combout => \FreqDivider|Add0~8_combout\,
	cout => \FreqDivider|Add0~9\);

-- Location: FF_X55_Y5_N11
\FreqDivider|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(4));

-- Location: LCCOMB_X55_Y5_N12
\FreqDivider|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~10_combout\ = (\FreqDivider|s_divCounter\(5) & (!\FreqDivider|Add0~9\)) # (!\FreqDivider|s_divCounter\(5) & ((\FreqDivider|Add0~9\) # (GND)))
-- \FreqDivider|Add0~11\ = CARRY((!\FreqDivider|Add0~9\) # (!\FreqDivider|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(5),
	datad => VCC,
	cin => \FreqDivider|Add0~9\,
	combout => \FreqDivider|Add0~10_combout\,
	cout => \FreqDivider|Add0~11\);

-- Location: FF_X55_Y5_N13
\FreqDivider|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(5));

-- Location: LCCOMB_X55_Y5_N14
\FreqDivider|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~12_combout\ = (\FreqDivider|s_divCounter\(6) & (\FreqDivider|Add0~11\ $ (GND))) # (!\FreqDivider|s_divCounter\(6) & (!\FreqDivider|Add0~11\ & VCC))
-- \FreqDivider|Add0~13\ = CARRY((\FreqDivider|s_divCounter\(6) & !\FreqDivider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(6),
	datad => VCC,
	cin => \FreqDivider|Add0~11\,
	combout => \FreqDivider|Add0~12_combout\,
	cout => \FreqDivider|Add0~13\);

-- Location: FF_X55_Y5_N15
\FreqDivider|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(6));

-- Location: LCCOMB_X55_Y5_N16
\FreqDivider|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~14_combout\ = (\FreqDivider|s_divCounter\(7) & (!\FreqDivider|Add0~13\)) # (!\FreqDivider|s_divCounter\(7) & ((\FreqDivider|Add0~13\) # (GND)))
-- \FreqDivider|Add0~15\ = CARRY((!\FreqDivider|Add0~13\) # (!\FreqDivider|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(7),
	datad => VCC,
	cin => \FreqDivider|Add0~13\,
	combout => \FreqDivider|Add0~14_combout\,
	cout => \FreqDivider|Add0~15\);

-- Location: LCCOMB_X56_Y4_N22
\FreqDivider|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~10_combout\ = (\FreqDivider|s_divCounter\(0) & \FreqDivider|s_divCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|s_divCounter\(0),
	datad => \FreqDivider|s_divCounter\(1),
	combout => \FreqDivider|Equal0~10_combout\);

-- Location: LCCOMB_X55_Y5_N0
\FreqDivider|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~5_combout\ = (\FreqDivider|s_divCounter\(4) & (\FreqDivider|s_divCounter\(3) & (\FreqDivider|s_divCounter\(2) & \FreqDivider|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(4),
	datab => \FreqDivider|s_divCounter\(3),
	datac => \FreqDivider|s_divCounter\(2),
	datad => \FreqDivider|s_divCounter\(5),
	combout => \FreqDivider|Equal0~5_combout\);

-- Location: LCCOMB_X54_Y4_N10
\FreqDivider|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~2_combout\ = (\FreqDivider|s_divCounter\(19) & (\FreqDivider|s_divCounter\(14) & (\FreqDivider|s_divCounter\(13) & \FreqDivider|s_divCounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(19),
	datab => \FreqDivider|s_divCounter\(14),
	datac => \FreqDivider|s_divCounter\(13),
	datad => \FreqDivider|s_divCounter\(12),
	combout => \FreqDivider|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y4_N16
\FreqDivider|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~46_combout\ = (\FreqDivider|s_divCounter\(23) & (!\FreqDivider|Add0~45\)) # (!\FreqDivider|s_divCounter\(23) & ((\FreqDivider|Add0~45\) # (GND)))
-- \FreqDivider|Add0~47\ = CARRY((!\FreqDivider|Add0~45\) # (!\FreqDivider|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(23),
	datad => VCC,
	cin => \FreqDivider|Add0~45\,
	combout => \FreqDivider|Add0~46_combout\,
	cout => \FreqDivider|Add0~47\);

-- Location: LCCOMB_X55_Y4_N18
\FreqDivider|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~48_combout\ = (\FreqDivider|s_divCounter\(24) & (\FreqDivider|Add0~47\ $ (GND))) # (!\FreqDivider|s_divCounter\(24) & (!\FreqDivider|Add0~47\ & VCC))
-- \FreqDivider|Add0~49\ = CARRY((\FreqDivider|s_divCounter\(24) & !\FreqDivider|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(24),
	datad => VCC,
	cin => \FreqDivider|Add0~47\,
	combout => \FreqDivider|Add0~48_combout\,
	cout => \FreqDivider|Add0~49\);

-- Location: FF_X55_Y4_N19
\FreqDivider|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(24));

-- Location: LCCOMB_X55_Y4_N20
\FreqDivider|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~50_combout\ = (\FreqDivider|s_divCounter\(25) & (!\FreqDivider|Add0~49\)) # (!\FreqDivider|s_divCounter\(25) & ((\FreqDivider|Add0~49\) # (GND)))
-- \FreqDivider|Add0~51\ = CARRY((!\FreqDivider|Add0~49\) # (!\FreqDivider|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(25),
	datad => VCC,
	cin => \FreqDivider|Add0~49\,
	combout => \FreqDivider|Add0~50_combout\,
	cout => \FreqDivider|Add0~51\);

-- Location: LCCOMB_X56_Y4_N24
\FreqDivider|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~0_combout\ = (!\FreqDivider|Equal0~11_combout\ & \FreqDivider|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Equal0~11_combout\,
	datad => \FreqDivider|Add0~50_combout\,
	combout => \FreqDivider|s_divCounter~0_combout\);

-- Location: FF_X56_Y4_N25
\FreqDivider|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(25));

-- Location: LCCOMB_X55_Y4_N22
\FreqDivider|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~52_combout\ = (\FreqDivider|s_divCounter\(26) & (\FreqDivider|Add0~51\ $ (GND))) # (!\FreqDivider|s_divCounter\(26) & (!\FreqDivider|Add0~51\ & VCC))
-- \FreqDivider|Add0~53\ = CARRY((\FreqDivider|s_divCounter\(26) & !\FreqDivider|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(26),
	datad => VCC,
	cin => \FreqDivider|Add0~51\,
	combout => \FreqDivider|Add0~52_combout\,
	cout => \FreqDivider|Add0~53\);

-- Location: FF_X55_Y4_N23
\FreqDivider|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(26));

-- Location: LCCOMB_X54_Y4_N28
\FreqDivider|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~1_combout\ = (\FreqDivider|s_divCounter\(20) & (\FreqDivider|s_divCounter\(21) & (\FreqDivider|s_divCounter\(22) & !\FreqDivider|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(20),
	datab => \FreqDivider|s_divCounter\(21),
	datac => \FreqDivider|s_divCounter\(22),
	datad => \FreqDivider|s_divCounter\(26),
	combout => \FreqDivider|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y4_N24
\FreqDivider|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~54_combout\ = (\FreqDivider|s_divCounter\(27) & (!\FreqDivider|Add0~53\)) # (!\FreqDivider|s_divCounter\(27) & ((\FreqDivider|Add0~53\) # (GND)))
-- \FreqDivider|Add0~55\ = CARRY((!\FreqDivider|Add0~53\) # (!\FreqDivider|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(27),
	datad => VCC,
	cin => \FreqDivider|Add0~53\,
	combout => \FreqDivider|Add0~54_combout\,
	cout => \FreqDivider|Add0~55\);

-- Location: FF_X55_Y4_N25
\FreqDivider|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(27));

-- Location: LCCOMB_X55_Y4_N26
\FreqDivider|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~56_combout\ = (\FreqDivider|s_divCounter\(28) & (\FreqDivider|Add0~55\ $ (GND))) # (!\FreqDivider|s_divCounter\(28) & (!\FreqDivider|Add0~55\ & VCC))
-- \FreqDivider|Add0~57\ = CARRY((\FreqDivider|s_divCounter\(28) & !\FreqDivider|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(28),
	datad => VCC,
	cin => \FreqDivider|Add0~55\,
	combout => \FreqDivider|Add0~56_combout\,
	cout => \FreqDivider|Add0~57\);

-- Location: FF_X55_Y4_N27
\FreqDivider|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(28));

-- Location: LCCOMB_X55_Y4_N28
\FreqDivider|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~58_combout\ = (\FreqDivider|s_divCounter\(29) & (!\FreqDivider|Add0~57\)) # (!\FreqDivider|s_divCounter\(29) & ((\FreqDivider|Add0~57\) # (GND)))
-- \FreqDivider|Add0~59\ = CARRY((!\FreqDivider|Add0~57\) # (!\FreqDivider|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(29),
	datad => VCC,
	cin => \FreqDivider|Add0~57\,
	combout => \FreqDivider|Add0~58_combout\,
	cout => \FreqDivider|Add0~59\);

-- Location: FF_X55_Y4_N29
\FreqDivider|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(29));

-- Location: LCCOMB_X55_Y4_N30
\FreqDivider|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~60_combout\ = \FreqDivider|s_divCounter\(30) $ (!\FreqDivider|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(30),
	cin => \FreqDivider|Add0~59\,
	combout => \FreqDivider|Add0~60_combout\);

-- Location: FF_X55_Y4_N31
\FreqDivider|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(30));

-- Location: LCCOMB_X54_Y4_N8
\FreqDivider|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~0_combout\ = (!\FreqDivider|s_divCounter\(30) & (!\FreqDivider|s_divCounter\(28) & (!\FreqDivider|s_divCounter\(27) & !\FreqDivider|s_divCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(30),
	datab => \FreqDivider|s_divCounter\(28),
	datac => \FreqDivider|s_divCounter\(27),
	datad => \FreqDivider|s_divCounter\(29),
	combout => \FreqDivider|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y4_N18
\FreqDivider|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~3_combout\ = (!\FreqDivider|s_divCounter\(10) & (!\FreqDivider|s_divCounter\(7) & (!\FreqDivider|s_divCounter\(9) & !\FreqDivider|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(10),
	datab => \FreqDivider|s_divCounter\(7),
	datac => \FreqDivider|s_divCounter\(9),
	datad => \FreqDivider|s_divCounter\(8),
	combout => \FreqDivider|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y4_N12
\FreqDivider|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~4_combout\ = (\FreqDivider|Equal0~2_combout\ & (\FreqDivider|Equal0~1_combout\ & (\FreqDivider|Equal0~0_combout\ & \FreqDivider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal0~2_combout\,
	datab => \FreqDivider|Equal0~1_combout\,
	datac => \FreqDivider|Equal0~0_combout\,
	datad => \FreqDivider|Equal0~3_combout\,
	combout => \FreqDivider|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y4_N20
\FreqDivider|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~11_combout\ = (\FreqDivider|Equal0~10_combout\ & (\FreqDivider|Equal0~9_combout\ & (\FreqDivider|Equal0~5_combout\ & \FreqDivider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal0~10_combout\,
	datab => \FreqDivider|Equal0~9_combout\,
	datac => \FreqDivider|Equal0~5_combout\,
	datad => \FreqDivider|Equal0~4_combout\,
	combout => \FreqDivider|Equal0~11_combout\);

-- Location: LCCOMB_X54_Y4_N0
\FreqDivider|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~11_combout\ = (\FreqDivider|Add0~14_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Add0~14_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~11_combout\);

-- Location: FF_X54_Y4_N1
\FreqDivider|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(7));

-- Location: LCCOMB_X55_Y5_N18
\FreqDivider|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~16_combout\ = (\FreqDivider|s_divCounter\(8) & (\FreqDivider|Add0~15\ $ (GND))) # (!\FreqDivider|s_divCounter\(8) & (!\FreqDivider|Add0~15\ & VCC))
-- \FreqDivider|Add0~17\ = CARRY((\FreqDivider|s_divCounter\(8) & !\FreqDivider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(8),
	datad => VCC,
	cin => \FreqDivider|Add0~15\,
	combout => \FreqDivider|Add0~16_combout\,
	cout => \FreqDivider|Add0~17\);

-- Location: FF_X55_Y5_N19
\FreqDivider|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(8));

-- Location: LCCOMB_X55_Y5_N20
\FreqDivider|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~18_combout\ = (\FreqDivider|s_divCounter\(9) & (!\FreqDivider|Add0~17\)) # (!\FreqDivider|s_divCounter\(9) & ((\FreqDivider|Add0~17\) # (GND)))
-- \FreqDivider|Add0~19\ = CARRY((!\FreqDivider|Add0~17\) # (!\FreqDivider|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(9),
	datad => VCC,
	cin => \FreqDivider|Add0~17\,
	combout => \FreqDivider|Add0~18_combout\,
	cout => \FreqDivider|Add0~19\);

-- Location: FF_X55_Y5_N21
\FreqDivider|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(9));

-- Location: LCCOMB_X55_Y5_N22
\FreqDivider|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~20_combout\ = (\FreqDivider|s_divCounter\(10) & (\FreqDivider|Add0~19\ $ (GND))) # (!\FreqDivider|s_divCounter\(10) & (!\FreqDivider|Add0~19\ & VCC))
-- \FreqDivider|Add0~21\ = CARRY((\FreqDivider|s_divCounter\(10) & !\FreqDivider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(10),
	datad => VCC,
	cin => \FreqDivider|Add0~19\,
	combout => \FreqDivider|Add0~20_combout\,
	cout => \FreqDivider|Add0~21\);

-- Location: FF_X55_Y5_N23
\FreqDivider|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(10));

-- Location: LCCOMB_X55_Y5_N24
\FreqDivider|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~22_combout\ = (\FreqDivider|s_divCounter\(11) & (!\FreqDivider|Add0~21\)) # (!\FreqDivider|s_divCounter\(11) & ((\FreqDivider|Add0~21\) # (GND)))
-- \FreqDivider|Add0~23\ = CARRY((!\FreqDivider|Add0~21\) # (!\FreqDivider|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(11),
	datad => VCC,
	cin => \FreqDivider|Add0~21\,
	combout => \FreqDivider|Add0~22_combout\,
	cout => \FreqDivider|Add0~23\);

-- Location: FF_X55_Y5_N25
\FreqDivider|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(11));

-- Location: LCCOMB_X55_Y5_N26
\FreqDivider|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~24_combout\ = (\FreqDivider|s_divCounter\(12) & (\FreqDivider|Add0~23\ $ (GND))) # (!\FreqDivider|s_divCounter\(12) & (!\FreqDivider|Add0~23\ & VCC))
-- \FreqDivider|Add0~25\ = CARRY((\FreqDivider|s_divCounter\(12) & !\FreqDivider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(12),
	datad => VCC,
	cin => \FreqDivider|Add0~23\,
	combout => \FreqDivider|Add0~24_combout\,
	cout => \FreqDivider|Add0~25\);

-- Location: LCCOMB_X54_Y4_N20
\FreqDivider|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~10_combout\ = (\FreqDivider|Add0~24_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~24_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~10_combout\);

-- Location: FF_X54_Y4_N21
\FreqDivider|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(12));

-- Location: LCCOMB_X55_Y5_N28
\FreqDivider|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~26_combout\ = (\FreqDivider|s_divCounter\(13) & (!\FreqDivider|Add0~25\)) # (!\FreqDivider|s_divCounter\(13) & ((\FreqDivider|Add0~25\) # (GND)))
-- \FreqDivider|Add0~27\ = CARRY((!\FreqDivider|Add0~25\) # (!\FreqDivider|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(13),
	datad => VCC,
	cin => \FreqDivider|Add0~25\,
	combout => \FreqDivider|Add0~26_combout\,
	cout => \FreqDivider|Add0~27\);

-- Location: LCCOMB_X54_Y4_N14
\FreqDivider|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~9_combout\ = (\FreqDivider|Add0~26_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~26_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~9_combout\);

-- Location: FF_X54_Y4_N15
\FreqDivider|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(13));

-- Location: LCCOMB_X55_Y5_N30
\FreqDivider|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~28_combout\ = (\FreqDivider|s_divCounter\(14) & (\FreqDivider|Add0~27\ $ (GND))) # (!\FreqDivider|s_divCounter\(14) & (!\FreqDivider|Add0~27\ & VCC))
-- \FreqDivider|Add0~29\ = CARRY((\FreqDivider|s_divCounter\(14) & !\FreqDivider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(14),
	datad => VCC,
	cin => \FreqDivider|Add0~27\,
	combout => \FreqDivider|Add0~28_combout\,
	cout => \FreqDivider|Add0~29\);

-- Location: LCCOMB_X54_Y4_N4
\FreqDivider|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~8_combout\ = (\FreqDivider|Add0~28_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~28_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~8_combout\);

-- Location: FF_X54_Y4_N5
\FreqDivider|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(14));

-- Location: LCCOMB_X55_Y4_N0
\FreqDivider|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~30_combout\ = (\FreqDivider|s_divCounter\(15) & (!\FreqDivider|Add0~29\)) # (!\FreqDivider|s_divCounter\(15) & ((\FreqDivider|Add0~29\) # (GND)))
-- \FreqDivider|Add0~31\ = CARRY((!\FreqDivider|Add0~29\) # (!\FreqDivider|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(15),
	datad => VCC,
	cin => \FreqDivider|Add0~29\,
	combout => \FreqDivider|Add0~30_combout\,
	cout => \FreqDivider|Add0~31\);

-- Location: LCCOMB_X56_Y4_N4
\FreqDivider|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~3_combout\ = (\FreqDivider|Add0~30_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~30_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~3_combout\);

-- Location: FF_X56_Y4_N5
\FreqDivider|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(15));

-- Location: LCCOMB_X55_Y4_N2
\FreqDivider|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~32_combout\ = (\FreqDivider|s_divCounter\(16) & (\FreqDivider|Add0~31\ $ (GND))) # (!\FreqDivider|s_divCounter\(16) & (!\FreqDivider|Add0~31\ & VCC))
-- \FreqDivider|Add0~33\ = CARRY((\FreqDivider|s_divCounter\(16) & !\FreqDivider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(16),
	datad => VCC,
	cin => \FreqDivider|Add0~31\,
	combout => \FreqDivider|Add0~32_combout\,
	cout => \FreqDivider|Add0~33\);

-- Location: FF_X55_Y4_N3
\FreqDivider|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(16));

-- Location: LCCOMB_X55_Y4_N4
\FreqDivider|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~34_combout\ = (\FreqDivider|s_divCounter\(17) & (!\FreqDivider|Add0~33\)) # (!\FreqDivider|s_divCounter\(17) & ((\FreqDivider|Add0~33\) # (GND)))
-- \FreqDivider|Add0~35\ = CARRY((!\FreqDivider|Add0~33\) # (!\FreqDivider|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(17),
	datad => VCC,
	cin => \FreqDivider|Add0~33\,
	combout => \FreqDivider|Add0~34_combout\,
	cout => \FreqDivider|Add0~35\);

-- Location: LCCOMB_X56_Y4_N26
\FreqDivider|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~2_combout\ = (\FreqDivider|Add0~34_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~34_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~2_combout\);

-- Location: FF_X56_Y4_N27
\FreqDivider|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(17));

-- Location: LCCOMB_X55_Y4_N6
\FreqDivider|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~36_combout\ = (\FreqDivider|s_divCounter\(18) & (\FreqDivider|Add0~35\ $ (GND))) # (!\FreqDivider|s_divCounter\(18) & (!\FreqDivider|Add0~35\ & VCC))
-- \FreqDivider|Add0~37\ = CARRY((\FreqDivider|s_divCounter\(18) & !\FreqDivider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(18),
	datad => VCC,
	cin => \FreqDivider|Add0~35\,
	combout => \FreqDivider|Add0~36_combout\,
	cout => \FreqDivider|Add0~37\);

-- Location: FF_X55_Y4_N7
\FreqDivider|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(18));

-- Location: LCCOMB_X55_Y4_N8
\FreqDivider|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~38_combout\ = (\FreqDivider|s_divCounter\(19) & (!\FreqDivider|Add0~37\)) # (!\FreqDivider|s_divCounter\(19) & ((\FreqDivider|Add0~37\) # (GND)))
-- \FreqDivider|Add0~39\ = CARRY((!\FreqDivider|Add0~37\) # (!\FreqDivider|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(19),
	datad => VCC,
	cin => \FreqDivider|Add0~37\,
	combout => \FreqDivider|Add0~38_combout\,
	cout => \FreqDivider|Add0~39\);

-- Location: LCCOMB_X54_Y4_N30
\FreqDivider|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~7_combout\ = (\FreqDivider|Add0~38_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~38_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~7_combout\);

-- Location: FF_X54_Y4_N31
\FreqDivider|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(19));

-- Location: LCCOMB_X55_Y4_N10
\FreqDivider|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~40_combout\ = (\FreqDivider|s_divCounter\(20) & (\FreqDivider|Add0~39\ $ (GND))) # (!\FreqDivider|s_divCounter\(20) & (!\FreqDivider|Add0~39\ & VCC))
-- \FreqDivider|Add0~41\ = CARRY((\FreqDivider|s_divCounter\(20) & !\FreqDivider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(20),
	datad => VCC,
	cin => \FreqDivider|Add0~39\,
	combout => \FreqDivider|Add0~40_combout\,
	cout => \FreqDivider|Add0~41\);

-- Location: LCCOMB_X54_Y4_N26
\FreqDivider|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~6_combout\ = (\FreqDivider|Add0~40_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~40_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~6_combout\);

-- Location: FF_X54_Y4_N27
\FreqDivider|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(20));

-- Location: LCCOMB_X55_Y4_N12
\FreqDivider|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~42_combout\ = (\FreqDivider|s_divCounter\(21) & (!\FreqDivider|Add0~41\)) # (!\FreqDivider|s_divCounter\(21) & ((\FreqDivider|Add0~41\) # (GND)))
-- \FreqDivider|Add0~43\ = CARRY((!\FreqDivider|Add0~41\) # (!\FreqDivider|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(21),
	datad => VCC,
	cin => \FreqDivider|Add0~41\,
	combout => \FreqDivider|Add0~42_combout\,
	cout => \FreqDivider|Add0~43\);

-- Location: LCCOMB_X54_Y4_N16
\FreqDivider|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~5_combout\ = (\FreqDivider|Add0~42_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~42_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~5_combout\);

-- Location: FF_X54_Y4_N17
\FreqDivider|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(21));

-- Location: LCCOMB_X55_Y4_N14
\FreqDivider|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Add0~44_combout\ = (\FreqDivider|s_divCounter\(22) & (\FreqDivider|Add0~43\ $ (GND))) # (!\FreqDivider|s_divCounter\(22) & (!\FreqDivider|Add0~43\ & VCC))
-- \FreqDivider|Add0~45\ = CARRY((\FreqDivider|s_divCounter\(22) & !\FreqDivider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|s_divCounter\(22),
	datad => VCC,
	cin => \FreqDivider|Add0~43\,
	combout => \FreqDivider|Add0~44_combout\,
	cout => \FreqDivider|Add0~45\);

-- Location: LCCOMB_X54_Y4_N22
\FreqDivider|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~4_combout\ = (\FreqDivider|Add0~44_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~44_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~4_combout\);

-- Location: FF_X54_Y4_N23
\FreqDivider|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(22));

-- Location: LCCOMB_X56_Y4_N30
\FreqDivider|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|s_divCounter~1_combout\ = (\FreqDivider|Add0~46_combout\ & !\FreqDivider|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDivider|Add0~46_combout\,
	datad => \FreqDivider|Equal0~11_combout\,
	combout => \FreqDivider|s_divCounter~1_combout\);

-- Location: FF_X56_Y4_N31
\FreqDivider|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDivider|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDivider|s_divCounter\(23));

-- Location: LCCOMB_X56_Y4_N28
\FreqDivider|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~7_combout\ = (\FreqDivider|s_divCounter\(23) & (\FreqDivider|s_divCounter\(25) & (!\FreqDivider|s_divCounter\(18) & !\FreqDivider|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(23),
	datab => \FreqDivider|s_divCounter\(25),
	datac => \FreqDivider|s_divCounter\(18),
	datad => \FreqDivider|s_divCounter\(24),
	combout => \FreqDivider|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y4_N6
\FreqDivider|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~8_combout\ = (\FreqDivider|s_divCounter\(17) & (\FreqDivider|s_divCounter\(15) & (!\FreqDivider|s_divCounter\(11) & !\FreqDivider|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(17),
	datab => \FreqDivider|s_divCounter\(15),
	datac => \FreqDivider|s_divCounter\(11),
	datad => \FreqDivider|s_divCounter\(16),
	combout => \FreqDivider|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y4_N8
\FreqDivider|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~9_combout\ = (\FreqDivider|Equal0~7_combout\ & (\FreqDivider|s_divCounter\(6) & \FreqDivider|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDivider|Equal0~7_combout\,
	datac => \FreqDivider|s_divCounter\(6),
	datad => \FreqDivider|Equal0~8_combout\,
	combout => \FreqDivider|Equal0~9_combout\);

-- Location: LCCOMB_X56_Y4_N12
\FreqDivider|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~0_combout\ = (!\FreqDivider|s_divCounter\(23) & (!\FreqDivider|s_divCounter\(25) & (\FreqDivider|s_divCounter\(18) & \FreqDivider|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(23),
	datab => \FreqDivider|s_divCounter\(25),
	datac => \FreqDivider|s_divCounter\(18),
	datad => \FreqDivider|s_divCounter\(24),
	combout => \FreqDivider|clkOut~0_combout\);

-- Location: LCCOMB_X56_Y4_N18
\FreqDivider|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~1_combout\ = (!\FreqDivider|s_divCounter\(17) & (!\FreqDivider|s_divCounter\(15) & (\FreqDivider|s_divCounter\(11) & \FreqDivider|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(17),
	datab => \FreqDivider|s_divCounter\(15),
	datac => \FreqDivider|s_divCounter\(11),
	datad => \FreqDivider|s_divCounter\(16),
	combout => \FreqDivider|clkOut~1_combout\);

-- Location: LCCOMB_X56_Y4_N16
\FreqDivider|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~2_combout\ = (\FreqDivider|clkOut~0_combout\ & (!\FreqDivider|s_divCounter\(6) & \FreqDivider|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|clkOut~0_combout\,
	datac => \FreqDivider|s_divCounter\(6),
	datad => \FreqDivider|clkOut~1_combout\,
	combout => \FreqDivider|clkOut~2_combout\);

-- Location: LCCOMB_X56_Y4_N14
\FreqDivider|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|Equal0~6_combout\ = (\FreqDivider|s_divCounter\(0) & (\FreqDivider|s_divCounter\(1) & (\FreqDivider|Equal0~5_combout\ & \FreqDivider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|s_divCounter\(0),
	datab => \FreqDivider|s_divCounter\(1),
	datac => \FreqDivider|Equal0~5_combout\,
	datad => \FreqDivider|Equal0~4_combout\,
	combout => \FreqDivider|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y4_N30
\FreqDivider|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~3_combout\ = (\FreqDivider|Equal0~6_combout\ & (!\FreqDivider|Equal0~9_combout\ & ((\FreqDivider|clkOut~q\) # (\FreqDivider|clkOut~2_combout\)))) # (!\FreqDivider|Equal0~6_combout\ & (((\FreqDivider|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDivider|Equal0~9_combout\,
	datab => \FreqDivider|clkOut~q\,
	datac => \FreqDivider|clkOut~2_combout\,
	datad => \FreqDivider|Equal0~6_combout\,
	combout => \FreqDivider|clkOut~3_combout\);

-- Location: LCCOMB_X57_Y4_N6
\FreqDivider|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDivider|clkOut~feeder_combout\ = \FreqDivider|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FreqDivider|clkOut~3_combout\,
	combout => \FreqDivider|clkOut~feeder_combout\);

-- Location: FF_X57_Y4_N7
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

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X95_Y72_N4
\Counter|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~0_combout\ = (\KEY[0]~input_o\ & !\Counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \Counter|s_count\(0),
	combout => \Counter|s_count~0_combout\);

-- Location: FF_X95_Y72_N5
\Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \Counter|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(0));

-- Location: LCCOMB_X95_Y72_N18
\Counter|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~1_combout\ = (\KEY[0]~input_o\ & (\Counter|s_count\(1) $ (\Counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \Counter|s_count\(1),
	datad => \Counter|s_count\(0),
	combout => \Counter|s_count~1_combout\);

-- Location: FF_X95_Y72_N19
\Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \Counter|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(1));

-- Location: LCCOMB_X95_Y72_N28
\Counter|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~2_combout\ = (\KEY[0]~input_o\ & (\Counter|s_count\(2) $ (((\Counter|s_count\(0) & \Counter|s_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Counter|s_count\(0),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(1),
	combout => \Counter|s_count~2_combout\);

-- Location: FF_X95_Y72_N29
\Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \Counter|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(2));

-- Location: LCCOMB_X95_Y72_N24
\Counter|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~3_combout\ = (!\Counter|s_count\(2)) # (!\Counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|s_count\(0),
	datad => \Counter|s_count\(2),
	combout => \Counter|s_count~3_combout\);

-- Location: LCCOMB_X95_Y72_N14
\Counter|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter|s_count~4_combout\ = (\KEY[0]~input_o\ & (\Counter|s_count\(3) $ (((\Counter|s_count\(1) & !\Counter|s_count~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Counter|s_count\(1),
	datac => \Counter|s_count\(3),
	datad => \Counter|s_count~3_combout\,
	combout => \Counter|s_count~4_combout\);

-- Location: FF_X95_Y72_N15
\Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDivider|clkOut~clkctrl_outclk\,
	d => \Counter|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|s_count\(3));

-- Location: LCCOMB_X95_Y72_N20
\ROM|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~0_combout\ = (\Counter|s_count\(3) & (\Counter|s_count\(1) & (\Counter|s_count\(2) & \Counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datab => \Counter|s_count\(1),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(0),
	combout => \ROM|Mux3~0_combout\);

-- Location: LCCOMB_X95_Y72_N22
\ROM|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~1_combout\ = (\Counter|s_count\(3) & (\Counter|s_count\(2) & \Counter|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|s_count\(3),
	datac => \Counter|s_count\(2),
	datad => \Counter|s_count\(1),
	combout => \ROM|Mux3~1_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


