----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2026 10:29:35 AM
-- Design Name: 
-- Module Name: tb_xor_gate - sim
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

entity tb_xor_gate is
--  Port ( );
end tb_xor_gate;

architecture sim of tb_xor_gate is
    signal inpA : std_logic := '0';
    signal inpB : std_logic := '0';
    signal outA : std_logic;

begin
    UUT : entity work.xor_gate
        port map (
            a => inpA,
            b => inpB,
            out1 => outA
            ); 
    stim_process : process
        begin
            inpA <= '0'; inpB <='0';
            wait for 100 ns;
            
            inpA <= '0'; inpB <='1';
            wait for 100 ns;
            
            inpA <= '1'; inpB <='0';
            wait for 100 ns;
            
            inpA <= '1'; inpB <='1';
            wait;
        end process;
end sim;
