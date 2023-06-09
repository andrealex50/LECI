library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
    port(bin          : in  std_logic_vector(3 downto 0);
	      bcd_l, bcd_h : out std_logic_vector(3 downto 0));
end Bin2BCD;

architecture Behavioral of Bin2BCD is
    signal s_bin, s_dez, q, r : unsigned(3 downto 0);
begin

    s_bin <= unsigned(bin);
	 s_dez <= to_unsigned(10, 4);
	 
	 q <= s_bin  /  s_dez;
	 r <= s_bin rem s_dez;
	 
	 bcd_h <= std_logic_vector(q);
	 bcd_l <= std_logic_vector(r);
						
end Behavioral;
	
	