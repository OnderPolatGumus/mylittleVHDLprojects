library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    Port ( a1 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           s : in STD_LOGIC;
           o : out STD_LOGIC);
end mux2to1;

architecture Behavioral of mux2to1 is

begin
    process(s,a1,b1)
        begin
            case s is
                when '0' => o <= a1;
                when '1' => o <= b1;
                when others => o <= '0';
            end case;
        end process;
end Behavioral;