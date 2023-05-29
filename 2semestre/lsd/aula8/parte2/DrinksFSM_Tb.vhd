library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity DrinksFSM_Tb is
end DrinksFSM_Tb;

architecture Stimulus of DrinksFSM_Tb is
	signal s_reset, s_clk : std_logic;
	signal s_inputs : std_logic;
	signal s_outputs : std_logic; 
begin
	uut: entity  work.DrinksFSM(Behavioral)
		  port map( reset => s_reset,
						inData => s_inputs,
						clk => s_clk,
						parityOut => s_outputs);
	
	clock_proc : process
	begin
		s_clk <= '0'; wait for 100 ns;
		s_clk <= '1'; wait for 100 ns;
	end process;
	
	stim_proc : process
	begin
		wait for 10 ns;
		s_reset <= '0';
		wait for 10 ns;
		s_inputs <= '1';
		wait for 10 ns;
		s_inputs <= '0';
		wait for 10 ns;
		s_inputs <= '1';
		wait for 10 ns;
		s_inputs <= '1';
		s_reset <= '1';
		wait for 10 ns;
		s_inputs <= '0';
		wait for 10 ns;
		s_inputs <= '0';
		wait for 10 ns;
		s_inputs <= '1';
		wait for 10 ns;
		s_inputs <= '0';
		wait for 10 ns;
		s_inputs <= '1';
		wait for 10 ns;
		s_inputs <= '0';
	end process;
end Stimulus;