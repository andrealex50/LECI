library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AddSub4 is 
	port(a, b : in std_logic_vector(3 downto 0); 
	sub : in std_logic; 
	s : out std_logic_vector(3 downto 0);
	cin : in std_logic;
	cout : out std_logic); 
end AddSub4;
 
 
architecture Structural of AddSub4 is
	
	signal carryOut : std_logic_vector(2 downto 0);
	signal s_b : std_logic_vector(3 downto 0);
	
begin 
	s_b <= b when (sub = '0') else not b;

	bit0: entity work.FullAdder(Behavioral) 
		port map(a => a(0), 
					b => s_b(0), 
					cin => sub,
					s => s(0), 
					cout => carryOut(0));
					
	bit1: entity work.FullAdder(Behavioral)
		port map(a => a(1),
					b => s_b(1),
					cin => carryOut(0),
					s => s(1),
					cout => carryOut(1));
					
	bit2: entity work.FullAdder(Behavioral)
		port map(a => a(2),
					b => s_b(2),
					cin => carryOut(1),
					s => s(2),
					cout => carryOut(2));
					
	bit3: entity work.FullAdder(Behavioral)
		port map(a => a(3),
					b => s_b(3),
					cin => carryOut(2),
					s => s(3),
					cout => cout);
					
 
end Structural; 