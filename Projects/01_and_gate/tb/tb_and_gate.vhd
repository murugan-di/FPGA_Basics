----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2026 06:03:28 PM
-- Design Name: 
-- Module Name: tb_and_gate - sim
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

entity tb_and_gate is
--  Port ( );
end tb_and_gate;

architecture sim of tb_and_gate is

signal inp1 : std_logic := '0';
signal inp2 : std_logic := '0';
signal outp : std_logic;

begin
UUT : entity work.and_gate
    port map(
        inp1 => inp1,
        inp2 => inp2,
        outp => outp
        );

stim_process : process
begin

    inp1 <= '0'; inp2 <= '0';
    wait for 100 ns;
    
    inp1 <= '0'; inp2 <= '1';
    wait for 100 ns;
    
    inp1 <= '1'; inp2 <= '0';
    wait for 100 ns;
    
    inp1 <= '1'; inp2 <= '1';
    wait for 100 ns;
    
    wait;
    
end process;
           

end sim;
