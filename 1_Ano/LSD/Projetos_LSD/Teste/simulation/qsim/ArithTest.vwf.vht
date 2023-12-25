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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/23/2022 00:41:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ArithmeticUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ArithmeticUnit_vhd_vec_tst IS
END ArithmeticUnit_vhd_vec_tst;
ARCHITECTURE ArithmeticUnit_arch OF ArithmeticUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL operand0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL operand1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL operand2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ArithmeticUnit
	PORT (
	operand0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	operand1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	operand2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ArithmeticUnit
	PORT MAP (
-- list connections between master ports and signals
	operand0 => operand0,
	operand1 => operand1,
	operand2 => operand2,
	result => result
	);
-- operand0[7]
t_prcs_operand0_7: PROCESS
BEGIN
	operand0(7) <= '1';
	WAIT FOR 160000 ps;
	operand0(7) <= '0';
	WAIT FOR 460000 ps;
	operand0(7) <= '1';
WAIT;
END PROCESS t_prcs_operand0_7;
-- operand0[6]
t_prcs_operand0_6: PROCESS
BEGIN
	operand0(6) <= '0';
	WAIT FOR 360000 ps;
	operand0(6) <= '1';
WAIT;
END PROCESS t_prcs_operand0_6;
-- operand0[5]
t_prcs_operand0_5: PROCESS
BEGIN
	operand0(5) <= '0';
	WAIT FOR 160000 ps;
	operand0(5) <= '1';
WAIT;
END PROCESS t_prcs_operand0_5;
-- operand0[4]
t_prcs_operand0_4: PROCESS
BEGIN
	operand0(4) <= '0';
	WAIT FOR 620000 ps;
	operand0(4) <= '1';
WAIT;
END PROCESS t_prcs_operand0_4;
-- operand0[3]
t_prcs_operand0_3: PROCESS
BEGIN
	operand0(3) <= '0';
	WAIT FOR 160000 ps;
	operand0(3) <= '1';
WAIT;
END PROCESS t_prcs_operand0_3;
-- operand0[2]
t_prcs_operand0_2: PROCESS
BEGIN
	operand0(2) <= '0';
	WAIT FOR 160000 ps;
	operand0(2) <= '1';
WAIT;
END PROCESS t_prcs_operand0_2;
-- operand0[1]
t_prcs_operand0_1: PROCESS
BEGIN
	operand0(1) <= '0';
	WAIT FOR 620000 ps;
	operand0(1) <= '1';
WAIT;
END PROCESS t_prcs_operand0_1;
-- operand0[0]
t_prcs_operand0_0: PROCESS
BEGIN
	operand0(0) <= '1';
	WAIT FOR 360000 ps;
	operand0(0) <= '0';
	WAIT FOR 260000 ps;
	operand0(0) <= '1';
WAIT;
END PROCESS t_prcs_operand0_0;
-- operand1[7]
t_prcs_operand1_7: PROCESS
BEGIN
	operand1(7) <= '1';
	WAIT FOR 160000 ps;
	operand1(7) <= '0';
	WAIT FOR 200000 ps;
	operand1(7) <= '1';
WAIT;
END PROCESS t_prcs_operand1_7;
-- operand1[6]
t_prcs_operand1_6: PROCESS
BEGIN
	operand1(6) <= '0';
	WAIT FOR 160000 ps;
	operand1(6) <= '1';
WAIT;
END PROCESS t_prcs_operand1_6;
-- operand1[5]
t_prcs_operand1_5: PROCESS
BEGIN
	operand1(5) <= '1';
WAIT;
END PROCESS t_prcs_operand1_5;
-- operand1[4]
t_prcs_operand1_4: PROCESS
BEGIN
	operand1(4) <= '0';
	WAIT FOR 620000 ps;
	operand1(4) <= '1';
WAIT;
END PROCESS t_prcs_operand1_4;
-- operand1[3]
t_prcs_operand1_3: PROCESS
BEGIN
	operand1(3) <= '0';
	WAIT FOR 160000 ps;
	operand1(3) <= '1';
	WAIT FOR 200000 ps;
	operand1(3) <= '0';
	WAIT FOR 260000 ps;
	operand1(3) <= '1';
WAIT;
END PROCESS t_prcs_operand1_3;
-- operand1[2]
t_prcs_operand1_2: PROCESS
BEGIN
	operand1(2) <= '1';
	WAIT FOR 160000 ps;
	operand1(2) <= '0';
	WAIT FOR 460000 ps;
	operand1(2) <= '1';
WAIT;
END PROCESS t_prcs_operand1_2;
-- operand1[1]
t_prcs_operand1_1: PROCESS
BEGIN
	operand1(1) <= '0';
	WAIT FOR 160000 ps;
	operand1(1) <= '1';
	WAIT FOR 200000 ps;
	operand1(1) <= '0';
	WAIT FOR 260000 ps;
	operand1(1) <= '1';
WAIT;
END PROCESS t_prcs_operand1_1;
-- operand1[0]
t_prcs_operand1_0: PROCESS
BEGIN
	operand1(0) <= '1';
	WAIT FOR 160000 ps;
	operand1(0) <= '0';
	WAIT FOR 460000 ps;
	operand1(0) <= '1';
WAIT;
END PROCESS t_prcs_operand1_0;
-- operand2[7]
t_prcs_operand2_7: PROCESS
BEGIN
	operand2(7) <= '0';
	WAIT FOR 620000 ps;
	operand2(7) <= '1';
WAIT;
END PROCESS t_prcs_operand2_7;
-- operand2[6]
t_prcs_operand2_6: PROCESS
BEGIN
	operand2(6) <= '0';
	WAIT FOR 160000 ps;
	operand2(6) <= '1';
	WAIT FOR 200000 ps;
	operand2(6) <= '0';
	WAIT FOR 260000 ps;
	operand2(6) <= '1';
WAIT;
END PROCESS t_prcs_operand2_6;
-- operand2[5]
t_prcs_operand2_5: PROCESS
BEGIN
	operand2(5) <= '1';
WAIT;
END PROCESS t_prcs_operand2_5;
-- operand2[4]
t_prcs_operand2_4: PROCESS
BEGIN
	operand2(4) <= '0';
	WAIT FOR 160000 ps;
	operand2(4) <= '1';
WAIT;
END PROCESS t_prcs_operand2_4;
-- operand2[3]
t_prcs_operand2_3: PROCESS
BEGIN
	operand2(3) <= '1';
	WAIT FOR 160000 ps;
	operand2(3) <= '0';
	WAIT FOR 460000 ps;
	operand2(3) <= '1';
WAIT;
END PROCESS t_prcs_operand2_3;
-- operand2[2]
t_prcs_operand2_2: PROCESS
BEGIN
	operand2(2) <= '0';
	WAIT FOR 620000 ps;
	operand2(2) <= '1';
WAIT;
END PROCESS t_prcs_operand2_2;
-- operand2[1]
t_prcs_operand2_1: PROCESS
BEGIN
	operand2(1) <= '1';
	WAIT FOR 160000 ps;
	operand2(1) <= '0';
	WAIT FOR 460000 ps;
	operand2(1) <= '1';
WAIT;
END PROCESS t_prcs_operand2_1;
-- operand2[0]
t_prcs_operand2_0: PROCESS
BEGIN
	operand2(0) <= '0';
	WAIT FOR 360000 ps;
	operand2(0) <= '1';
WAIT;
END PROCESS t_prcs_operand2_0;
END ArithmeticUnit_arch;
