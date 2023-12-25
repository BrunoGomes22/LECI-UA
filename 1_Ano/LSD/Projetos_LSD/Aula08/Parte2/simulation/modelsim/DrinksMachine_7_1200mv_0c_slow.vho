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

-- DATE "06/02/2022 09:22:59"

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

ENTITY 	DrinksFSMdemo IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END DrinksFSMdemo;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksFSMdemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \pulse|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \pulse|s_cnt[0]~26_combout\ : std_logic;
SIGNAL \pulse|s_cnt[7]~28_combout\ : std_logic;
SIGNAL \pulse|s_cnt[0]~27\ : std_logic;
SIGNAL \pulse|s_cnt[1]~29_combout\ : std_logic;
SIGNAL \pulse|s_cnt[1]~30\ : std_logic;
SIGNAL \pulse|s_cnt[2]~31_combout\ : std_logic;
SIGNAL \pulse|s_cnt[2]~32\ : std_logic;
SIGNAL \pulse|s_cnt[3]~33_combout\ : std_logic;
SIGNAL \pulse|s_cnt[3]~34\ : std_logic;
SIGNAL \pulse|s_cnt[4]~35_combout\ : std_logic;
SIGNAL \pulse|s_cnt[4]~36\ : std_logic;
SIGNAL \pulse|s_cnt[5]~37_combout\ : std_logic;
SIGNAL \pulse|s_cnt[5]~38\ : std_logic;
SIGNAL \pulse|s_cnt[6]~39_combout\ : std_logic;
SIGNAL \pulse|s_cnt[6]~40\ : std_logic;
SIGNAL \pulse|s_cnt[7]~41_combout\ : std_logic;
SIGNAL \pulse|s_cnt[7]~42\ : std_logic;
SIGNAL \pulse|s_cnt[8]~43_combout\ : std_logic;
SIGNAL \pulse|s_cnt[8]~44\ : std_logic;
SIGNAL \pulse|s_cnt[9]~45_combout\ : std_logic;
SIGNAL \pulse|s_cnt[9]~46\ : std_logic;
SIGNAL \pulse|s_cnt[10]~47_combout\ : std_logic;
SIGNAL \pulse|s_cnt[10]~48\ : std_logic;
SIGNAL \pulse|s_cnt[11]~49_combout\ : std_logic;
SIGNAL \pulse|s_cnt[11]~50\ : std_logic;
SIGNAL \pulse|s_cnt[12]~51_combout\ : std_logic;
SIGNAL \pulse|s_cnt[12]~52\ : std_logic;
SIGNAL \pulse|s_cnt[13]~53_combout\ : std_logic;
SIGNAL \pulse|s_cnt[13]~54\ : std_logic;
SIGNAL \pulse|s_cnt[14]~55_combout\ : std_logic;
SIGNAL \pulse|s_cnt[14]~56\ : std_logic;
SIGNAL \pulse|s_cnt[15]~57_combout\ : std_logic;
SIGNAL \pulse|s_cnt[15]~58\ : std_logic;
SIGNAL \pulse|s_cnt[16]~59_combout\ : std_logic;
SIGNAL \pulse|s_cnt[16]~60\ : std_logic;
SIGNAL \pulse|s_cnt[17]~61_combout\ : std_logic;
SIGNAL \pulse|s_cnt[17]~62\ : std_logic;
SIGNAL \pulse|s_cnt[18]~63_combout\ : std_logic;
SIGNAL \pulse|s_cnt[18]~64\ : std_logic;
SIGNAL \pulse|s_cnt[19]~65_combout\ : std_logic;
SIGNAL \pulse|Equal0~5_combout\ : std_logic;
SIGNAL \pulse|s_cnt[19]~66\ : std_logic;
SIGNAL \pulse|s_cnt[20]~67_combout\ : std_logic;
SIGNAL \pulse|s_cnt[20]~68\ : std_logic;
SIGNAL \pulse|s_cnt[21]~69_combout\ : std_logic;
SIGNAL \pulse|s_cnt[21]~70\ : std_logic;
SIGNAL \pulse|s_cnt[22]~71_combout\ : std_logic;
SIGNAL \pulse|s_cnt[22]~72\ : std_logic;
SIGNAL \pulse|s_cnt[23]~73_combout\ : std_logic;
SIGNAL \pulse|s_cnt[23]~74\ : std_logic;
SIGNAL \pulse|s_cnt[24]~75_combout\ : std_logic;
SIGNAL \pulse|s_cnt[24]~76\ : std_logic;
SIGNAL \pulse|s_cnt[25]~77_combout\ : std_logic;
SIGNAL \pulse|Equal0~7_combout\ : std_logic;
SIGNAL \pulse|Equal0~3_combout\ : std_logic;
SIGNAL \pulse|Equal0~2_combout\ : std_logic;
SIGNAL \pulse|Equal0~0_combout\ : std_logic;
SIGNAL \pulse|Equal0~1_combout\ : std_logic;
SIGNAL \pulse|Equal0~4_combout\ : std_logic;
SIGNAL \pulse|Equal0~6_combout\ : std_logic;
SIGNAL \pulse|Equal0~8_combout\ : std_logic;
SIGNAL \pulse|pulse~0_combout\ : std_logic;
SIGNAL \pulse|pulse~q\ : std_logic;
SIGNAL \pulse|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \machine|s_CurrentState~13_combout\ : std_logic;
SIGNAL \machine|s_CurrentState~17_combout\ : std_logic;
SIGNAL \machine|s_CurrentState~18_combout\ : std_logic;
SIGNAL \machine|s_CurrentState.E1~q\ : std_logic;
SIGNAL \machine|s_CurrentState~11_combout\ : std_logic;
SIGNAL \machine|s_CurrentState~12_combout\ : std_logic;
SIGNAL \machine|s_CurrentState.E2~q\ : std_logic;
SIGNAL \machine|s_CurrentState~14_combout\ : std_logic;
SIGNAL \machine|s_CurrentState.E3~q\ : std_logic;
SIGNAL \machine|s_CurrentState~15_combout\ : std_logic;
SIGNAL \machine|s_CurrentState~16_combout\ : std_logic;
SIGNAL \machine|s_CurrentState.E4~q\ : std_logic;
SIGNAL \machine|s_CurrentState~8_combout\ : std_logic;
SIGNAL \machine|s_CurrentState~9_combout\ : std_logic;
SIGNAL \machine|s_CurrentState.E5~q\ : std_logic;
SIGNAL \machine|s_CurrentState~10_combout\ : std_logic;
SIGNAL \machine|s_CurrentState.E0~feeder_combout\ : std_logic;
SIGNAL \machine|s_CurrentState.E0~q\ : std_logic;
SIGNAL \machine|WideOr0~0_combout\ : std_logic;
SIGNAL \machine|drink~combout\ : std_logic;
SIGNAL \pulse|s_cnt\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pulse|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulse|pulse~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \machine|drink~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X49_Y73_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X48_Y63_N6
\pulse|s_cnt[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[0]~26_combout\ = \pulse|s_cnt\(0) $ (VCC)
-- \pulse|s_cnt[0]~27\ = CARRY(\pulse|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(0),
	datad => VCC,
	combout => \pulse|s_cnt[0]~26_combout\,
	cout => \pulse|s_cnt[0]~27\);

-- Location: LCCOMB_X48_Y62_N30
\pulse|s_cnt[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[7]~28_combout\ = (\SW[2]~input_o\) # (!\pulse|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => \pulse|Equal0~8_combout\,
	combout => \pulse|s_cnt[7]~28_combout\);

-- Location: FF_X48_Y63_N7
\pulse|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[0]~26_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(0));

