
library IEEE;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.ALL;
use std.textio.all;

entity data_mem is
	port(
    
        write_add_datamem : in std_logic_vector(6 downto 0);
        din_datamem : in std_logic_vector(31 downto 0);
        dout_datamem : out std_logic_vector(31 downto 0):=  X"E3A00000";
        clock_datamem : in std_logic;
        write_en_datamem : in std_logic_vector(3 downto 0);
        clock : in std_logic
        );       
end data_mem;   

architecture data_beh of data_mem is

Type list is array(127 downto 0) of std_logic_vector(31 downto 0);
signal mem : list := (0 => X"E3A00000",
1 => X"E3A01000",
2 => X"E0800001",
3 => X"E2811001",
4 => X"E3510005",
5 => X"1AFFFFFB",
others => X"00000000"
);
signal w1 : std_logic;
signal w2 : std_logic;
signal w3 : std_logic;
signal w4 : std_logic;
signal temp : std_logic_vector(7 downto 0);
signal write_index : integer range 0 to 127;
begin 
process( write_add_datamem, clock_datamem, write_en_datamem,clock)
	begin
    if(falling_edge(clock)) then  
   
  
   
    if(write_en_datamem = "0000")then
   --  report "no-op-bhai-no-op" & to_hstring(mem(10));
    dout_datamem <= mem( conv_integer(write_add_datamem));
   --  report "no-op-bhai-no-op" & to_hstring(mem( conv_integer(write_add_datamem)));
    end if;
 
    if(falling_edge(clock)) then
--     	if(write_en_datamem(0) = '1' and write_en_datamem(1) = '1' and  write_en_datamem(2) = '1' and write_en_datamem(3) = '1') then
--         	mem(conv_integer(write_add_datamem)) <= din_datamem;
--          end if;
--          end if;
     	if(write_en_datamem(0) = '1') then
         	mem(conv_integer(write_add_datamem))(7 downto 0) <= din_datamem(7 downto 0);   
            
            
        end if;    
        if(write_en_datamem(1) = '1') then
        
         	mem(conv_integer(write_add_datamem))(15 downto 8) <= din_datamem(15 downto 8); 
            end if;
            
             if(write_en_datamem(2) = '1') then
        
         	mem(conv_integer(write_add_datamem))(23 downto 16) <= din_datamem(23 downto 16); 
            end if;
            
              if(write_en_datamem(3) = '1') then
        
         	mem(conv_integer(write_add_datamem))(31 downto 24) <= din_datamem(31 downto 24); 
            end if;
            end if;
--             mem(write_index)(14) <= din_datamem(14);  
--             mem(write_index)(13) <= din_datamem(13);  
--             mem(write_index)(12) <= din_datamem(12);  
--             mem(write_index)(11) <= din_datamem(11);  
--             mem(write_index)(10) <= din_datamem(10);  
--             mem(write_index)(9) <= din_datamem(9);  
--             mem(write_index)(8) <= din_datamem(8);  
--         end if;    
--          if(w3 = '1') then
--          	mem(write_index)(16) <= din_datamem(16); 
--             mem(write_index)(17) <= din_datamem(17);  
--             mem(write_index)(18) <= din_datamem(18);  
--             mem(write_index)(19) <= din_datamem(19);  
--             mem(write_index)(20) <= din_datamem(20);  
--             mem(write_index)(21) <= din_datamem(21);  
--             mem(write_index)(22) <= din_datamem(22);  
--             mem(write_index)(23) <= din_datamem(23);
         
--          end if;   
--          if(w4 = '1') then
         
--          mem(write_index)(24) <= din_datamem(24); 
--             mem(write_index)(25) <= din_datamem(25);  
--             mem(write_index)(26) <= din_datamem(26);  
--             mem(write_index)(27) <= din_datamem(27);  
--             mem(write_index)(28) <= din_datamem(28);  
--             mem(write_index)(29) <= din_datamem(29);  
--             mem(write_index)(30) <= din_datamem(30);  
--             mem(write_index)(31) <= din_datamem(31);
         
           

--          end if;
      end if;
   
   end process;
end data_beh;   
            
        	
    
    
