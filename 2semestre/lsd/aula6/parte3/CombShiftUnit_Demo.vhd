library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CombShiftUnit_Demo is
    port (
        SW   : in  std_logic_vector(17 downto 0);
        KEY  : in  std_logic_vector(2 downto 0);
        LEDR : out std_logic_vector(7 downto 0)
    );
end entity CombShiftUnit_Demo;

architecture Structural of CombShiftUnit_Demo is
begin
    CombShift : entity work.CombShiftUnit(Behavioral)
        port map (   dataIn   => SW(7 downto 0),
							shAmount => SW(17 downto 15),
							rotate   => KEY(0),
							dirLeft  => KEY(1),
							shArith  => KEY(2),
							dataOut  => LEDR(7 downto 0));
end architecture Structural;		
								