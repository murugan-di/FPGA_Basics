----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2026 01:50:50 PM
-- Design Name: 
-- Module Name: not_tb_gate - sim
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

entity not_tb_gate is
--  Port ( );
end not_tb_gate;

architecture sim of not_tb_gate is
    signal inp1 : std_logic := '0';
    signal out1 : std_logic;

begin
    UUT : entity work.not_gate
        port map ( 
            i1 => inp1,
            o1 => out1); 
            
    stim_process : process
    begin
        
        inp1 <= '0';
        wait for 100 ns;
        
        inp1 <= '1';
        wait for 100 ns;
    end process;
end sim;
