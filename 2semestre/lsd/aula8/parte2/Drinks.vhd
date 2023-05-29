library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Drinks is
	port( SW : in std_logic;
			KEY : in std_logic_vector(0 downto 0);
			CLOCK_50 : in std_logic;
			LEDG : out std_logic_vector(0 downto 0));
end Drinks;

architecture Structural of Drinks is
begin
	Drinks : entity work.DrinksFSM(Behavioral)
				port map(	inData => SW,
								clk => CLOCK_50,
								reset => KEY(0),
								parityOut => LEDG(0));
end Structural;
