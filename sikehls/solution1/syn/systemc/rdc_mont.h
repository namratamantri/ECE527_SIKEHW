// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _rdc_mont_HH_
#define _rdc_mont_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "bc_mult_448.h"
#include "eval_4_isog_add_8eOg.h"

namespace ap_rtl {

struct rdc_mont : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<896> > ma_V;
    sc_out< sc_lv<448> > ap_return;


    // Module declarations
    rdc_mont(sc_module_name name);
    SC_HAS_PROCESS(rdc_mont);

    ~rdc_mont();

    sc_trace_file* mVcdFile;

    bc_mult_448* grp_bc_mult_448_fu_30;
    eval_4_isog_add_8eOg<1,2,896,896,896>* eval_4_isog_add_8eOg_U41;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<896> > ma_V_read_reg_75;
    sc_signal< sc_lv<448> > ma_trunc_V_fu_38_p1;
    sc_signal< sc_lv<448> > ma_trunc_V_reg_80;
    sc_signal< sc_lv<448> > m_V_fu_51_p3;
    sc_signal< sc_lv<448> > m_V_reg_85;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_bc_mult_448_fu_30_ap_ready;
    sc_signal< sc_logic > grp_bc_mult_448_fu_30_ap_done;
    sc_signal< sc_lv<896> > grp_bc_mult_448_fu_30_ap_return;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_bc_mult_448_fu_30_ap_start;
    sc_signal< sc_logic > grp_bc_mult_448_fu_30_ap_idle;
    sc_signal< sc_lv<448> > grp_bc_mult_448_fu_30_a_V;
    sc_signal< sc_lv<448> > grp_bc_mult_448_fu_30_b_V;
    sc_signal< sc_logic > grp_bc_mult_448_fu_30_ap_start_reg;
    sc_signal< sc_lv<1> > tmp_fu_43_p3;
    sc_signal< sc_lv<896> > grp_fu_60_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_fu_60_ce;
    sc_signal< sc_lv<448> > ap_return_preg;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<448> ap_const_lv448_lc_9;
    static const sc_lv<448> ap_const_lv448_lc_10;
    static const sc_lv<32> ap_const_lv32_1BF;
    static const sc_lv<447> ap_const_lv447_lc_1;
    static const sc_lv<32> ap_const_lv32_1C0;
    static const sc_lv<32> ap_const_lv32_37F;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<448> ap_const_lv448_lc_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_bc_mult_448_fu_30_a_V();
    void thread_grp_bc_mult_448_fu_30_ap_start();
    void thread_grp_bc_mult_448_fu_30_b_V();
    void thread_grp_fu_60_ce();
    void thread_m_V_fu_51_p3();
    void thread_ma_trunc_V_fu_38_p1();
    void thread_tmp_fu_43_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
