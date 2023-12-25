library IEEE;
use IEEE.std_logic_1164.all;

entity FullAdder is
	port( a,b,cin : in std_logic;
			s, cout : out std_logic);
end FullAdder;

architecture Behavioral of FullAdder is
	begin
		s <= a XOR b XOR cin;
		cout <= (a AND b) OR (cin and a) or (cin and b);
end Behavioral;