-- Location: LCCOMB_X48_Y63_N8
\pulse|s_cnt[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[1]~29_combout\ = (\pulse|s_cnt\(1) & (!\pulse|s_cnt[0]~27\)) # (!\pulse|s_cnt\(1) & ((\pulse|s_cnt[0]~27\) # (GND)))
-- \pulse|s_cnt[1]~30\ = CARRY((!\pulse|s_cnt[0]~27\) # (!\pulse|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(1),
	datad => VCC,
	cin => \pulse|s_cnt[0]~27\,
	combout => \pulse|s_cnt[1]~29_combout\,
	cout => \pulse|s_cnt[1]~30\);

-- Location: FF_X48_Y63_N9
\pulse|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[1]~29_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(1));

-- Location: LCCOMB_X48_Y63_N10
\pulse|s_cnt[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[2]~31_combout\ = (\pulse|s_cnt\(2) & (\pulse|s_cnt[1]~30\ $ (GND))) # (!\pulse|s_cnt\(2) & (!\pulse|s_cnt[1]~30\ & VCC))
-- \pulse|s_cnt[2]~32\ = CARRY((\pulse|s_cnt\(2) & !\pulse|s_cnt[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(2),
	datad => VCC,
	cin => \pulse|s_cnt[1]~30\,
	combout => \pulse|s_cnt[2]~31_combout\,
	cout => \pulse|s_cnt[2]~32\);

-- Location: FF_X48_Y63_N11
\pulse|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[2]~31_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(2));

-- Location: LCCOMB_X48_Y63_N12
\pulse|s_cnt[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[3]~33_combout\ = (\pulse|s_cnt\(3) & (!\pulse|s_cnt[2]~32\)) # (!\pulse|s_cnt\(3) & ((\pulse|s_cnt[2]~32\) # (GND)))
-- \pulse|s_cnt[3]~34\ = CARRY((!\pulse|s_cnt[2]~32\) # (!\pulse|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(3),
	datad => VCC,
	cin => \pulse|s_cnt[2]~32\,
	combout => \pulse|s_cnt[3]~33_combout\,
	cout => \pulse|s_cnt[3]~34\);

-- Location: FF_X48_Y63_N13
\pulse|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[3]~33_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(3));

-- Location: LCCOMB_X48_Y63_N14
\pulse|s_cnt[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[4]~35_combout\ = (\pulse|s_cnt\(4) & (\pulse|s_cnt[3]~34\ $ (GND))) # (!\pulse|s_cnt\(4) & (!\pulse|s_cnt[3]~34\ & VCC))
-- \pulse|s_cnt[4]~36\ = CARRY((\pulse|s_cnt\(4) & !\pulse|s_cnt[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(4),
	datad => VCC,
	cin => \pulse|s_cnt[3]~34\,
	combout => \pulse|s_cnt[4]~35_combout\,
	cout => \pulse|s_cnt[4]~36\);

-- Location: FF_X48_Y63_N15
\pulse|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[4]~35_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(4));

-- Location: LCCOMB_X48_Y63_N16
\pulse|s_cnt[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[5]~37_combout\ = (\pulse|s_cnt\(5) & (!\pulse|s_cnt[4]~36\)) # (!\pulse|s_cnt\(5) & ((\pulse|s_cnt[4]~36\) # (GND)))
-- \pulse|s_cnt[5]~38\ = CARRY((!\pulse|s_cnt[4]~36\) # (!\pulse|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(5),
	datad => VCC,
	cin => \pulse|s_cnt[4]~36\,
	combout => \pulse|s_cnt[5]~37_combout\,
	cout => \pulse|s_cnt[5]~38\);

-- Location: FF_X48_Y63_N17
\pulse|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[5]~37_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(5));

-- Location: LCCOMB_X48_Y63_N18
\pulse|s_cnt[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[6]~39_combout\ = (\pulse|s_cnt\(6) & (\pulse|s_cnt[5]~38\ $ (GND))) # (!\pulse|s_cnt\(6) & (!\pulse|s_cnt[5]~38\ & VCC))
-- \pulse|s_cnt[6]~40\ = CARRY((\pulse|s_cnt\(6) & !\pulse|s_cnt[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(6),
	datad => VCC,
	cin => \pulse|s_cnt[5]~38\,
	combout => \pulse|s_cnt[6]~39_combout\,
	cout => \pulse|s_cnt[6]~40\);

-- Location: FF_X48_Y63_N19
\pulse|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[6]~39_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(6));

-- Location: LCCOMB_X48_Y63_N20
\pulse|s_cnt[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[7]~41_combout\ = (\pulse|s_cnt\(7) & (!\pulse|s_cnt[6]~40\)) # (!\pulse|s_cnt\(7) & ((\pulse|s_cnt[6]~40\) # (GND)))
-- \pulse|s_cnt[7]~42\ = CARRY((!\pulse|s_cnt[6]~40\) # (!\pulse|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(7),
	datad => VCC,
	cin => \pulse|s_cnt[6]~40\,
	combout => \pulse|s_cnt[7]~41_combout\,
	cout => \pulse|s_cnt[7]~42\);

-- Location: FF_X48_Y63_N21
\pulse|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[7]~41_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(7));

-- Location: LCCOMB_X48_Y63_N22
\pulse|s_cnt[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[8]~43_combout\ = (\pulse|s_cnt\(8) & (\pulse|s_cnt[7]~42\ $ (GND))) # (!\pulse|s_cnt\(8) & (!\pulse|s_cnt[7]~42\ & VCC))
-- \pulse|s_cnt[8]~44\ = CARRY((\pulse|s_cnt\(8) & !\pulse|s_cnt[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(8),
	datad => VCC,
	cin => \pulse|s_cnt[7]~42\,
	combout => \pulse|s_cnt[8]~43_combout\,
	cout => \pulse|s_cnt[8]~44\);

-- Location: FF_X48_Y63_N23
\pulse|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[8]~43_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(8));

-- Location: LCCOMB_X48_Y63_N24
\pulse|s_cnt[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[9]~45_combout\ = (\pulse|s_cnt\(9) & (!\pulse|s_cnt[8]~44\)) # (!\pulse|s_cnt\(9) & ((\pulse|s_cnt[8]~44\) # (GND)))
-- \pulse|s_cnt[9]~46\ = CARRY((!\pulse|s_cnt[8]~44\) # (!\pulse|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(9),
	datad => VCC,
	cin => \pulse|s_cnt[8]~44\,
	combout => \pulse|s_cnt[9]~45_combout\,
	cout => \pulse|s_cnt[9]~46\);

-- Location: FF_X48_Y63_N25
\pulse|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[9]~45_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(9));

-- Location: LCCOMB_X48_Y63_N26
\pulse|s_cnt[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[10]~47_combout\ = (\pulse|s_cnt\(10) & (\pulse|s_cnt[9]~46\ $ (GND))) # (!\pulse|s_cnt\(10) & (!\pulse|s_cnt[9]~46\ & VCC))
-- \pulse|s_cnt[10]~48\ = CARRY((\pulse|s_cnt\(10) & !\pulse|s_cnt[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(10),
	datad => VCC,
	cin => \pulse|s_cnt[9]~46\,
	combout => \pulse|s_cnt[10]~47_combout\,
	cout => \pulse|s_cnt[10]~48\);

-- Location: FF_X48_Y63_N27
\pulse|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[10]~47_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(10));

-- Location: LCCOMB_X48_Y63_N28
\pulse|s_cnt[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[11]~49_combout\ = (\pulse|s_cnt\(11) & (!\pulse|s_cnt[10]~48\)) # (!\pulse|s_cnt\(11) & ((\pulse|s_cnt[10]~48\) # (GND)))
-- \pulse|s_cnt[11]~50\ = CARRY((!\pulse|s_cnt[10]~48\) # (!\pulse|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(11),
	datad => VCC,
	cin => \pulse|s_cnt[10]~48\,
	combout => \pulse|s_cnt[11]~49_combout\,
	cout => \pulse|s_cnt[11]~50\);

-- Location: FF_X48_Y63_N29
\pulse|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[11]~49_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(11));

-- Location: LCCOMB_X48_Y63_N30
\pulse|s_cnt[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[12]~51_combout\ = (\pulse|s_cnt\(12) & (\pulse|s_cnt[11]~50\ $ (GND))) # (!\pulse|s_cnt\(12) & (!\pulse|s_cnt[11]~50\ & VCC))
-- \pulse|s_cnt[12]~52\ = CARRY((\pulse|s_cnt\(12) & !\pulse|s_cnt[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(12),
	datad => VCC,
	cin => \pulse|s_cnt[11]~50\,
	combout => \pulse|s_cnt[12]~51_combout\,
	cout => \pulse|s_cnt[12]~52\);

-- Location: FF_X47_Y62_N31
\pulse|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse|s_cnt[12]~51_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(12));

-- Location: LCCOMB_X48_Y62_N0
\pulse|s_cnt[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[13]~53_combout\ = (\pulse|s_cnt\(13) & (!\pulse|s_cnt[12]~52\)) # (!\pulse|s_cnt\(13) & ((\pulse|s_cnt[12]~52\) # (GND)))
-- \pulse|s_cnt[13]~54\ = CARRY((!\pulse|s_cnt[12]~52\) # (!\pulse|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(13),
	datad => VCC,
	cin => \pulse|s_cnt[12]~52\,
	combout => \pulse|s_cnt[13]~53_combout\,
	cout => \pulse|s_cnt[13]~54\);

-- Location: FF_X48_Y62_N1
\pulse|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[13]~53_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(13));

-- Location: LCCOMB_X48_Y62_N2
\pulse|s_cnt[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[14]~55_combout\ = (\pulse|s_cnt\(14) & (\pulse|s_cnt[13]~54\ $ (GND))) # (!\pulse|s_cnt\(14) & (!\pulse|s_cnt[13]~54\ & VCC))
-- \pulse|s_cnt[14]~56\ = CARRY((\pulse|s_cnt\(14) & !\pulse|s_cnt[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(14),
	datad => VCC,
	cin => \pulse|s_cnt[13]~54\,
	combout => \pulse|s_cnt[14]~55_combout\,
	cout => \pulse|s_cnt[14]~56\);

-- Location: FF_X48_Y62_N3
\pulse|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[14]~55_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(14));

-- Location: LCCOMB_X48_Y62_N4
\pulse|s_cnt[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[15]~57_combout\ = (\pulse|s_cnt\(15) & (!\pulse|s_cnt[14]~56\)) # (!\pulse|s_cnt\(15) & ((\pulse|s_cnt[14]~56\) # (GND)))
-- \pulse|s_cnt[15]~58\ = CARRY((!\pulse|s_cnt[14]~56\) # (!\pulse|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(15),
	datad => VCC,
	cin => \pulse|s_cnt[14]~56\,
	combout => \pulse|s_cnt[15]~57_combout\,
	cout => \pulse|s_cnt[15]~58\);

-- Location: FF_X48_Y62_N5
\pulse|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[15]~57_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(15));

-- Location: LCCOMB_X48_Y62_N6
\pulse|s_cnt[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[16]~59_combout\ = (\pulse|s_cnt\(16) & (\pulse|s_cnt[15]~58\ $ (GND))) # (!\pulse|s_cnt\(16) & (!\pulse|s_cnt[15]~58\ & VCC))
-- \pulse|s_cnt[16]~60\ = CARRY((\pulse|s_cnt\(16) & !\pulse|s_cnt[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(16),
	datad => VCC,
	cin => \pulse|s_cnt[15]~58\,
	combout => \pulse|s_cnt[16]~59_combout\,
	cout => \pulse|s_cnt[16]~60\);

-- Location: FF_X48_Y62_N7
\pulse|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[16]~59_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(16));

-- Location: LCCOMB_X48_Y62_N8
\pulse|s_cnt[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[17]~61_combout\ = (\pulse|s_cnt\(17) & (!\pulse|s_cnt[16]~60\)) # (!\pulse|s_cnt\(17) & ((\pulse|s_cnt[16]~60\) # (GND)))
-- \pulse|s_cnt[17]~62\ = CARRY((!\pulse|s_cnt[16]~60\) # (!\pulse|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(17),
	datad => VCC,
	cin => \pulse|s_cnt[16]~60\,
	combout => \pulse|s_cnt[17]~61_combout\,
	cout => \pulse|s_cnt[17]~62\);

-- Location: FF_X48_Y62_N9
\pulse|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[17]~61_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(17));

-- Location: LCCOMB_X48_Y62_N10
\pulse|s_cnt[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[18]~63_combout\ = (\pulse|s_cnt\(18) & (\pulse|s_cnt[17]~62\ $ (GND))) # (!\pulse|s_cnt\(18) & (!\pulse|s_cnt[17]~62\ & VCC))
-- \pulse|s_cnt[18]~64\ = CARRY((\pulse|s_cnt\(18) & !\pulse|s_cnt[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(18),
	datad => VCC,
	cin => \pulse|s_cnt[17]~62\,
	combout => \pulse|s_cnt[18]~63_combout\,
	cout => \pulse|s_cnt[18]~64\);

-- Location: FF_X48_Y62_N11
\pulse|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[18]~63_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(18));

-- Location: LCCOMB_X48_Y62_N12
\pulse|s_cnt[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[19]~65_combout\ = (\pulse|s_cnt\(19) & (!\pulse|s_cnt[18]~64\)) # (!\pulse|s_cnt\(19) & ((\pulse|s_cnt[18]~64\) # (GND)))
-- \pulse|s_cnt[19]~66\ = CARRY((!\pulse|s_cnt[18]~64\) # (!\pulse|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(19),
	datad => VCC,
	cin => \pulse|s_cnt[18]~64\,
	combout => \pulse|s_cnt[19]~65_combout\,
	cout => \pulse|s_cnt[19]~66\);

-- Location: FF_X48_Y62_N13
\pulse|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[19]~65_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(19));

-- Location: LCCOMB_X49_Y62_N4
\pulse|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~5_combout\ = ((\pulse|s_cnt\(16)) # ((\pulse|s_cnt\(18)) # (!\pulse|s_cnt\(17)))) # (!\pulse|s_cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(19),
	datab => \pulse|s_cnt\(16),
	datac => \pulse|s_cnt\(18),
	datad => \pulse|s_cnt\(17),
	combout => \pulse|Equal0~5_combout\);

-- Location: LCCOMB_X48_Y62_N14
\pulse|s_cnt[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[20]~67_combout\ = (\pulse|s_cnt\(20) & (\pulse|s_cnt[19]~66\ $ (GND))) # (!\pulse|s_cnt\(20) & (!\pulse|s_cnt[19]~66\ & VCC))
-- \pulse|s_cnt[20]~68\ = CARRY((\pulse|s_cnt\(20) & !\pulse|s_cnt[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(20),
	datad => VCC,
	cin => \pulse|s_cnt[19]~66\,
	combout => \pulse|s_cnt[20]~67_combout\,
	cout => \pulse|s_cnt[20]~68\);

-- Location: FF_X48_Y62_N15
\pulse|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[20]~67_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(20));

-- Location: LCCOMB_X48_Y62_N16
\pulse|s_cnt[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[21]~69_combout\ = (\pulse|s_cnt\(21) & (!\pulse|s_cnt[20]~68\)) # (!\pulse|s_cnt\(21) & ((\pulse|s_cnt[20]~68\) # (GND)))
-- \pulse|s_cnt[21]~70\ = CARRY((!\pulse|s_cnt[20]~68\) # (!\pulse|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(21),
	datad => VCC,
	cin => \pulse|s_cnt[20]~68\,
	combout => \pulse|s_cnt[21]~69_combout\,
	cout => \pulse|s_cnt[21]~70\);

-- Location: FF_X48_Y62_N17
\pulse|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[21]~69_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(21));

-- Location: LCCOMB_X48_Y62_N18
\pulse|s_cnt[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[22]~71_combout\ = (\pulse|s_cnt\(22) & (\pulse|s_cnt[21]~70\ $ (GND))) # (!\pulse|s_cnt\(22) & (!\pulse|s_cnt[21]~70\ & VCC))
-- \pulse|s_cnt[22]~72\ = CARRY((\pulse|s_cnt\(22) & !\pulse|s_cnt[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(22),
	datad => VCC,
	cin => \pulse|s_cnt[21]~70\,
	combout => \pulse|s_cnt[22]~71_combout\,
	cout => \pulse|s_cnt[22]~72\);

-- Location: FF_X48_Y62_N19
\pulse|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[22]~71_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(22));

-- Location: LCCOMB_X48_Y62_N20
\pulse|s_cnt[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[23]~73_combout\ = (\pulse|s_cnt\(23) & (!\pulse|s_cnt[22]~72\)) # (!\pulse|s_cnt\(23) & ((\pulse|s_cnt[22]~72\) # (GND)))
-- \pulse|s_cnt[23]~74\ = CARRY((!\pulse|s_cnt[22]~72\) # (!\pulse|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(23),
	datad => VCC,
	cin => \pulse|s_cnt[22]~72\,
	combout => \pulse|s_cnt[23]~73_combout\,
	cout => \pulse|s_cnt[23]~74\);

-- Location: FF_X48_Y62_N21
\pulse|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[23]~73_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(23));

-- Location: LCCOMB_X48_Y62_N22
\pulse|s_cnt[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[24]~75_combout\ = (\pulse|s_cnt\(24) & (\pulse|s_cnt[23]~74\ $ (GND))) # (!\pulse|s_cnt\(24) & (!\pulse|s_cnt[23]~74\ & VCC))
-- \pulse|s_cnt[24]~76\ = CARRY((\pulse|s_cnt\(24) & !\pulse|s_cnt[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(24),
	datad => VCC,
	cin => \pulse|s_cnt[23]~74\,
	combout => \pulse|s_cnt[24]~75_combout\,
	cout => \pulse|s_cnt[24]~76\);

-- Location: FF_X48_Y62_N23
\pulse|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[24]~75_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(24));

-- Location: LCCOMB_X48_Y62_N24
\pulse|s_cnt[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|s_cnt[25]~77_combout\ = \pulse|s_cnt[24]~76\ $ (\pulse|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulse|s_cnt\(25),
	cin => \pulse|s_cnt[24]~76\,
	combout => \pulse|s_cnt[25]~77_combout\);

-- Location: FF_X48_Y62_N25
\pulse|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|s_cnt[25]~77_combout\,
	sclr => \pulse|s_cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|s_cnt\(25));

-- Location: LCCOMB_X49_Y62_N0
\pulse|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~7_combout\ = (\pulse|s_cnt\(24)) # (!\pulse|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse|s_cnt\(24),
	datad => \pulse|s_cnt\(25),
	combout => \pulse|Equal0~7_combout\);

-- Location: LCCOMB_X47_Y62_N26
\pulse|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~3_combout\ = (((!\pulse|s_cnt\(15)) # (!\pulse|s_cnt\(12))) # (!\pulse|s_cnt\(13))) # (!\pulse|s_cnt\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(14),
	datab => \pulse|s_cnt\(13),
	datac => \pulse|s_cnt\(12),
	datad => \pulse|s_cnt\(15),
	combout => \pulse|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y63_N0
\pulse|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~2_combout\ = (\pulse|s_cnt\(8)) # ((\pulse|s_cnt\(11)) # ((\pulse|s_cnt\(10)) # (\pulse|s_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(8),
	datab => \pulse|s_cnt\(11),
	datac => \pulse|s_cnt\(10),
	datad => \pulse|s_cnt\(9),
	combout => \pulse|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y63_N4
\pulse|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~0_combout\ = (((!\pulse|s_cnt\(2)) # (!\pulse|s_cnt\(0))) # (!\pulse|s_cnt\(1))) # (!\pulse|s_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(3),
	datab => \pulse|s_cnt\(1),
	datac => \pulse|s_cnt\(0),
	datad => \pulse|s_cnt\(2),
	combout => \pulse|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y63_N2
\pulse|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~1_combout\ = (\pulse|s_cnt\(7)) # (((!\pulse|s_cnt\(5)) # (!\pulse|s_cnt\(4))) # (!\pulse|s_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(7),
	datab => \pulse|s_cnt\(6),
	datac => \pulse|s_cnt\(4),
	datad => \pulse|s_cnt\(5),
	combout => \pulse|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y62_N26
\pulse|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~4_combout\ = (\pulse|Equal0~3_combout\) # ((\pulse|Equal0~2_combout\) # ((\pulse|Equal0~0_combout\) # (\pulse|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|Equal0~3_combout\,
	datab => \pulse|Equal0~2_combout\,
	datac => \pulse|Equal0~0_combout\,
	datad => \pulse|Equal0~1_combout\,
	combout => \pulse|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y62_N10
\pulse|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~6_combout\ = (((!\pulse|s_cnt\(22)) # (!\pulse|s_cnt\(21))) # (!\pulse|s_cnt\(23))) # (!\pulse|s_cnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|s_cnt\(20),
	datab => \pulse|s_cnt\(23),
	datac => \pulse|s_cnt\(21),
	datad => \pulse|s_cnt\(22),
	combout => \pulse|Equal0~6_combout\);

-- Location: LCCOMB_X48_Y62_N28
\pulse|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|Equal0~8_combout\ = (\pulse|Equal0~5_combout\) # ((\pulse|Equal0~7_combout\) # ((\pulse|Equal0~4_combout\) # (\pulse|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse|Equal0~5_combout\,
	datab => \pulse|Equal0~7_combout\,
	datac => \pulse|Equal0~4_combout\,
	datad => \pulse|Equal0~6_combout\,
	combout => \pulse|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y62_N8
\pulse|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse|pulse~0_combout\ = (!\SW[2]~input_o\ & !\pulse|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \pulse|Equal0~8_combout\,
	combout => \pulse|pulse~0_combout\);

-- Location: FF_X47_Y62_N9
\pulse|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse|pulse~q\);

-- Location: CLKCTRL_G14
\pulse|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulse|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulse|pulse~clkctrl_outclk\);

-- Location: IOIBUF_X45_Y73_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X46_Y62_N30
\machine|s_CurrentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~13_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((!\machine|s_CurrentState.E0~q\))) # (!\SW[1]~input_o\ & (\machine|s_CurrentState.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \machine|s_CurrentState.E3~q\,
	datad => \machine|s_CurrentState.E0~q\,
	combout => \machine|s_CurrentState~13_combout\);

-- Location: LCCOMB_X46_Y62_N8
\machine|s_CurrentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~17_combout\ = (\SW[0]~input_o\ & (((!\machine|s_CurrentState.E0~q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\machine|s_CurrentState.E1~q\) # (!\machine|s_CurrentState.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \machine|s_CurrentState.E1~q\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \machine|s_CurrentState.E0~q\,
	combout => \machine|s_CurrentState~17_combout\);

-- Location: LCCOMB_X46_Y62_N12
\machine|s_CurrentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~18_combout\ = (!\KEY[0]~input_o\ & \machine|s_CurrentState~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \machine|s_CurrentState~17_combout\,
	combout => \machine|s_CurrentState~18_combout\);

-- Location: FF_X46_Y62_N13
\machine|s_CurrentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|pulse~clkctrl_outclk\,
	d => \machine|s_CurrentState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|s_CurrentState.E1~q\);

-- Location: LCCOMB_X46_Y62_N10
\machine|s_CurrentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~11_combout\ = (\SW[0]~input_o\ & (\machine|s_CurrentState.E1~q\)) # (!\SW[0]~input_o\ & (((!\SW[1]~input_o\ & \machine|s_CurrentState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \machine|s_CurrentState.E1~q\,
	datab => \SW[1]~input_o\,
	datac => \machine|s_CurrentState.E2~q\,
	datad => \SW[0]~input_o\,
	combout => \machine|s_CurrentState~11_combout\);

-- Location: LCCOMB_X46_Y62_N4
\machine|s_CurrentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~12_combout\ = (!\KEY[0]~input_o\ & \machine|s_CurrentState~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \machine|s_CurrentState~11_combout\,
	combout => \machine|s_CurrentState~12_combout\);

-- Location: FF_X46_Y62_N5
\machine|s_CurrentState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|pulse~clkctrl_outclk\,
	d => \machine|s_CurrentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|s_CurrentState.E2~q\);

-- Location: LCCOMB_X46_Y62_N22
\machine|s_CurrentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~14_combout\ = (!\KEY[0]~input_o\ & ((\machine|s_CurrentState~13_combout\) # ((\SW[0]~input_o\ & \machine|s_CurrentState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \machine|s_CurrentState~13_combout\,
	datad => \machine|s_CurrentState.E2~q\,
	combout => \machine|s_CurrentState~14_combout\);

-- Location: FF_X46_Y62_N23
\machine|s_CurrentState.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|pulse~clkctrl_outclk\,
	d => \machine|s_CurrentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|s_CurrentState.E3~q\);

-- Location: LCCOMB_X46_Y62_N28
\machine|s_CurrentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~15_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\machine|s_CurrentState.E1~q\)) # (!\SW[1]~input_o\ & ((\machine|s_CurrentState.E4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \machine|s_CurrentState.E1~q\,
	datad => \machine|s_CurrentState.E4~q\,
	combout => \machine|s_CurrentState~15_combout\);

-- Location: LCCOMB_X46_Y62_N24
\machine|s_CurrentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~16_combout\ = (!\KEY[0]~input_o\ & ((\machine|s_CurrentState~15_combout\) # ((\machine|s_CurrentState.E3~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \machine|s_CurrentState~15_combout\,
	datac => \machine|s_CurrentState.E3~q\,
	datad => \SW[0]~input_o\,
	combout => \machine|s_CurrentState~16_combout\);

-- Location: FF_X46_Y62_N25
\machine|s_CurrentState.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|pulse~clkctrl_outclk\,
	d => \machine|s_CurrentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|s_CurrentState.E4~q\);

-- Location: LCCOMB_X46_Y62_N18
\machine|s_CurrentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~8_combout\ = (!\KEY[0]~input_o\ & ((\SW[0]~input_o\ & ((\machine|s_CurrentState.E4~q\))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \machine|s_CurrentState.E4~q\,
	combout => \machine|s_CurrentState~8_combout\);

-- Location: LCCOMB_X46_Y62_N20
\machine|s_CurrentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~9_combout\ = (\machine|s_CurrentState~8_combout\ & ((\machine|s_CurrentState.E3~q\) # ((\machine|s_CurrentState.E4~q\) # (\machine|s_CurrentState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \machine|s_CurrentState.E3~q\,
	datab => \machine|s_CurrentState.E4~q\,
	datac => \machine|s_CurrentState.E2~q\,
	datad => \machine|s_CurrentState~8_combout\,
	combout => \machine|s_CurrentState~9_combout\);

-- Location: FF_X46_Y62_N21
\machine|s_CurrentState.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|pulse~q\,
	d => \machine|s_CurrentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|s_CurrentState.E5~q\);

-- Location: LCCOMB_X46_Y62_N26
\machine|s_CurrentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState~10_combout\ = (!\machine|s_CurrentState.E5~q\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \machine|s_CurrentState.E5~q\,
	datac => \KEY[0]~input_o\,
	combout => \machine|s_CurrentState~10_combout\);

-- Location: LCCOMB_X46_Y62_N16
\machine|s_CurrentState.E0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|s_CurrentState.E0~feeder_combout\ = \machine|s_CurrentState~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \machine|s_CurrentState~10_combout\,
	combout => \machine|s_CurrentState.E0~feeder_combout\);

-- Location: FF_X46_Y62_N17
\machine|s_CurrentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse|pulse~clkctrl_outclk\,
	d => \machine|s_CurrentState.E0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \machine|s_CurrentState.E0~q\);

-- Location: LCCOMB_X46_Y62_N14
\machine|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|WideOr0~0_combout\ = (\machine|s_CurrentState.E5~q\) # (!\machine|s_CurrentState.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \machine|s_CurrentState.E0~q\,
	datad => \machine|s_CurrentState.E5~q\,
	combout => \machine|WideOr0~0_combout\);

-- Location: LCCOMB_X46_Y62_N6
\machine|drink\ : cycloneive_lcell_comb
-- Equation(s):
-- \machine|drink~combout\ = (\machine|WideOr0~0_combout\ & ((\machine|s_CurrentState.E5~q\))) # (!\machine|WideOr0~0_combout\ & (\machine|drink~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \machine|drink~combout\,
	datac => \machine|WideOr0~0_combout\,
	datad => \machine|s_CurrentState.E5~q\,
	combout => \machine|drink~combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


