entity RAM_Demo is
port (KEY		: in  std_logic_vector(0 downto 0);
		LEDR		: out std_logic_vector(7 downto 0);
		LEDG     : out std_logic_vector(8 downto 0));
end RAM_Demo;

architecture Shell of ROM_Demo is
	signal s_clock : std_logic;
	signal s_count : std_logic_vector(3 downto 0);
begin


ROM : entity work.ROM_16_8(Behavioral)
						port map(address => s_count,
									clk => KEY(0),
									writeData => SW(17 downto 10),
									address => 
									dataOut => LEDR);




end Shell;