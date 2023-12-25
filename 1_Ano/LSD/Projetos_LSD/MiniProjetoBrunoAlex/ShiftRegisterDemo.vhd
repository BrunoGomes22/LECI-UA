library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegisterDemo is
    port (CLOCK_50 : in std_logic;
           KEY      : in std_logic_vector(2 downto 0);
           SW       : in std_logic_vector(1 downto 0);
           LEDG     : out std_logic_vector(5 downto 0));
end ShiftRegisterDemo;

architecture Structure of ShiftRegisterDemo is
    signal s_pulse : std_logic;
begin
PulseGen : entity work.PulseGenerator(Behavioral)
              generic map(MAX => 50_000_000)       --1hz
                  port map(clk   => CLOCK_50,
                          reset => '0',
                          pulse => s_pulse);

Shift6   : entity work.ShiftRegister6(Behavioral)
                port map(clk    => CLOCK_50,
                         reset  => KEY(0),
                         sin => SW(0),
                         dataOut  => LEDG(5 downto 0));                   
end Structure;