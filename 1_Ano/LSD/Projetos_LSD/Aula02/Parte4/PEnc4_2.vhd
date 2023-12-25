library IEEE;
use IEEE.std_logic_1164.all;

entity PEnc4_2 is
	port( INPUT : in std_logic_vector(3 downto 0);
			OUTPUT : out std_logic_vector(2 downto 0));
end PEnc4_2;

architecture Behavioral of PEnc4_2 is
	begin
		process(INPUT)
		begin
			if(INPUT(3) = '1') then --3
				OUTPUT <= "111";
			elsif(INPUT(2) = '1') then --2
				OUTPUT <= "101";
			elsif(INPUT(1) = '1') then --1
				OUTPUT <= "011";
			elsif(INPUT(0) = '1') then --0
				OUTPUT <= "001";
			else
				OUTPUT <= "000";
			end if;
		end process;
end Behavioral;