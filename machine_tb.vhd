library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity machine_test is 
end entity;

architecture machine_test_arc of machine_test is
    component machine is
    port(
    clock : in std_logic
    );
    end component;
    
signal clock : std_logic := '0';

    
begin   
    uut: machine PORT MAP (
    clock          
    
    );
    

stim_proc: process
begin  
    
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
    wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
     wait for 1 ns;
    clock <= '1';
    wait for 1 ns;
    clock <= '0';
  
    wait;
    
end process;

END;

