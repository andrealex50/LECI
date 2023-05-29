library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SeqDetFSM_Tb is
end SeqDetFSM_Tb;

architecture Stimulus of SeqDetFSM_Tb is
	signal s_clk : std_logic;
	signal s_reset : std_logic;
	signal s_xIn : std_logic;
	signal s_yOut : std_logic;
begin
	uut : entity work.SeqDetFSM(Behav)
			port map(	clk => s_clk,
							reset => s_reset,
							xIn => s_xIn,
							yOut => s_yOut);
	
	clock_proc : process
	begin
		s_clk <= '0'; wait for 5 ns;
		s_clk <= '1'; wait for 5 ns;
	end process;
	
	stim_proc : process
	begin
		wait for 10 ns;
		s_xIn <= '0';
		wait for 10 ns;
		s_xIn <= '1';
		wait for 10 ns;
		s_xIn <= '1';
		wait for 10 ns;
		s_xIn <= '0';
		wait for 10 ns;
		s_xIn <= '0';
		wait for 10 ns;
		s_xIn <= '1';
		wait for 10 ns;
		s_xIn <= '0';
		wait for 10 ns;
		s_xIn <= '0';
		wait for 10 ns;
		s_xIn <= '1';
		
	end process;
end Stimulus;

		
		