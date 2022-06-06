library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
    use std.textio.all;

entity inst is
  port (
    inst_dec : in std_logic_vector(31 downto 0);
    cond_dec : out std_logic_vector(3 downto 0);
    F_dec : out std_logic_vector(1 downto 0);
    I_dec : out std_logic;
    opc_dec : out std_logic_vector(3 downto 0);
    S_dec : out std_logic;
    Rn_dec : out std_logic_vector(3 downto 0);
    Rd_dec : out std_logic_vector(3 downto 0);
    operand2_dec : out std_logic_vector(11 downto 0);
    opc_dt_dec : out std_logic_vector(5 downto 0);
    L_dec : out std_logic;
    address_dec : out std_logic_vector(23 downto 0);
    clock : in std_logic
  ) ;
end inst ; 

architecture beh of inst is

begin
     process(clock,inst_dec)
    begin
    report "hulle";
      if(falling_edge(clock))then
      report "hi_Iam";
        cond_dec <= inst_dec(31 downto 28);
        F_dec <= inst_dec(27 downto 26);
        I_dec <= inst_dec(25);
        opc_dec <= inst_dec(24 downto 21);
        S_dec <= inst_dec(20);
        Rn_dec <= inst_dec(19 downto 16);
        Rd_dec <= inst_dec(15 downto 12);
        operand2_dec <= inst_dec(11 downto 0);
        opc_dt_dec <= inst_dec(25 downto 20);
        L_dec <= inst_dec(24);
        address_dec <= inst_dec(23 downto 0);
        end if;
    end process ; -- end architecture ;
    end architecture;    