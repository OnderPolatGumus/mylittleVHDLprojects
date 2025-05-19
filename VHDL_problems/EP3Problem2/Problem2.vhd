library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ep3prob2 is
    Port(
         c: in std_logic_vector (7 downto 0);
         s: in std_logic_vector (2 downto 0);
         z: out std_logic
         );
end ep3prob2;

architecture mux8to1 of ep3prob2 is

begin
    P1: Process (c,s)
        begin
            case s is
        when "000" => z <= c(0);
        when "001" => z <= c(1);
        when "010" => z <= c(2);
        when "011" => z <= c(3);
        when "100" => z <= c(4);
        when "101" => z <= c(5);
        when "110" => z <= c(6);
        when "111" => z <= c(7);
        when others => z <= '0';
            end case;
                end process;        
end mux8to1;
