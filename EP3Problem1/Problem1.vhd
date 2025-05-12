----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2025 13:55:47
-- Design Name: 
-- Module Name: problem1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem1 is
    Port ( a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           a4 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           b4 : in STD_LOGIC;
           s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           s2 : in STD_LOGIC;
           o : out STD_LOGIC);
end problem1;

architecture Behavioral of problem1 is

    component mux2to1
        Port(
            a1 : in STD_LOGIC;
            b1 : in STD_LOGIC;
            s : in STD_LOGIC;
            o : out STD_LOGIC
        );
    end component;
    ---L1to2 signals
    signal mux1_1 : STD_LOGIC;
    signal mux1_2 : STD_LOGIC;
    signal mux1_3 : STD_LOGIC;
    signal mux1_4 : STD_LOGIC;
    ---L2to3 signals
    signal mux2_1 : STD_LOGIC;
    signal mux2_2 : STD_LOGIC;
    ---L3 to output
    signal mux3_1 : STD_LOGIC;
begin

    ---L1
    M1: mux2to1 Port Map(a1 => a1, b1 => b1,s => s0, o => mux1_1);
    M2: mux2to1 Port Map(a1 => a2, b1 => b2,s => s0, o => mux1_2);
    M3: mux2to1 Port Map(a1 => a3, b1 => b3,s => s0, o => mux1_3);
    M4: mux2to1 Port Map(a1 => a4, b1 => b4,s => s0, o => mux1_4);
    
    ---L2
    
    M5: mux2to1 Port Map(a1 => mux1_1, b1 => mux1_2,s => s1, o => mux2_1);
    M6: mux2to1 Port Map(a1 => mux1_3, b1 => mux1_4,s => s1, o => mux2_2);
    
    ---L3
    
    M7: mux2to1 Port Map(a1 => mux2_1, b1 => mux2_2,s => s2, o => mux3_1);
    
    ---Output
    
    o <= mux3_1;




end Behavioral;
