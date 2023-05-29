library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;

entity AccN is
    generic (N : positive := 8);
    port (dataIn : in std_logic_vector(N-1 downto 0);
          reset : in std_logic;
          enable : in std_logic;
          clk : in std_logic;
          dataOut : out std_logic_vector(N-1 downto 0));
end AccN;

architecture Structural of AccN is
    signal s_adderOut : std_logic_vector(N-1 downto 0);
	 signal s_regOut : std_logic_vector(N-1 downto 0);
begin 
      adder : entity work.AdderN(Behavioral) 
					port map (operand0 => dataIn,
                         operand1 => s_regOut,
                         result => s_adderOut);
      reg : entity work.RegN(Behavioral)
               port map (dataIn => s_adderOut,
                         enable => enable,
                          reset => reset,
                          clk => clk,
                          dataOut => s_regOut);
		
		dataOut <= s_regOut;
end Structural;

						 