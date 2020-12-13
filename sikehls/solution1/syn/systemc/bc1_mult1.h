// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _bc1_mult1_HH_
#define _bc1_mult1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "mp_mul_mux_73_16_bkb.h"
#include "mp_mul_mul_mul_16cud.h"

namespace ap_rtl {

struct bc1_mult1 : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<112> > a_V;
    sc_out< sc_lv<224> > ap_return;


    // Module declarations
    bc1_mult1(sc_module_name name);
    SC_HAS_PROCESS(bc1_mult1);

    ~bc1_mult1();

    sc_trace_file* mVcdFile;

    mp_mul_mux_73_16_bkb<1,1,16,16,16,16,16,16,16,3,16>* mp_mul_mux_73_16_bkb_U29;
    mp_mul_mul_mul_16cud<1,1,16,16,32>* mp_mul_mul_mul_16cud_U30;
    mp_mul_mul_mul_16cud<1,1,16,16,32>* mp_mul_mul_mul_16cud_U31;
    mp_mul_mul_mul_16cud<1,1,16,16,32>* mp_mul_mul_mul_16cud_U32;
    mp_mul_mul_mul_16cud<1,1,16,16,32>* mp_mul_mul_mul_16cud_U33;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > ai_0_V_fu_243_p1;
    sc_signal< sc_lv<16> > ai_0_V_reg_689;
    sc_signal< sc_lv<16> > ai_1_V_reg_695;
    sc_signal< sc_lv<16> > ai_2_V_reg_701;
    sc_signal< sc_lv<16> > ai_3_V_fu_267_p4;
    sc_signal< sc_lv<16> > ai_3_V_reg_707;
    sc_signal< sc_lv<16> > ai_4_V_reg_712;
    sc_signal< sc_lv<16> > ai_5_V_reg_718;
    sc_signal< sc_lv<16> > ai_6_V_reg_724;
    sc_signal< sc_lv<32> > zext_ln215_32_fu_307_p1;
    sc_signal< sc_lv<32> > zext_ln215_32_reg_730;
    sc_signal< sc_lv<3> > i_fu_322_p2;
    sc_signal< sc_lv<3> > i_reg_738;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<16> > tmp_s_fu_328_p9;
    sc_signal< sc_lv<16> > tmp_s_reg_743;
    sc_signal< sc_lv<1> > icmp_ln283_fu_316_p2;
    sc_signal< sc_lv<224> > add_ln68_fu_341_p2;
    sc_signal< sc_lv<224> > add_ln68_reg_748;
    sc_signal< sc_lv<224> > add_ln68_41_fu_347_p2;
    sc_signal< sc_lv<224> > add_ln68_41_reg_753;
    sc_signal< sc_lv<224> > add_ln68_42_fu_353_p2;
    sc_signal< sc_lv<224> > add_ln68_42_reg_758;
    sc_signal< sc_lv<32> > zext_ln215_29_fu_359_p1;
    sc_signal< sc_lv<32> > zext_ln215_29_reg_763;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > zext_ln1352_fu_362_p1;
    sc_signal< sc_lv<4> > zext_ln1352_reg_770;
    sc_signal< sc_lv<224> > zext_ln161_fu_366_p1;
    sc_signal< sc_lv<224> > zext_ln161_reg_778;
    sc_signal< sc_lv<1> > icmp_ln215_fu_369_p2;
    sc_signal< sc_lv<1> > icmp_ln215_reg_783;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > mul_ln1352_fu_667_p2;
    sc_signal< sc_lv<32> > mul_ln1352_reg_790;
    sc_signal< sc_lv<4> > add_ln288_fu_389_p2;
    sc_signal< sc_lv<4> > add_ln288_reg_795;
    sc_signal< sc_lv<1> > icmp_ln215_15_fu_400_p2;
    sc_signal< sc_lv<1> > icmp_ln215_15_reg_800;
    sc_signal< sc_lv<32> > mul_ln1352_22_fu_672_p2;
    sc_signal< sc_lv<32> > mul_ln1352_22_reg_807;
    sc_signal< sc_lv<4> > add_ln288_1_fu_420_p2;
    sc_signal< sc_lv<4> > add_ln288_1_reg_812;
    sc_signal< sc_lv<1> > icmp_ln215_16_fu_431_p2;
    sc_signal< sc_lv<1> > icmp_ln215_16_reg_817;
    sc_signal< sc_lv<32> > mul_ln1352_23_fu_677_p2;
    sc_signal< sc_lv<32> > mul_ln1352_23_reg_824;
    sc_signal< sc_lv<4> > add_ln288_2_fu_451_p2;
    sc_signal< sc_lv<4> > add_ln288_2_reg_829;
    sc_signal< sc_lv<224> > sum_0_V_fu_487_p2;
    sc_signal< sc_lv<224> > sum_0_V_reg_834;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<224> > sum_1_V_fu_520_p2;
    sc_signal< sc_lv<224> > sum_1_V_reg_840;
    sc_signal< sc_lv<224> > sum_2_V_fu_553_p2;
    sc_signal< sc_lv<224> > sum_2_V_reg_846;
    sc_signal< sc_lv<224> > sum_4_V_15_fu_559_p3;
    sc_signal< sc_lv<224> > sum_4_V_15_reg_852;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<224> > sum_4_V_16_fu_565_p3;
    sc_signal< sc_lv<224> > sum_4_V_16_reg_858;
    sc_signal< sc_lv<224> > sum_5_V_15_fu_571_p3;
    sc_signal< sc_lv<224> > sum_5_V_15_reg_864;
    sc_signal< sc_lv<224> > sum_5_V_16_fu_577_p3;
    sc_signal< sc_lv<224> > sum_5_V_16_reg_870;
    sc_signal< sc_lv<224> > sum_6_V_15_fu_583_p3;
    sc_signal< sc_lv<224> > sum_6_V_15_reg_876;
    sc_signal< sc_lv<224> > sum_6_V_16_fu_589_p3;
    sc_signal< sc_lv<224> > sum_6_V_16_reg_882;
    sc_signal< sc_lv<4> > add_ln288_3_fu_611_p2;
    sc_signal< sc_lv<4> > add_ln288_3_reg_891;
    sc_signal< sc_lv<1> > icmp_ln285_fu_601_p2;
    sc_signal< sc_lv<3> > xor_ln285_fu_616_p2;
    sc_signal< sc_lv<3> > xor_ln285_reg_896;
    sc_signal< sc_lv<224> > sum_3_V_fu_638_p2;
    sc_signal< sc_lv<224> > sum_3_V_reg_901;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<224> > add_ln68_40_fu_648_p2;
    sc_signal< sc_lv<224> > add_ln68_40_reg_906;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<224> > add_ln68_43_fu_653_p2;
    sc_signal< sc_lv<224> > add_ln68_43_reg_911;
    sc_signal< sc_lv<224> > sum_V_0_0_reg_78;
    sc_signal< sc_lv<224> > sum_V_1_0_reg_90;
    sc_signal< sc_lv<224> > sum_V_2_0_reg_102;
    sc_signal< sc_lv<224> > sum_V_4_0_reg_114;
    sc_signal< sc_lv<224> > sum_V_5_0_reg_126;
    sc_signal< sc_lv<224> > sum_V_6_0_reg_138;
    sc_signal< sc_lv<3> > i3_0_reg_150;
    sc_signal< sc_lv<3> > j_0_0_reg_162;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<224> > sum_V_0_1_reg_174;
    sc_signal< sc_lv<224> > sum_V_1_1_reg_185;
    sc_signal< sc_lv<224> > sum_V_2_1_reg_196;
    sc_signal< sc_lv<224> > sum_V_4_1_reg_207;
    sc_signal< sc_lv<224> > sum_V_5_1_reg_218;
    sc_signal< sc_lv<224> > sum_V_6_1_reg_229;
    sc_signal< sc_lv<224> > sum_3_V_8_fu_68;
    sc_signal< sc_lv<32> > mul_ln1352_24_fu_661_p2;
    sc_signal< sc_lv<16> > select_ln215_fu_375_p3;
    sc_signal< sc_lv<4> > zext_ln288_1_fu_385_p1;
    sc_signal< sc_lv<3> > or_ln215_fu_394_p2;
    sc_signal< sc_lv<16> > select_ln215_15_fu_406_p3;
    sc_signal< sc_lv<4> > zext_ln288_2_fu_416_p1;
    sc_signal< sc_lv<3> > or_ln215_4_fu_425_p2;
    sc_signal< sc_lv<16> > select_ln215_16_fu_437_p3;
    sc_signal< sc_lv<4> > zext_ln288_3_fu_447_p1;
    sc_signal< sc_lv<8> > shl_ln_fu_459_p3;
    sc_signal< sc_lv<192> > zext_ln288_fu_456_p1;
    sc_signal< sc_lv<192> > zext_ln1503_fu_466_p1;
    sc_signal< sc_lv<192> > shl_ln1503_fu_470_p2;
    sc_signal< sc_lv<224> > zext_ln1503_7_fu_476_p1;
    sc_signal< sc_lv<224> > select_ln700_fu_480_p3;
    sc_signal< sc_lv<8> > shl_ln288_1_fu_496_p3;
    sc_signal< sc_lv<224> > zext_ln161_1_fu_493_p1;
    sc_signal< sc_lv<224> > zext_ln1503_1_fu_503_p1;
    sc_signal< sc_lv<224> > shl_ln1503_1_fu_507_p2;
    sc_signal< sc_lv<224> > select_ln700_59_fu_513_p3;
    sc_signal< sc_lv<8> > shl_ln288_2_fu_529_p3;
    sc_signal< sc_lv<224> > zext_ln161_2_fu_526_p1;
    sc_signal< sc_lv<224> > zext_ln1503_2_fu_536_p1;
    sc_signal< sc_lv<224> > shl_ln1503_2_fu_540_p2;
    sc_signal< sc_lv<224> > select_ln700_62_fu_546_p3;
    sc_signal< sc_lv<3> > or_ln285_fu_595_p2;
    sc_signal< sc_lv<4> > zext_ln288_4_fu_607_p1;
    sc_signal< sc_lv<8> > shl_ln288_3_fu_622_p3;
    sc_signal< sc_lv<224> > zext_ln1503_3_fu_629_p1;
    sc_signal< sc_lv<224> > shl_ln1503_3_fu_633_p2;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<16> > mul_ln1352_24_fu_661_p0;
    sc_signal< sc_lv<16> > mul_ln1352_24_fu_661_p1;
    sc_signal< sc_lv<16> > mul_ln1352_fu_667_p0;
    sc_signal< sc_lv<16> > mul_ln1352_fu_667_p1;
    sc_signal< sc_lv<16> > mul_ln1352_22_fu_672_p0;
    sc_signal< sc_lv<16> > mul_ln1352_22_fu_672_p1;
    sc_signal< sc_lv<16> > mul_ln1352_23_fu_677_p0;
    sc_signal< sc_lv<16> > mul_ln1352_23_fu_677_p1;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    sc_signal< sc_lv<32> > mul_ln1352_22_fu_672_p00;
    sc_signal< sc_lv<32> > mul_ln1352_23_fu_677_p00;
    sc_signal< sc_lv<32> > mul_ln1352_24_fu_661_p10;
    sc_signal< sc_lv<32> > mul_ln1352_fu_667_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<224> ap_const_lv224_lc_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_4F;
    static const sc_lv<32> ap_const_lv32_50;
    static const sc_lv<32> ap_const_lv32_5F;
    static const sc_lv<32> ap_const_lv32_60;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<32> ap_const_lv32_9;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln288_1_fu_420_p2();
    void thread_add_ln288_2_fu_451_p2();
    void thread_add_ln288_3_fu_611_p2();
    void thread_add_ln288_fu_389_p2();
    void thread_add_ln68_40_fu_648_p2();
    void thread_add_ln68_41_fu_347_p2();
    void thread_add_ln68_42_fu_353_p2();
    void thread_add_ln68_43_fu_653_p2();
    void thread_add_ln68_fu_341_p2();
    void thread_ai_0_V_fu_243_p1();
    void thread_ai_3_V_fu_267_p4();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_i_fu_322_p2();
    void thread_icmp_ln215_15_fu_400_p2();
    void thread_icmp_ln215_16_fu_431_p2();
    void thread_icmp_ln215_fu_369_p2();
    void thread_icmp_ln283_fu_316_p2();
    void thread_icmp_ln285_fu_601_p2();
    void thread_mul_ln1352_22_fu_672_p0();
    void thread_mul_ln1352_22_fu_672_p00();
    void thread_mul_ln1352_22_fu_672_p1();
    void thread_mul_ln1352_23_fu_677_p0();
    void thread_mul_ln1352_23_fu_677_p00();
    void thread_mul_ln1352_23_fu_677_p1();
    void thread_mul_ln1352_24_fu_661_p0();
    void thread_mul_ln1352_24_fu_661_p1();
    void thread_mul_ln1352_24_fu_661_p10();
    void thread_mul_ln1352_fu_667_p0();
    void thread_mul_ln1352_fu_667_p00();
    void thread_mul_ln1352_fu_667_p1();
    void thread_or_ln215_4_fu_425_p2();
    void thread_or_ln215_fu_394_p2();
    void thread_or_ln285_fu_595_p2();
    void thread_select_ln215_15_fu_406_p3();
    void thread_select_ln215_16_fu_437_p3();
    void thread_select_ln215_fu_375_p3();
    void thread_select_ln700_59_fu_513_p3();
    void thread_select_ln700_62_fu_546_p3();
    void thread_select_ln700_fu_480_p3();
    void thread_shl_ln1503_1_fu_507_p2();
    void thread_shl_ln1503_2_fu_540_p2();
    void thread_shl_ln1503_3_fu_633_p2();
    void thread_shl_ln1503_fu_470_p2();
    void thread_shl_ln288_1_fu_496_p3();
    void thread_shl_ln288_2_fu_529_p3();
    void thread_shl_ln288_3_fu_622_p3();
    void thread_shl_ln_fu_459_p3();
    void thread_sum_0_V_fu_487_p2();
    void thread_sum_1_V_fu_520_p2();
    void thread_sum_2_V_fu_553_p2();
    void thread_sum_3_V_fu_638_p2();
    void thread_sum_4_V_15_fu_559_p3();
    void thread_sum_4_V_16_fu_565_p3();
    void thread_sum_5_V_15_fu_571_p3();
    void thread_sum_5_V_16_fu_577_p3();
    void thread_sum_6_V_15_fu_583_p3();
    void thread_sum_6_V_16_fu_589_p3();
    void thread_xor_ln285_fu_616_p2();
    void thread_zext_ln1352_fu_362_p1();
    void thread_zext_ln1503_1_fu_503_p1();
    void thread_zext_ln1503_2_fu_536_p1();
    void thread_zext_ln1503_3_fu_629_p1();
    void thread_zext_ln1503_7_fu_476_p1();
    void thread_zext_ln1503_fu_466_p1();
    void thread_zext_ln161_1_fu_493_p1();
    void thread_zext_ln161_2_fu_526_p1();
    void thread_zext_ln161_fu_366_p1();
    void thread_zext_ln215_29_fu_359_p1();
    void thread_zext_ln215_32_fu_307_p1();
    void thread_zext_ln288_1_fu_385_p1();
    void thread_zext_ln288_2_fu_416_p1();
    void thread_zext_ln288_3_fu_447_p1();
    void thread_zext_ln288_4_fu_607_p1();
    void thread_zext_ln288_fu_456_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
