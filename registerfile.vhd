library IEEE;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.ALL;
use std.textio.all;


entity reg_file is
	port(
    	read_add_1_reg, read_add_2_reg, write_add_1_reg :in std_logic_vector(3 downto 0);
        write_reg : in std_logic;
        clock_reg : in std_logic;
        dinput_reg : in std_logic_vector(31 downto 0);
        dout_1_reg :out std_logic_vector(31 downto 0);
        dout_2_reg : out std_logic_vector(31 downto 0);
        clock : in std_logic
        );
end reg_file;




architecture beh_reg of reg_file is
signal index1, index2, index_write : integer range 0 to 15;
type list is  array(15 downto 0) of std_logic_vector(31 downto 0) ;
signal r : list;
begin
    
     
process(read_add_1_reg, read_add_2_reg, write_add_1_reg, write_reg, clock)
	begin
    if(falling_edge(clock)) then
     index1 <= conv_integer(read_add_1_reg);
     index2 <= conv_integer(read_add_2_reg);
     index_write <= conv_integer(write_add_1_reg);
    
     if(falling_edge(clock) and write_reg = '1') then
             r(conv_integer(write_add_1_reg)) <= dinput_reg;
             
      
             
     end if;
   
     dout_1_reg <= r(conv_integer(read_add_1_reg));
     dout_2_reg <= r(conv_integer(read_add_2_reg));
     end if;
     
end process;
end beh_reg;
    
     	