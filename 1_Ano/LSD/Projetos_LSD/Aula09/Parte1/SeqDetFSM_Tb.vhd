LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SeqDetFSMTb IS
END SeqDetFSMTb;

ARCHITECTURE stimulus OF SeqDetFSMTb IS
	SIGNAL s_Reset, s_Clk, s_xIn, s_yOut : STD_LOGIC;
BEGIN
	uut : ENTITY work.SeqDetFSM(MealyArch)
		PORT MAP(
			xIn => s_xIn,
			yOut => s_yOut,
			reset => s_Reset,
			clk => s_Clk);
			
	Clock : PROCESS IS
	BEGIN
		s_Clk <= '0';
		WAIT FOR 25 ns;
		s_Clk <= '1';
		WAIT FOR 25 ns;
	END PROCESS;
	
	Behave : PROCESS IS
	BEGIN
		s_xIn <= '0';
		s_Reset <= '0';
		WAIT FOR 100 ns;
		s_xIn <= '1';
		WAIT FOR 75 ns;
		s_xIn <= '0';
		WAIT FOR 75 ns;
		s_xIn <= '0';
		WAIT FOR 75 ns;
		s_xIn <= '1';
		WAIT FOR 75 ns;
		s_xIn <= '1';
		WAIT FOR 75 ns;
		s_xIn <= '0';
		WAIT FOR 75 ns;

		s_Reset <= '1';
	END PROCESS;
END stimulus;