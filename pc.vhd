library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity pc is
  port (
    in_pc : in std_logic_vector(31 downto 0);
    out_pc : out std_logic_vector(31 downto 0) := (others => '0');
    clock : in std_logic
  ) ;
end pc ; 

architecture beh of pc is

begin
    process(in_pc,clock)
    begin
      if(falling_edge(clock))then
        out_pc <= in_pc;
     end if;   
    end process ; -- end architecture ;

    end architecture;