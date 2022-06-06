
-- ALU
-- opcodes
-- 0000 => and
-- 0001 => xor
-- 0010 => sub
-- 0011 => rsb
-- 0100 => add
-- 0101 => addc
-- 0110 => subc
-- 0111 => rsbc
-- 1000 => tst
-- 1001 => teq
-- 1010 => cmp
-- 1011 => cmn
-- 1100 => orr
-- 1101 => mov
-- 1110 => bic
-- 1111 => mvn
-- input a_in,b_in

library IEEE;
use ieee.numeric_std.all;
use IEEE.std_logic_1164.all;

entity Alu is 
 port(
 in1_alu : in std_logic_vector(31 downto 0);
 in2_alu : in std_logic_vector(31 downto 0);
 cin_alu : in std_logic;
 cout_alu : out std_logic;
 opcode_alu :  in std_logic_vector(3 downto 0);
 out0_alu : out std_logic_vector(31 downto 0) := (others => '0');
 clock : in std_logic

 );
 end Alu;
 
 architecture Alu_beh of Alu is
 	signal temp : std_logic_vector(32 downto 0) ;
    signal in11,in22 : std_logic_vector(31 downto 0);
    signal chk : std_logic_vector(3 downto 0);
	 signal carry: std_logic_vector(31 downto 0);
 begin
	carry <= X"0000000" & "000" & cin_alu;

 process(opcode_alu,in1_alu,in2_alu,cin_alu,clock)

 begin
 if(falling_edge(clock)) then

 
 if(opcode_alu ="0000")then -- and 
 
temp <= STD_LOGIC_VECTOR(resize(unsigned(in1_alu and in2_alu),33)) ; 

 end if;
 if(opcode_alu = "0001")then
 temp <= std_logic_vector(resize(unsigned(in1_alu) xor unsigned(in2_alu),33));
 
 end if ;   
 if(opcode_alu = "0010")then
 
 temp <= std_logic_vector(resize(signed(not in2_alu)+signed(in1_alu) + 1,33));
 
 end if;
 if(opcode_alu = "0011")then
 temp <= std_logic_vector(resize(signed(not in1_alu)+signed(in2_alu)+1,33));
 end if;
 if(opcode_alu = "0100")then
 temp <= std_logic_vector(resize(signed( in2_alu)+signed(in1_alu),33));
 end if;
  if(opcode_alu = "0101")then
 temp <= std_logic_vector(resize(signed( in2_alu)+signed(in1_alu)+signed(carry),33));
 end if;
  if(opcode_alu = "0110")then
 temp <= std_logic_vector(resize(signed(not in2_alu)+signed(in1_alu)+signed(carry),33));
 end if;
  if(opcode_alu = "0111")then
 temp <= std_logic_vector(resize(signed(not in1_alu)+signed(in2_alu)+signed(carry),33));
 end if;
  if(opcode_alu = "1000")then
 temp <= std_logic_vector(resize(unsigned(in2_alu) and unsigned(in1_alu),33));
 end if;
  if(opcode_alu = "1001")then
 temp <= std_logic_vector(resize(unsigned(in2_alu) xor unsigned(in1_alu),33));
 end if;
  if(opcode_alu = "1010")then
 temp <= std_logic_vector(resize(signed(not in2_alu)+signed(in1_alu) + 1,33));
 end if;
  if(opcode_alu = "1011")then
 temp <= std_logic_vector(resize(signed( in2_alu)+signed(in1_alu),33));
 end if;
  if(opcode_alu = "1100")then
 temp <= std_logic_vector(resize(unsigned(in1_alu) or unsigned(in2_alu),33));
 end if;
  if(opcode_alu = "1101")then
 temp <= std_logic_vector(resize(signed( in2_alu),33));
 end if;
 if(opcode_alu = "1110")then
 temp <= std_logic_vector(resize(signed(in1_alu) and signed(not in2_alu),33));
 end if;
 
 if(opcode_alu = "1111")then
 temp <= std_logic_vector(resize(signed(not in2_alu),33));
 
 end if;
 end if;
 
  end process;

 out0_alu <= temp(31 downto 0);
 cout_alu <= temp(32);
 end Alu_beh;
