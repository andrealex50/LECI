library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RAM_1P_Demo is
	port(	KEY : in std_logic_vector(0 downto 0);
			LEDR : out std_logic_vector(7 downto 0);
			SW : in std_logic_vector(12 downto 0));
end RAM_1P_Demo;

architecture Structural of RAM_1P_Demo is

begin
	RAM_16x8 : 	entity work.RAM_1P_16_8(Behavioral)
					generic map(addrBusSize => 4,
									dataBusSize => 8)	
					port map( writeClk => not KEY(0),
								 writeEnable => SW(12),
								 writeData => SW(7 downto 0),
								 address => SW(11 downto 8),
								 readData => LEDR(7 downto 0));
									
end Structural;