----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2026 11:32:09 AM
-- Design Name: 
-- Module Name: tb_or_gate - Behavioral
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

entity tb_or_gate is
--  Port ( );
end tb_or_gate;

architecture sim of tb_or_gate is

signal inpA : std_logic := '0';
signal inpB : std_logic := '0';
signal out_OR : std_logic;

begin
    UUT : entity work.or_gate
        port map (
            inp1 => inpA,
            inp2 => inpB,
            out1 => out_or
            );
    
    stim_process : process
    begin
        
        inpA <= '0'; inpB <= '0';
        wait for 100 ns;
        
        inpA <= '0'; inpB <= '1';
        wait for 100 ns;
        
        inpA <= '1'; inpB <= '0';
        wait for 100 ns;
        
        inpA <= '1'; inpB <= '1';
        wait for 100 ns;
        
    end process;
end sim;
