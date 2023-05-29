library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
	port(decodedIn : in std_logic_vector(3 downto 0);
		  encodedOut : out std_logic_vector(1 downto 0);
		  validOut : out std_logic);
end PEnc4_2;

architecture Equations of PEnc4_2 is
	begin 
		process(decodedIn)
		begin
			if (decodedIn = "0000") then
				encodedOut <= "--";
				validOut <= '0';
			elsif (decodedIn = "0001") then
				encodedOut <= "00";
				validOut <= '1';
			elsif (decodedIn = "0010") then
				encodedOut <= "01";
				validOut <= '1';
			elsif (decodedIn = "0100") then
				encodedOut <= "10";
				validOut <= '1';
			else
				encodedOut <= "11";
				validOut <= '1';
			end if;
		end process;
	end Equations;
		
	