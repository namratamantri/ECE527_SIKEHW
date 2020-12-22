-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rdc_mont is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ma_V : IN STD_LOGIC_VECTOR (895 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (447 downto 0) );
end;


architecture behav of rdc_mont is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv448_lc_9 : STD_LOGIC_VECTOR (447 downto 0) := "0000000000000010001101000001111100100111000101110111001101000100011011001111110001011111110101101000000111000101001000000101011001111011110001100101110001111000001100010101100010101110101000111111110111000001011101100111101011100011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv448_lc_10 : STD_LOGIC_VECTOR (447 downto 0) := "0000000000000010001101000001111100100111000101110111001101000100011011001111110001011111110101101000000111000101001000000101011001111011110001100101110001111000001100010101100010101110101000111111110111000001011101100111101011100010111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv32_1BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110111111";
    constant ap_const_lv447_lc_1 : STD_LOGIC_VECTOR (446 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111000000";
    constant ap_const_lv32_37F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000001101111111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv448_lc_1 : STD_LOGIC_VECTOR (447 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ma_V_read_reg_75 : STD_LOGIC_VECTOR (895 downto 0);
    signal ma_trunc_V_fu_38_p1 : STD_LOGIC_VECTOR (447 downto 0);
    signal ma_trunc_V_reg_80 : STD_LOGIC_VECTOR (447 downto 0);
    signal m_V_fu_51_p3 : STD_LOGIC_VECTOR (447 downto 0);
    signal m_V_reg_85 : STD_LOGIC_VECTOR (447 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_bc_mult_448_fu_30_ap_ready : STD_LOGIC;
    signal grp_bc_mult_448_fu_30_ap_done : STD_LOGIC;
    signal grp_bc_mult_448_fu_30_ap_return : STD_LOGIC_VECTOR (895 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal grp_bc_mult_448_fu_30_ap_start : STD_LOGIC;
    signal grp_bc_mult_448_fu_30_ap_idle : STD_LOGIC;
    signal grp_bc_mult_448_fu_30_a_V : STD_LOGIC_VECTOR (447 downto 0);
    signal grp_bc_mult_448_fu_30_b_V : STD_LOGIC_VECTOR (447 downto 0);
    signal grp_bc_mult_448_fu_30_ap_start_reg : STD_LOGIC := '0';
    signal tmp_fu_43_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_60_p2 : STD_LOGIC_VECTOR (895 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_fu_60_ce : STD_LOGIC;
    signal ap_return_preg : STD_LOGIC_VECTOR (447 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);

    component bc_mult_448 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        a_V : IN STD_LOGIC_VECTOR (447 downto 0);
        b_V : IN STD_LOGIC_VECTOR (447 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (895 downto 0) );
    end component;


    component eval_4_isog_add_8eOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (895 downto 0);
        din1 : IN STD_LOGIC_VECTOR (895 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (895 downto 0) );
    end component;



begin
    grp_bc_mult_448_fu_30 : component bc_mult_448
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_bc_mult_448_fu_30_ap_start,
        ap_done => grp_bc_mult_448_fu_30_ap_done,
        ap_idle => grp_bc_mult_448_fu_30_ap_idle,
        ap_ready => grp_bc_mult_448_fu_30_ap_ready,
        a_V => grp_bc_mult_448_fu_30_a_V,
        b_V => grp_bc_mult_448_fu_30_b_V,
        ap_return => grp_bc_mult_448_fu_30_ap_return);

    eval_4_isog_add_8eOg_U41 : component eval_4_isog_add_8eOg
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 896,
        din1_WIDTH => 896,
        dout_WIDTH => 896)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => ma_V_read_reg_75,
        din1 => grp_bc_mult_448_fu_30_ap_return,
        ce => grp_fu_60_ce,
        dout => grp_fu_60_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv448_lc_1;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_return_preg <= grp_fu_60_p2(895 downto 448);
                end if; 
            end if;
        end if;
    end process;


    grp_bc_mult_448_fu_30_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_bc_mult_448_fu_30_ap_start_reg <= ap_const_logic_0;
            else
                if ((((grp_bc_mult_448_fu_30_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                    grp_bc_mult_448_fu_30_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_bc_mult_448_fu_30_ap_ready = ap_const_logic_1)) then 
                    grp_bc_mult_448_fu_30_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                ap_return <= grp_fu_60_p2(895 downto 448);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_bc_mult_448_fu_30_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    m_V_reg_85(447) <= m_V_fu_51_p3(447);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                ma_V_read_reg_75 <= ma_V;
                ma_trunc_V_reg_80 <= ma_trunc_V_fu_38_p1;
            end if;
        end if;
    end process;
    m_V_reg_85(446 downto 0) <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, grp_bc_mult_448_fu_30_ap_done, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_bc_mult_448_fu_30_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_bc_mult_448_fu_30_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    grp_bc_mult_448_fu_30_a_V_assign_proc : process(ma_trunc_V_reg_80, m_V_reg_85, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_bc_mult_448_fu_30_a_V <= m_V_reg_85;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_bc_mult_448_fu_30_a_V <= ma_trunc_V_reg_80;
        else 
            grp_bc_mult_448_fu_30_a_V <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_bc_mult_448_fu_30_ap_start <= grp_bc_mult_448_fu_30_ap_start_reg;

    grp_bc_mult_448_fu_30_b_V_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_bc_mult_448_fu_30_b_V <= ap_const_lv448_lc_10;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_bc_mult_448_fu_30_b_V <= ap_const_lv448_lc_9;
        else 
            grp_bc_mult_448_fu_30_b_V <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_60_ce_assign_proc : process(grp_bc_mult_448_fu_30_ap_done, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((grp_bc_mult_448_fu_30_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            grp_fu_60_ce <= ap_const_logic_1;
        else 
            grp_fu_60_ce <= ap_const_logic_0;
        end if; 
    end process;

    m_V_fu_51_p3 <= (tmp_fu_43_p3 & ap_const_lv447_lc_1);
    ma_trunc_V_fu_38_p1 <= ma_V(448 - 1 downto 0);
    tmp_fu_43_p3 <= grp_bc_mult_448_fu_30_ap_return(447 downto 447);
end behav;
