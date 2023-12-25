library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AccN is
	generic(K : positive := 4);
	port (dataIn : in std_logic_vector(K-1 downto 0);
			dataOut : out std_logic_vector(K-1 downto 0);
			reset : in std_logic;
			enable : in std_logic;
			clk : in std_logic);
			
end AccN;


architecture v1 of AccN is
	signal s_adderOut : std_logic_vector(K-1 downto 0);
	signal s_regOut : std_logic_vector(K-1 downto 0);
begin
	
	u1 : entity work.AdderN(v1)
		generic map(N => K)
		port map(op0 => dataIn,
					op1 => s_regOut,
					res => s_adderOut);
					
	u2 : entity work.RegN(v1)
		generic map(N => K)
		port map(dataIn => s_adderOut,
					reset => reset,
					enable => enable,
					clk => clk,
					dataOut => s_regOut);
					
	dataOut <= s_regOut;
					
end v1;
	