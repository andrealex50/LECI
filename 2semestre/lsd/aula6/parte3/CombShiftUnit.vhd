library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit is
    port (
        dataIn   : in  std_logic_vector(7 downto 0);
        shAmount : in  std_logic_vector(2 downto 0);
        siLeft   : in  std_logic;
        siRight  : in  std_logic;
        rotate   : in  std_logic;
        dirLeft  : in  std_logic;
        shArith  : in  std_logic;
        dataOut  : out std_logic_vector(7 downto 0)
    );
end entity CombShiftUnit;

architecture Behavioral of CombShiftUnit is
    signal s_shiftReg : std_logic_vector(7 downto 0);
    signal s_shAmount : integer range 0 to 7;
    
begin
    s_shAmount <= to_integer(unsigned(shAmount));
    
    process(dataIn, shAmount, siLeft, siRight, rotate, dirLeft, shArith)
    begin
        s_shiftReg <= dataIn;
        
        if (rotate = '1') then
            if (dirLeft = '1') then
                s_shiftReg <= std_logic_vector(ROTATE_LEFT(unsigned(s_shiftReg), s_shAmount));
            else
                s_shiftReg <= std_logic_vector(ROTATE_RIGHT(unsigned(s_shiftReg), s_shAmount));
            end if;
            
        elsif (shArith = '1') then
            if (dirLeft = '1') then
                s_shiftReg <= std_logic_vector(SHIFT_LEFT(signed(s_shiftReg), s_shAmount));
            else
                s_shiftReg <= std_logic_vector(SHIFT_RIGHT(signed(s_shiftReg), s_shAmount));
            end if;
            
        else
            if (dirLeft = '1') then
                s_shiftReg <= std_logic_vector(SHIFT_LEFT(unsigned(s_shiftReg), s_shAmount));
            else
                s_shiftReg <= std_logic_vector(SHIFT_RIGHT(unsigned(s_shiftReg), s_shAmount));
            end if;
        end if;
    end process;

    dataOut <= s_shiftReg;
end architecture Behavioral;
