library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AddressGenerator is
    port( clk : in std_logic;
          reset: in std_logic;
          enable: in std_logic;
          count : out std_logic_vector(7 downto 0));
end AddressGenerator;

architecture Behavioral of AddressGenerator is
signal s_count : unsigned(7 downto 0);

begin
process(clk)
     begin
        if (rising_edge(clk)) then
            if (enable='1') then
                if (reset='1') then
                    s_count <= "00000000";
                else
                    s_count <= s_count + 1;
                end if;
            end if;
        end if;
end process;
    count <= std_logic_vector(s_count);
end Behavioral;