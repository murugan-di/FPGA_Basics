----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2026 10:45:04 AM
-- Design Name: 
-- Module Name: tb_nand_gate - sim
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

entity tb_nand_gate is
--  Port ( );
end tb_nand_gate;

architecture sim of tb_nand_gate is
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal c : std_logic;

begin
    UUT : entity work.nand_gate
        port map (
            x => a,
            y => b,
            z => c);

    stim_process : process
        begin
            a <= '0'; b <= '0';
            wait for 100 ns;
            
            a <= '0'; b <= '1';
            wait for 100 ns;
            
            a <= '1'; b <= '0';
            wait for 100 ns;
            
            a <= '1'; b <= '1';
            wait for 100 ns;
        end process;
        
end sim;
