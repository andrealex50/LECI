library ieee;
use ieee.std_logic_1164.all;

entity mef_Tb is
end entity mef_Tb;

architecture Behavioral of mef_Tb is
  signal s_clk  : std_logic;
  signal s_rst  : std_logic;
  signal s_A     : std_logic;
  signal s_X   : std_logic;
  signal s_Z0   : std_logic;
  signal s_Z1   : std_logic;
begin

	uut: entity work.SequenceDetector(Behavioral)
	  port map (
		 clk   => s_clk,
		 reset => s_rst,
		 A     => s_A,
		 X     => s_X,
		 Z0    => s_Z0,
		 Z1    => s_Z1
	  );

	clk_pr: process
	begin
	  s_clk <= '0';
	  wait for 5 ns;
	  s_clk <= '1';
	  wait for 5 ns;
	end process clk_pr;

	stm_pr: process
	begin
	  s_rst <= '1';
	  wait for 10 ns;
	  
	  s_rst <= '0';
	  s_A <= '1';
	  s_X <= '1';
	  wait for 10 ns;
	  
	  s_A <= '0';
	  wait for 10 ns;
	  
	  s_X <= '0';
	  wait for 40 ns;
	  
	  s_X <= '1';
	  wait for 10 ns;
	  
	  s_A <= '1';
	  wait for 10 ns;
	end process;
end Behavioral;

