library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity problem3 is
    Port ( c0 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           a0 : in STD_LOGIC;
           s0 : out STD_LOGIC;
           c1 : out STD_LOGIC);
end problem3;

architecture problem3 of problem3 is
    signal sgn1 : std_logic;
    signal sgn2 : std_logic;
    signal sgn3 : std_logic;
begin

    sgn1 <= a0 XOR b0;
    sgn2 <= sgn1 AND c0;
    sgn3 <= a0 AND b0;
    
    s0 <= c0 XOR sgn1;
    c1 <= sgn2 OR sgn3;
    

end problem3;
