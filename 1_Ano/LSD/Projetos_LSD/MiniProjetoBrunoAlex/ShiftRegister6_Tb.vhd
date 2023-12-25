library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister6_Tb is
end ShiftRegister6_Tb;

architecture Stimulus of ShiftRegister6_Tb is
	
	--entradas UUT
	signal s_clk : std_logic;
	signal s_sin : std_logic;
	signal s_reset : std_logic;
	
	--saidas UUT
	signal s_dataOut : std_logic_vector(5 downto 0);
	
begin
	
	uut: entity work.ShiftRegister6(Behavioral)
			port map(clk => s_clk,
						sin => s_sin,
						reset => s_reset,
						dataOut => s_dataOut);
						
	--Process stim
	stim_proc : process
	begin
		wait for 100 ns;
		s_clk <= '0';
		wait for 100 ns;
		s_clk <= '1';
		s_sin <= '0';
		wait for 100 ns;
		s_clk <= '0';
		wait for 100 ns;
		s_clk <= '1';
		s_sin <= '1';
		wait for 100 ns;
		s_clk <= '0';
		wait for 100 ns;
		s_clk <= '1';
		s_sin <= '1';
		wait for 100 ns;
		s_clk <= '0';
		wait for 100 ns;
		s_clk <= '1';
		s_sin <= '0';
		wait for 100 ns;
		s_clk <= '0';
		wait for 100 ns;
		s_clk <= '1';
		s_sin <= '1';
		wait for 100 ns;
		s_clk <= '0';
		wait for 100 ns;
		s_clk <= '1';
		s_sin <= '1';
		wait for 50 ns;
		s_clk <= '0';
		wait for 50 ns;
		s_clk <= '1';
		s_reset <= '1';
		wait for 50 ns;
	end process;
end Stimulus;
		
		