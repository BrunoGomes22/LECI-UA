library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ArithmeticUnit is
    port(  
	addr : in std_logic_vector(7 downto 0); 
	 operand0 : in std_logic_vector(7 downto 0);
            operand1 : in std_logic_vector(7 downto 0);
            operand2 : in std_logic_vector(7 downto 0);
            result : out std_logic_vector(7 downto 0));
end ArithmeticUnit;

architecture Behavioral of ArithmeticUnit is
     signal s_multRes : std_logic_vector(15 downto 0); -- e preciso 16 bits para guardar o maior resultado
     signal s_multiplier : std_logic_vector(7 downto 0);
     
begin
     s_multiplier <= "00000010";
     s_multRes <= std_logic_vector(signed(s_multiplier)*signed(operand1)); 
     process(operand0,operand1,s_multRes)
    begin
		if(addr = "00000000") then
			result <= operand1;
		elsif(addr = "11111111") then
			result <= operand1;
		else
		
        result <= std_logic_vector(signed(operand2) - signed(s_multRes(7 downto 0)) + signed(operand0));
		  end if;
    end process;
end Behavioral;