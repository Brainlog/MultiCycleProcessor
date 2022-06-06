library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  
use std.textio.all;

entity machine is
  port (
    clock : in std_logic
  );
end machine;

architecture beh of machine is
  component Alu is
    port (
      in1_alu : in std_logic_vector(31 downto 0);
      in2_alu : in std_logic_vector(31 downto 0);
      cin_alu : in std_logic;
      cout_alu : out std_logic;
      opcode_alu : in std_logic_vector(3 downto 0);
      out0_alu : out std_logic_vector(31 downto 0) := (others => '0');
      clock : in std_logic
    );
  end component;
  component data_mem is
    port (

      write_add_datamem : in std_logic_vector(6 downto 0);
      din_datamem : in std_logic_vector(31 downto 0);
      dout_datamem : out std_logic_vector(31 downto 0):= ( X"E3A00000");
      clock_datamem : in std_logic;
      write_en_datamem : in std_logic_vector(3 downto 0);
      clock : in std_logic
      );

  end component;
  component reg_file is
    port (
      read_add_1_reg, read_add_2_reg, write_add_1_reg : in std_logic_vector(3 downto 0);
      write_reg : in std_logic;
      clock_reg : in std_logic;
      dinput_reg : in std_logic_vector(31 downto 0);
      dout_1_reg : out std_logic_vector(31 downto 0);
      dout_2_reg : out std_logic_vector(31 downto 0);
      clock : in std_logic
      );
  end component;
  component pc is
    port (

      in_pc : in std_logic_vector(31 downto 0);
      out_pc : out std_logic_vector(31 downto 0);
      clock : in std_logic
      );
  end component;
  component flag is
    port (

      N_flag : out std_logic;
      V_flag : out std_logic;
      Z_flag : out std_logic;
      C_flag : out std_logic;
      res_flag : in std_logic_vector(31 downto 0);
      a_flag : in std_logic_vector(31 downto 0);
      b_flag : in std_logic_vector(31 downto 0);
      clock : in std_logic
      );
  end component;
  component inst is
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
    );

  end component;
  component condChk is
    port (

      Z_chk : in std_logic;
      V_chk : in std_logic;
      N_chk : in std_logic;
      C_chk : in std_logic;
      cond_chk : in std_logic_vector(3 downto 0);
      Yes_chk : out std_logic;
      clock : in std_logic
    );

  end component;
  -- FSM SIGNALS    
  signal S : std_logic_vector(3 downto 0) := (others => '0');
  signal IR, A, B, DR, Res : std_logic_vector(31 downto 0) := (others => '0');

  --ALU SIGNALS
  signal in1_alu : std_logic_vector(31 downto 0);
  signal in2_alu : std_logic_vector(31 downto 0);
  signal cin_alu : std_logic;
  signal cout_alu : std_logic := '0';
  signal opcode_alu : std_logic_vector(3 downto 0);
  signal out0_alu : std_logic_vector(31 downto 0) := (others => '0');

  -- DATA SIGNALS
  signal write_add_datamem : std_logic_vector(6 downto 0);
  signal din_datamem : std_logic_vector(31 downto 0);
  signal dout_datamem : std_logic_vector(31 downto 0) := ( X"E3A00000");
  signal clock_datamem : std_logic := '1';
  signal write_en_datamem : std_logic_vector(3 downto 0) := (others => '0');

  -- REG SIGNALS
  signal read_add_1_reg, read_add_2_reg, write_add_1_reg : std_logic_vector(3 downto 0);
  signal write_reg : std_logic;
  signal clock_reg : std_logic := '1';
  signal dinput_reg : std_logic_vector(31 downto 0);
  signal dout_1_reg : std_logic_vector(31 downto 0);
  signal dout_2_reg : std_logic_vector(31 downto 0);

  -- PC SIGNALS
  signal in_pc : std_logic_vector(31 downto 0) := (others => '0');
  signal out_pc : std_logic_vector(31 downto 0) := (others => '0');

  -- FLAG SIGNALS
  signal N_flag : std_logic := '0';
  signal V_flag : std_logic := '0';
  signal Z_flag : std_logic := '0';
  signal C_flag : std_logic := '0';
  signal res_flag : std_logic_vector(31 downto 0) := (others => '0');
  signal a_flag : std_logic_vector(31 downto 0) := (others => '0');
  signal b_flag : std_logic_vector(31 downto 0) := (others => '0');

  -- INST SIGNALS
  signal inst_dec : std_logic_vector(31 downto 0);
  signal cond_dec : std_logic_vector(3 downto 0);
  signal F_dec : std_logic_vector(1 downto 0) := "00";
  signal I_dec : std_logic;
  signal opc_dec : std_logic_vector(3 downto 0);
  signal S_dec : std_logic;
  signal Rn_dec : std_logic_vector(3 downto 0);
  signal Rd_dec : std_logic_vector(3 downto 0);
  signal operand2_dec : std_logic_vector(11 downto 0);
  signal opc_dt_dec : std_logic_vector(5 downto 0);
  signal L_dec : std_logic;
  signal address_dec : std_logic_vector(23 downto 0);

  -- COND CHK SIGNALS
  signal Z_chk : std_logic;
  signal V_chk : std_logic;
  signal N_chk : std_logic;
  signal C_chk : std_logic;
  signal cond_chk : std_logic_vector(3 downto 0);
  signal Yes_chk : std_logic;

  -- temp signals
  signal in_pc_int : integer range 0 to 127;

  
  
