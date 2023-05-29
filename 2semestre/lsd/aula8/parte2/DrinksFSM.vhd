library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DrinksFSM is
	port( reset : in std_logic;
			clk : in std_logic;
			inData : in std_logic;
			parityOut : out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is
	
	type TState is (E0,E1,E2,E3,E4,E5);
	signal pState, nState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				pState <= E0;
			else
				pState <= nState;
			end if;
		end if;
	end process;
	
	comb_proc : process(pState, nState, inData)
	begin
		case pState is
			--   1: 0,50$ , 2: 0,20$
			when E0 =>
				parityOut <= '0';
				if (inData = '1') then
					nState <= E2;
				else
					nState <= E1;
				end if;
			when E1 =>
				parityOut <= '0';
				if (inData = '1') then
					nState <= E4;
				else
					nState <= E3;
				end if;
			when E2 =>
				parityOut <= '0';
				if (inData = '1') then
					nState <= E5;
					parityOut <= '1';
				else
					nState <= E4;
				end if;
			when E3 =>
				parityOut <= '0';
				if (inData = '1') then
					nState <= E5;
					parityOut <= '1';
				else
					nState <= E2;
				end if;
			when E4 =>
				parityOut <= '1';
				nState <= E5;
			when others =>
				nState <= E0;
				parityOut <= '0';
			end case;
		end process;
end Behavioral;
					
				