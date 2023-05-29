library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SeqDetector is
	port(	SW : in std_logic_vector(1 downto 0);
			CLOCK_50 : in std_logic;
			LEDG : out std_logic_vector(1 downto 0);
			LEDR : out std_logic_vector(0 downto 0));
end SeqDetector;

architecture Structural of SeqDetector is
signal modifiedClock : std_logic;

begin
	
	FreqDivider : entity work.FreqDivider(Behav)
					  port map( clkIn => CLOCK_50,
									reset => SW(1),
									clkOut => modifiedClock);
	
	SeqDetector : entity work.SeqDetFSM(Behav)
					  port map( clk => modifiedClock,
									reset => SW(1),
									xIn => SW(0),
									yOut => LEDR(0));
									
	LEDG(0) <= modifiedClock;
end Structural;
			