begin
  uut1 : data_mem port map(

    write_add_datamem,
    din_datamem,
    dout_datamem,
    clock_datamem,
    write_en_datamem,
    clock
  );
  uut2 : Alu port map(
    in1_alu,
    in2_alu,
    cin_alu,
    cout_alu,
    opcode_alu,
    out0_alu,
    clock
  );
  uut3 : pc port map(

    in_pc,
    out_pc,
    clock
  );
  uut4 : flag port map(
    N_flag,
    V_flag,
    Z_flag,
    C_flag,
    res_flag,
    a_flag,
    b_flag,
    clock

  );
  uut5 : inst port map(
    inst_dec,
    cond_dec,
    F_dec,
    I_dec,
    opc_dec,
    S_dec,
    Rn_dec,
    Rd_dec,
    operand2_dec,
    opc_dt_dec,
    L_dec,
    address_dec,
    clock

  );
  uut6 : condChk port map(
    Z_chk,
    V_chk,
    N_chk,
    C_chk,
    cond_chk,
    Yes_chk,
    clock
  );
  uut7 : reg_file port map(
    read_add_1_reg, read_add_2_reg, write_add_1_reg,
    write_reg,
    clock_reg,
    dinput_reg,
    dout_1_reg,
    dout_2_reg, clock);
  process (clock)
  begin
    if (rising_edge(clock)) then
      case S is
        when "0000" => -- instruction fetch
        -- report "juju";
          S <= "1111"; -- ye to state change -- dummy
          -- in_pc_int <= conv_integer(in_pc); 

          Z_chk <= Z_flag;
          V_chk <= V_flag;
          N_chk <= N_flag;
          C_chk <= C_flag;

--           write_add_datamem <= out_pc(8 downto 2); -- niche jayega
          IR <= dout_datamem;      
          write_en_datamem <= "0000";
          -- in1_alu <= resize(signed(in_pc),32);
          -- in2_alu <= "00000000000000000000000000000100";
          -- opcode_alu <= "0100";
          -- cin_alu <= '0';
          -- report "the value needed" & to_hstring(out0_alu);
          if(out0_alu = "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU")then
          report "yha to hu";
          in_pc <= x"00000000";
     
          end if;
          inst_dec <= dout_datamem;
--           read_add_1_reg <= Rn_dec;
--           if F_dec = "00" then

