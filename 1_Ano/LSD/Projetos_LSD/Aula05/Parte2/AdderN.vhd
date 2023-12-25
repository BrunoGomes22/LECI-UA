library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AdderN is
	generic(N : positive := 4);
	port (op0 : in std_logic_vector(N-1 downto 0);
			op1 : in std_logic_vector(N-1 downto 0);
			res : out std_logic_vector(N-1 downto 0));
			
end AdderN;

architecture v1 of AdderN is
begin
	res <= std_logic_vector(unsigned(op0) + unsigned(op1));

end v1;

