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

-- DATE "06/23/2022 00:41:10"

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

ENTITY 	ArithmeticUnit IS
    PORT (
	operand0 : IN std_logic_vector(7 DOWNTO 0);
	operand1 : IN std_logic_vector(7 DOWNTO 0);
	operand2 : IN std_logic_vector(7 DOWNTO 0);
	result : OUT std_logic_vector(7 DOWNTO 0)
	);
END ArithmeticUnit;

ARCHITECTURE structure OF ArithmeticUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_operand0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_operand1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_operand2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \operand1[7]~input_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \operand2[0]~input_o\ : std_logic;
SIGNAL \operand0[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \operand2[1]~input_o\ : std_logic;
SIGNAL \operand1[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \operand0[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \operand2[2]~input_o\ : std_logic;
SIGNAL \operand1[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \operand0[2]~input_o\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \operand2[3]~input_o\ : std_logic;
SIGNAL \operand1[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \operand0[3]~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \operand2[4]~input_o\ : std_logic;
SIGNAL \operand1[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \operand0[4]~input_o\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \operand2[5]~input_o\ : std_logic;
SIGNAL \operand1[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \operand0[5]~input_o\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \operand2[6]~input_o\ : std_logic;
SIGNAL \operand1[5]~input_o\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \operand0[6]~input_o\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \operand2[7]~input_o\ : std_logic;
SIGNAL \operand1[6]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \operand0[7]~input_o\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;

BEGIN

ww_operand0 <= operand0;
ww_operand1 <= operand1;
ww_operand2 <= operand2;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~14_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

\operand2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand2(0),
	o => \operand2[0]~input_o\);

\operand0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand0(0),
	o => \operand0[0]~input_o\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\operand2[0]~input_o\ & (\operand0[0]~input_o\ $ (VCC))) # (!\operand2[0]~input_o\ & (\operand0[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\operand2[0]~input_o\ & \operand0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand2[0]~input_o\,
	datab => \operand0[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\operand2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand2(1),
	o => \operand2[1]~input_o\);

\operand1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand1(0),
	o => \operand1[0]~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\operand2[1]~input_o\ & ((GND) # (!\operand1[0]~input_o\))) # (!\operand2[1]~input_o\ & (\operand1[0]~input_o\ $ (GND)))
-- \Add0~1\ = CARRY((\operand2[1]~input_o\) # (!\operand1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operand2[1]~input_o\,
	datab => \operand1[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\operand0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand0(1),
	o => \operand0[1]~input_o\);

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~0_combout\ & ((\operand0[1]~input_o\ & (\Add1~1\ & VCC)) # (!\operand0[1]~input_o\ & (!\Add1~1\)))) # (!\Add0~0_combout\ & ((\operand0[1]~input_o\ & (!\Add1~1\)) # (!\operand0[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\Add0~0_combout\ & (!\operand0[1]~input_o\ & !\Add1~1\)) # (!\Add0~0_combout\ & ((!\Add1~1\) # (!\operand0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \operand0[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\operand2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand2(2),
	o => \operand2[2]~input_o\);

\operand1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand1(1),
	o => \operand1[1]~input_o\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\operand2[2]~input_o\ & ((\operand1[1]~input_o\ & (!\Add0~1\)) # (!\operand1[1]~input_o\ & (\Add0~1\ & VCC)))) # (!\operand2[2]~input_o\ & ((\operand1[1]~input_o\ & ((\Add0~1\) # (GND))) # (!\operand1[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\operand2[2]~input_o\ & (\operand1[1]~input_o\ & !\Add0~1\)) # (!\operand2[2]~input_o\ & ((\operand1[1]~input_o\) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand2[2]~input_o\,
	datab => \operand1[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\operand0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand0(2),
	o => \operand0[2]~input_o\);

\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Add0~2_combout\ $ (\operand0[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Add0~2_combout\ & ((\operand0[2]~input_o\) # (!\Add1~3\))) # (!\Add0~2_combout\ & (\operand0[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \operand0[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\operand2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand2(3),
	o => \operand2[3]~input_o\);

\operand1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand1(2),
	o => \operand1[2]~input_o\);

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\operand2[3]~input_o\ $ (\operand1[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\operand2[3]~input_o\ & ((!\Add0~3\) # (!\operand1[2]~input_o\))) # (!\operand2[3]~input_o\ & (!\operand1[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand2[3]~input_o\,
	datab => \operand1[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\operand0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand0(3),
	o => \operand0[3]~input_o\);

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~4_combout\ & ((\operand0[3]~input_o\ & (\Add1~5\ & VCC)) # (!\operand0[3]~input_o\ & (!\Add1~5\)))) # (!\Add0~4_combout\ & ((\operand0[3]~input_o\ & (!\Add1~5\)) # (!\operand0[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Add0~4_combout\ & (!\operand0[3]~input_o\ & !\Add1~5\)) # (!\Add0~4_combout\ & ((!\Add1~5\) # (!\operand0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \operand0[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\operand2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand2(4),
	o => \operand2[4]~input_o\);

\operand1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand1(3),
	o => \operand1[3]~input_o\);

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\operand2[4]~input_o\ & ((\operand1[3]~input_o\ & (!\Add0~5\)) # (!\operand1[3]~input_o\ & (\Add0~5\ & VCC)))) # (!\operand2[4]~input_o\ & ((\operand1[3]~input_o\ & ((\Add0~5\) # (GND))) # (!\operand1[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\operand2[4]~input_o\ & (\operand1[3]~input_o\ & !\Add0~5\)) # (!\operand2[4]~input_o\ & ((\operand1[3]~input_o\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand2[4]~input_o\,
	datab => \operand1[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\operand0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand0(4),
	o => \operand0[4]~input_o\);

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Add0~6_combout\ $ (\operand0[4]~input_o\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Add0~6_combout\ & ((\operand0[4]~input_o\) # (!\Add1~7\))) # (!\Add0~6_combout\ & (\operand0[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \operand0[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\operand2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand2(5),
	o => \operand2[5]~input_o\);

\operand1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand1(4),
	o => \operand1[4]~input_o\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\operand2[5]~input_o\ $ (\operand1[4]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\operand2[5]~input_o\ & ((!\Add0~7\) # (!\operand1[4]~input_o\))) # (!\operand2[5]~input_o\ & (!\operand1[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand2[5]~input_o\,
	datab => \operand1[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\operand0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand0(5),
	o => \operand0[5]~input_o\);

\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~8_combout\ & ((\operand0[5]~input_o\ & (\Add1~9\ & VCC)) # (!\operand0[5]~input_o\ & (!\Add1~9\)))) # (!\Add0~8_combout\ & ((\operand0[5]~input_o\ & (!\Add1~9\)) # (!\operand0[5]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\Add0~8_combout\ & (!\operand0[5]~input_o\ & !\Add1~9\)) # (!\Add0~8_combout\ & ((!\Add1~9\) # (!\operand0[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \operand0[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\operand2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand2(6),
	o => \operand2[6]~input_o\);

\operand1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand1(5),
	o => \operand1[5]~input_o\);

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\operand2[6]~input_o\ & ((\operand1[5]~input_o\ & (!\Add0~9\)) # (!\operand1[5]~input_o\ & (\Add0~9\ & VCC)))) # (!\operand2[6]~input_o\ & ((\operand1[5]~input_o\ & ((\Add0~9\) # (GND))) # (!\operand1[5]~input_o\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\operand2[6]~input_o\ & (\operand1[5]~input_o\ & !\Add0~9\)) # (!\operand2[6]~input_o\ & ((\operand1[5]~input_o\) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand2[6]~input_o\,
	datab => \operand1[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\operand0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand0(6),
	o => \operand0[6]~input_o\);

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add0~10_combout\ $ (\operand0[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Add0~10_combout\ & ((\operand0[6]~input_o\) # (!\Add1~11\))) # (!\Add0~10_combout\ & (\operand0[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \operand0[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\operand2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand2(7),
	o => \operand2[7]~input_o\);

\operand1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand1(6),
	o => \operand1[6]~input_o\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \operand2[7]~input_o\ $ (\operand1[6]~input_o\ $ (\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \operand2[7]~input_o\,
	datab => \operand1[6]~input_o\,
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

\operand0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand0(7),
	o => \operand0[7]~input_o\);

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add0~12_combout\ $ (\operand0[7]~input_o\ $ (\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \operand0[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

\operand1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand1(7),
	o => \operand1[7]~input_o\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;
END structure;


