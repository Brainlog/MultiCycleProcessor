library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity condChk is
  port (
    Z_chk : in std_logic;
    V_chk : in std_logic;
    N_chk : in std_logic;
    C_chk : in std_logic;
    cond_chk : in std_logic_vector(3 downto 0);
    Yes_chk : out std_logic;
    clock : in std_logic


  ) ;
end condChk ; 

architecture beh of condChk is

begin
    process(Z_chk,V_chk,N_chk,C_chk,cond_chk,clock)
    begin
        if(falling_edge(clock))then
        case( cond_chk ) is
        
            when "0000" =>
             if Z_chk = '1' then
                Yes_chk <= '1';
             else
                Yes_chk <= '0';   
                 
             end if ;
             when "0001" =>
             if Z_chk = '0' then
                Yes_chk <= '1';
             else
                 Yes_chk <= '0';
             end if; 
             when others => 
               Yes_chk <= '0';

                
        
            
        
        end case ;
        end if;
        
     


        
    end process ; -- identifier

end architecture ;