library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port (SW : in std_logic_vector(0 downto 0);
			LEDR : out std_logic_vector(0 downto 0));
			
end SeqDetector;

architecture Behavioral of SeqDetector is
begin
	
	u1 : entity work.SeqDetFSM(MealyArch) --onde ligar o clk?
		port map(xIn => SW(0),
					reset => SW(1),
					yOut => LEDR(0));
					
end Behavioral;
					
