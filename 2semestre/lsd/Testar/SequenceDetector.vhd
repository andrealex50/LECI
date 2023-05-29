library ieee;
use ieee.std_logic_1164.all;

entity SequenceDetector is
    port (
        clk   : in  std_logic;
        reset : in  std_logic;
        A     : in  std_logic;
        X     : in  std_logic;
        Z0    : out std_logic;
        Z1    : out std_logic
    );
end entity SequenceDetector;

architecture Behavioral of SequenceDetector is
    type State is (IDLE, S0, S1, S11, S00);
    signal current_state, next_state : State;
begin
    -- Sequential logic process
    state_transition: process (clk, reset)
    begin
        if reset = '1' then
            current_state <= IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process state_transition;

    -- Combinational logic process
    output_logic: process (current_state, X, A)
    begin
        case current_state is
            when IDLE =>
                if A = '0' and X = '0' then
                    next_state <= S0;
                elsif A = '1' and X = '1' then
                    next_state <= S1;
                else
                    next_state <= IDLE;
                end if;
            
            when S0 =>
                if X = '0' then
                    next_state <= S00;
						  Z0 <= '1';
					 elsif X = '1' then
						  next_state <= IDLE;
                else
                    next_state <= IDLE;
                end if;
            
            when S1 =>
                if X = '1' then
                    next_state <= S11;
                    Z1 <= '1'; 
					 elsif X = '0' then
						  next_state <= IDLE;
					 else
                    next_state <= IDLE;
                end if;
            
            when S11 =>
                if X = '1' then
                    next_state <= S11;
						  Z1 <= '1';
					 elsif X = '0' then
						  next_state <= IDLE;
						  Z1 <= '0';
                else
                    next_state <= IDLE;
						  Z0 <= '0';
                end if;
            
            when S00 =>
                if X = '0' then
                    next_state <= S00;
						  Z0 <= '1';
					 elsif X = '1' then
						  next_state <= IDLE;
						  Z0 <= '0';
                else
                    next_state <= IDLE;
						  Z0 <= '0';
                end if;
                
            when others =>
                next_state <= IDLE;
        end case;
    end process output_logic;
end architecture Behavioral;


