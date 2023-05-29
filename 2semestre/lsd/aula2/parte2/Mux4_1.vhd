library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
	port(sel 	: in std_logic_vector(1 downto 0);
		  input0 : in std_logic;
		  input1 : in std_logic;
		  input2 : in std_logic;
		  input3 : in std_logic;
		  muxOut : out std_logic);
end Mux4_1;

architecture Equations of Mux4_1 is
begin 
	process(sel, input0, input1, input2, input3)
	begin 
		if (sel = "01") then
			muxOut <= input1;
		elsif (sel = "10") then 
			muxOut <= input2;
		elsif (sel = "11") then
			muxOut <= input3;
		elsif (sel = "00") then
			muxOut <= input0;
		end if;
	end process;
end Equations;