-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity mp_mul_add_450s_4jbC_AddSubnS_4 is
port (
    clk   : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    ce    : IN STD_LOGIC;
    a     : IN STD_LOGIC_VECTOR(449 downto 0);
    b     : IN STD_LOGIC_VECTOR(449 downto 0);
    s     : OUT STD_LOGIC_VECTOR(449 downto 0));
end entity;

architecture behav of mp_mul_add_450s_4jbC_AddSubnS_4 is
  component mp_mul_add_450s_4jbC_AddSubnS_4_comb_adder is 
    generic(N : natural := 32);
    port (
      a    : IN  STD_LOGIC_VECTOR (N-1 downto 0);
      b    : IN  STD_LOGIC_VECTOR (N-1 downto 0);
      cin  : IN  STD_LOGIC_VECTOR (0 downto 0);
      s    : OUT STD_LOGIC_VECTOR (N-1 downto 0);
      cout : OUT STD_LOGIC_VECTOR (0 downto 0));
  end component;

-- ---- register and wire type variables list here ----

-- wire for the primary inputs
  signal ain_s0 : STD_LOGIC_VECTOR(449 downto 0);
  signal bin_s0 : STD_LOGIC_VECTOR(449 downto 0);

-- Stage 1 signals
  signal  fas_s1     : STD_LOGIC_VECTOR(225 -1 downto 0);
  signal  facout_s1  : STD_LOGIC_VECTOR(0 downto 0);
  signal  ain_s1     : STD_LOGIC_VECTOR(225 - 1 downto 0);
  signal  bin_s1     : STD_LOGIC_VECTOR(225 - 1 downto 0);
  signal  sum_s1     : STD_LOGIC_VECTOR(225 - 1 downto 0);
  signal  carry_s1   : STD_LOGIC_VECTOR(0 downto 0);

-- Stage 2 signals
  signal  fas_s2     : STD_LOGIC_VECTOR(225 -1 downto 0);
  signal  facout_s2  : STD_LOGIC_VECTOR(0 downto 0);
begin

ain_s0 <= std_logic_vector(resize(unsigned(a), 450));
bin_s0 <= std_logic_vector(resize(unsigned(b), 450));

-- This AddSub module have totally 2 stages. For each stage the adder's width are:
-- 225 225

u1 : mp_mul_add_450s_4jbC_AddSubnS_4_comb_adder
  generic map
    ( N => 225 )
  port map
    (a    => ain_s0(225 - 1 downto 0),
     b    => bin_s0(225 - 1 downto 0),
     cin  => "0",
     s    => fas_s1,
     cout => facout_s1);

-- Stage 1 logic
process (clk) begin
  if (clk'event and clk = '1') then
    if (ce = '1') then
        sum_s1   <= fas_s1;
        carry_s1 <= facout_s1;
    end if;
  end if;
end process;

process (clk) begin
  if (clk'event and clk = '1') then
    if (ce = '1') then
        ain_s1 <= ain_s0(450 - 1 downto 225);
    end if;
  end if;
end process;

process (clk) begin
  if (clk'event and clk = '1') then
    if (ce = '1') then
        bin_s1 <= bin_s0(450 - 1 downto 225);
    end if;
  end if;
end process;

u2 : mp_mul_add_450s_4jbC_AddSubnS_4_comb_adder
  generic map
    ( N => 225 )
  port map
    (a    => ain_s1(225 - 1 downto 0),
     b    => bin_s1(225 - 1 downto 0),
     cin  => carry_s1,
     s    => fas_s2,
     cout => facout_s2);

-- Stage 2 logic
s <= fas_s2 & sum_s1;

end architecture;

-- small adder
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity mp_mul_add_450s_4jbC_AddSubnS_4_comb_adder is
  generic(N : natural := 32);
  port (
      a    : IN  STD_LOGIC_VECTOR (N-1 downto 0);
      b    : IN  STD_LOGIC_VECTOR (N-1 downto 0);
      cin  : IN  STD_LOGIC_VECTOR (0 downto 0);
      s    : OUT STD_LOGIC_VECTOR (N-1 downto 0);
      cout : OUT STD_LOGIC_VECTOR (0 downto 0));
end;

architecture behav of mp_mul_add_450s_4jbC_AddSubnS_4_comb_adder is
    signal tmp : STD_LOGIC_VECTOR (N downto 0);
begin

  tmp  <= std_logic_vector(resize(unsigned(a),N+1) + unsigned(b) + unsigned(cin));
  s    <= tmp(N-1 downto 0 );
  cout <= tmp(N downto N);

end architecture;

Library IEEE;
use IEEE.std_logic_1164.all;

entity mp_mul_add_450s_4jbC is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        ce : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of mp_mul_add_450s_4jbC is
    component mp_mul_add_450s_4jbC_AddSubnS_4 is
        port (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            ce : IN STD_LOGIC;
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            s : OUT STD_LOGIC_VECTOR);
    end component;



begin
    mp_mul_add_450s_4jbC_AddSubnS_4_U :  component mp_mul_add_450s_4jbC_AddSubnS_4
    port map (
        clk => clk,
        reset => reset,
        ce => ce,
        a => din0,
        b => din1,
        s => dout);

end architecture;


