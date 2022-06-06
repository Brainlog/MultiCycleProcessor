library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity flag is
  port (
    N_flag : out std_logic;
    V_flag : out std_logic;
    Z_flag : out std_logic;
    C_flag : out std_logic;
    res_flag : in std_logic_vector(31 downto 0);
    a_flag : in std_logic_vector(31 downto 0);
    b_flag : in std_logic_vector(31 downto 0);
    clock : in std_logic
    
    
  ) ;
end flag ; 

architecture beh of flag is
    signal c31,c32 :  std_logic;


begin
    process( res_flag,a_flag,b_flag,clock)
    begin
      if(falling_edge(clock)) then
        c31 <= a_flag(31) xor b_flag(31) xor res_flag(31);
        c32 <= (a_flag(31) and res_flag(31)) or (b_flag(31) and res_flag(31)) or (b_flag(31) and a_flag(31));
        C_flag <= c32;
        V_flag <= c31 xor c32;
        N_flag <= res_flag(31);
        if res_flag =x"00000000" then Z_flag <= '1'; else Z_flag <= '0'; end if;
        end if;
    end process ; -- identifier

end architecture ;