--             read_add_2_reg <= inst_dec(3 downto 0);
--           elsif F_dec = "01" then
--             read_add_2_reg <= Rd_dec;
--           end if;
--           write_add_1_reg <= Rd_dec;

        when "0001" => -- Saving in register multicycle
          cond_chk <= cond_dec;
          A <= dout_1_reg;
          B <= dout_2_reg;
          din_datamem <= dout_2_reg;

          if F_dec = "00" then -- DP
            S <= "0111";

            in1_alu <= dout_1_reg;
            if I_dec = '1' then
            -- report "jkjk";
             in2_alu <= std_logic_vector(resize(signed(operand2_dec), 32));
              -- report "yoyo" & to_bstring(in2_alu);

            elsif I_dec = '0' then
              in2_alu <= dout_2_reg;
            end if;
            cin_alu <= C_flag;
            opcode_alu <= opc_dec;

          elsif F_dec = "01" then -- DT
            S <= "0010";
            in1_alu <= dout_1_reg;
            in2_alu <= std_logic_vector(resize(signed(operand2_dec), 32));
            opcode_alu <= "0100";
            cin_alu <= '0';
          elsif F_dec = "10" then -- B
            S <= "0110";
            in1_alu <= std_logic_vector(resize(signed(out_pc), 32));
            in2_alu <= std_logic_vector(resize(signed(address_dec), 32));
            opcode_alu <= "0100";
            cin_alu <= '0';

          end if;

        when "0010" => -- str/ldr Res
          Res <= out0_alu;
          if opc_dt_dec(0) = '1' then -- ldr(24)
            S <= "0100";
            write_en_datamem <= "0000";
            write_add_datamem <= out0_alu(6 downto 0);
          elsif opc_dt_dec(0) = '0' then -- str(25)
            S <= "0011";
            write_en_datamem <= "1111";
            write_add_datamem <= out0_alu(6 downto 0);
          end if;

        when "0011" => -- mem[] str
       
          din_datamem <= dout_2_reg;
          S <= "1110";
--           dinput_reg <= out0_alu;
--           write_add_datamem <= out_pc(8 downto 2);
          in1_alu <=std_logic_vector(resize(unsigned(in_pc(31 downto 0)), 32));
          in2_alu <= "00000000000000000000000000000100";
          opcode_alu <= "0101";
          cin_alu <= '0';
        

        when "0100" => -- DR = Mem[] ldr
          DR <= dout_datamem;
          S <= "0101";
        when "0101" => -- RF[] ldr
          dinput_reg <= DR;
          write_add_1_reg <= Rd_dec;
           S <= "1110";
          dinput_reg <= DR;
--           write_add_datamem <= out_pc(8 downto 2);
          in1_alu <=std_logic_vector(resize(unsigned(in_pc(31 downto 0)), 32));
          in2_alu <= "00000000000000000000000000000100";
          opcode_alu <= "0101";
          cin_alu <= '0';
        when "0110" => -- PC = PC + offset b
          S <= "1110";
          if Yes_chk = '0' then
            in1_alu <=std_logic_vector(resize(unsigned(in_pc(31 downto 2)),32));
            in2_alu <= std_logic_vector(resize(signed(operand2_dec),32));
            opcode_alu <= "0101";
            cin_alu <= '1';
          else
            in1_alu <=std_logic_vector(resize(unsigned(in_pc(31 downto 2)), 32));
            in2_alu <=std_logic_vector(resize(signed(address_dec), 32));

            opcode_alu <= "0100";
            cin_alu <= '1';
          end if;
        when "0111" => -- Res,Flags ALU
          if S_dec = '1' then
            res_flag <= out0_alu;
            a_flag <= in1_alu;
            b_flag <= in2_alu;
            
          end if;
          write_add_1_reg <= Rd_dec;
          Res <= out0_alu;
          write_reg <= '1';
          S <= "1000";
        when "1000" => -- RF[] ALU
          S <= "1110";
          dinput_reg <= out0_alu;
          
--           write_add_datamem <= out_pc(8 downto 2);
          in1_alu <=std_logic_vector(resize(unsigned(in_pc(31 downto 0)), 32));
          in2_alu <= "00000000000000000000000000000100";
          opcode_alu <= "0101";
          cin_alu <= '0';
          
      when "1111" => -- dummy state
      S <= "0001";
       read_add_1_reg <= Rn_dec;
          if F_dec = "00" then

            read_add_2_reg <= inst_dec(3 downto 0);
          elsif F_dec = "01" then
            read_add_2_reg <= Rd_dec;
          end if;
          write_add_1_reg <= Rd_dec;
     when "1110" => -- dummy 2
      S <= "1101";
       write_en_datamem <= "0000";
--        write_reg <= '0';
      in_pc <= out0_alu;
     when "1101" => -- dummy3
     S <= "0000";
      
     write_add_datamem <= out_pc(8 downto 2);
    
       
      
     when others =>
          
          S <= "0000";

      end case;

    end if; -- identifier
  end process;

end architecture;