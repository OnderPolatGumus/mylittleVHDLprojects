library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ep3prob2_tb is
end;

architecture bench of ep3prob2_tb is

  component ep3prob2
      Port(
           c: in std_logic_vector (7 downto 0);
           s: in std_logic_vector (2 downto 0);
           z: out std_logic
           );
  end component;

  signal c: std_logic_vector (7 downto 0);
  signal s: std_logic_vector (2 downto 0);
  signal z: std_logic ;

begin

  uut: ep3prob2 port map ( c => c,
                           s => s,
                           z => z );

  stimulus: process
  begin
        c <= "10101010";
        s <= "000"; wait for 10 ns;
        s <= "001"; wait for 10 ns;
        s <= "010"; wait for 10 ns;
        s <= "011"; wait for 10 ns;
        s <= "100"; wait for 10 ns;
        s <= "101"; wait for 10 ns;
        s <= "110"; wait for 10 ns;
        s <= "111"; wait for 10 ns;

    wait;
  end process;


end;
  