-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mp2_add is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_0_V_read : IN STD_LOGIC_VECTOR (447 downto 0);
    a_1_V_read : IN STD_LOGIC_VECTOR (447 downto 0);
    b_0_V_read : IN STD_LOGIC_VECTOR (447 downto 0);
    b_1_V_read : IN STD_LOGIC_VECTOR (447 downto 0);
    c_V_address0 : OUT STD_LOGIC_VECTOR (0 downto 0);
    c_V_ce0 : OUT STD_LOGIC;
    c_V_we0 : OUT STD_LOGIC;
    c_V_d0 : OUT STD_LOGIC_VECTOR (447 downto 0);
    c_V_address1 : OUT STD_LOGIC_VECTOR (0 downto 0);
    c_V_ce1 : OUT STD_LOGIC;
    c_V_we1 : OUT STD_LOGIC;
    c_V_d1 : OUT STD_LOGIC_VECTOR (447 downto 0) );
end;


architecture behav of mp2_add is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_fu_67_p2 : STD_LOGIC_VECTOR (447 downto 0);
    signal grp_fu_74_p2 : STD_LOGIC_VECTOR (447 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);

    component eval_4_isog_add_4ncg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (447 downto 0);
        din1 : IN STD_LOGIC_VECTOR (447 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (447 downto 0) );
    end component;



begin
    eval_4_isog_add_4ncg_U47 : component eval_4_isog_add_4ncg
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 448,
        din1_WIDTH => 448,
        dout_WIDTH => 448)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => b_0_V_read,
        din1 => a_0_V_read,
        ce => ap_const_logic_1,
        dout => grp_fu_67_p2);

    eval_4_isog_add_4ncg_U48 : component eval_4_isog_add_4ncg
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 448,
        din1_WIDTH => 448,
        dout_WIDTH => 448)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => b_1_V_read,
        din1 => a_1_V_read,
        ce => ap_const_logic_1,
        dout => grp_fu_74_p2);





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


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c_V_address0 <= ap_const_lv64_0(1 - 1 downto 0);
    c_V_address1 <= ap_const_lv64_1(1 - 1 downto 0);

    c_V_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_V_ce0 <= ap_const_logic_1;
        else 
            c_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    c_V_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_V_ce1 <= ap_const_logic_1;
        else 
            c_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    c_V_d0 <= grp_fu_67_p2;
    c_V_d1 <= grp_fu_74_p2;

    c_V_we0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_V_we0 <= ap_const_logic_1;
        else 
            c_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    c_V_we1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c_V_we1 <= ap_const_logic_1;
        else 
            c_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

end behav;
