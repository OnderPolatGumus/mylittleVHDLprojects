library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_problem3 is
-- No ports for a testbench
end tb_problem3;

architecture behavior of tb_problem3 is

    -- Component declaration of the Unit Under Test (UUT)
    component problem3
        Port(
            c0 : in STD_LOGIC;
            b0 : in STD_LOGIC;
            a0 : in STD_LOGIC;
            s0 : out STD_LOGIC;
            c1 : out STD_LOGIC
        );
    end component;

    -- Signals to connect to UUT
    signal c0 : STD_LOGIC := '0';
    signal b0 : STD_LOGIC := '0';
    signal a0 : STD_LOGIC := '0';
    signal s0 : STD_LOGIC;
    signal c1 : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: problem3 Port Map (
        c0 => c0,
        b0 => b0,
        a0 => a0,
        s0 => s0,
        c1 => c1
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Try all input combination
        
        a0 <= '0';
        b0 <= '0';
        c0 <= '0';
        wait for 10 ns;
        a0 <= '0';
        b0 <= '0';
        c0 <= '1';
        wait for 10 ns;
        a0 <= '0';
        b0 <= '1';
        c0 <= '0';
        wait for 10 ns;
        a0 <= '0';
        b0 <= '1';
        c0 <= '1';
        wait for 10 ns;
        a0 <= '1';
        b0 <= '0';
        c0 <= '0';
        wait for 10 ns;
        a0 <= '1';
        b0 <= '0';
        c0 <= '1';
        wait for 10 ns;
        a0 <= '1';
        b0 <= '1';
        c0 <= '0';
        wait for 10 ns;
        a0 <= '1';
        b0 <= '1';
        c0 <= '1';
        wait for 10 ns;

        wait;
    end process;

end behavior;
