library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM is
	port (vint : in std_logic;
			cinq : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			drink : out std_logic);
			
end DrinksFSM;
			
architecture Behavioral of DrinksFSM is
	
	type Tstate is (E0,E1,E2,E3,E4,E5); --5 estados
	signal s_CurrentState, s_NextState : Tstate;
	
begin
	
	Sync_Proc : process(clk)
	begin
		if(rising_edge(clk)) then
			if( reset = '1') then
				s_CurrentState <= E0;
				
			else
				s_CurrentState <= s_NextState;
			
			end if;
		end if;
	end process;
	
	comb_proc : process(s_CurrentState, vint, cinq)
	begin
		case (s_CurrentState) is
			when E0 =>
				drink <= '0';
				if(vint = '1') then
					s_NextState <= E1;
				elsif(cinq = '1') then
					s_NextState <= E3;
				else
					s_NextState <= E1;
				end if;
					
					
			when E1 =>
				if(vint = '1') then
					s_NextState <= E2;
				elsif(cinq = '1') then
					s_NextState <= E4;
				else
					s_NextState <= E1;
				end if;
					
			when E2 =>
				if(vint = '1') then
					s_NextState <= E3;
				elsif(cinq = '1') then
					s_NextState <= E5;
				else
					s_NextState <= E2;
				end if;
				
			when E3 =>
				if(vint = '1') then
					s_NextState <= E4;
				elsif(cinq = '1') then
					s_NextState <= E5;
				else
					s_NextState <= E3;
				end if;
					
			when E4 =>
				if(vint = '1') then
					s_NextState <= E5;
				elsif(cinq = '1') then
					s_NextState <= E5;
				else
					s_NextState <= E4;
				end if;
				
			when E5 =>
				drink <= '1';
				s_NextState <= E0;
		end case;
	end process;
end Behavioral;
					
	
	

