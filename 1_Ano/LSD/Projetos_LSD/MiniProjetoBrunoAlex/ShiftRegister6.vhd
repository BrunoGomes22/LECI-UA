library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister6 is
	port( clk : in std_logic;
			sin : in std_logic;
			reset : in std_logic;
			dataOut : out std_logic_vector(5 downto 0));
			
end ShiftRegister6;

architecture Behavioral of ShiftRegister6 is
	signal s_shiftReg : std_logic_vector(5 downto 0);
	
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if(reset = '1') then
				s_shiftReg <= (others => '0');
			else
				s_shiftReg <= s_shiftReg(4 downto 0) & sin;
			end if;
		end if;
	end process;
	
	dataOut <= s_shiftReg;
	
end Behavioral;