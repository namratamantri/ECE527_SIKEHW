// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "mp2_add.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic mp2_add::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic mp2_add::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> mp2_add::ap_ST_fsm_state1 = "1";
const sc_lv<2> mp2_add::ap_ST_fsm_state2 = "10";
const sc_lv<32> mp2_add::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<64> mp2_add::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> mp2_add::ap_const_lv32_1 = "1";
const sc_lv<64> mp2_add::ap_const_lv64_1 = "1";
const bool mp2_add::ap_const_boolean_1 = true;

mp2_add::mp2_add(sc_module_name name) : sc_module(name), mVcdFile(0) {
    eval_4_isog_add_4ncg_U47 = new eval_4_isog_add_4ncg<1,2,448,448,448>("eval_4_isog_add_4ncg_U47");
    eval_4_isog_add_4ncg_U47->clk(ap_clk);
    eval_4_isog_add_4ncg_U47->reset(ap_rst);
    eval_4_isog_add_4ncg_U47->din0(b_0_V_read);
    eval_4_isog_add_4ncg_U47->din1(a_0_V_read);
    eval_4_isog_add_4ncg_U47->ce(ap_var_for_const0);
    eval_4_isog_add_4ncg_U47->dout(grp_fu_67_p2);
    eval_4_isog_add_4ncg_U48 = new eval_4_isog_add_4ncg<1,2,448,448,448>("eval_4_isog_add_4ncg_U48");
    eval_4_isog_add_4ncg_U48->clk(ap_clk);
    eval_4_isog_add_4ncg_U48->reset(ap_rst);
    eval_4_isog_add_4ncg_U48->din0(b_1_V_read);
    eval_4_isog_add_4ncg_U48->din1(a_1_V_read);
    eval_4_isog_add_4ncg_U48->ce(ap_var_for_const0);
    eval_4_isog_add_4ncg_U48->dout(grp_fu_74_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_c_V_address0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_c_V_address1);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_c_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_c_V_ce1);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_c_V_d0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( grp_fu_67_p2 );

    SC_METHOD(thread_c_V_d1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( grp_fu_74_p2 );

    SC_METHOD(thread_c_V_we0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_c_V_we1);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "mp2_add_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a_0_V_read, "(port)a_0_V_read");
    sc_trace(mVcdFile, a_1_V_read, "(port)a_1_V_read");
    sc_trace(mVcdFile, b_0_V_read, "(port)b_0_V_read");
    sc_trace(mVcdFile, b_1_V_read, "(port)b_1_V_read");
    sc_trace(mVcdFile, c_V_address0, "(port)c_V_address0");
    sc_trace(mVcdFile, c_V_ce0, "(port)c_V_ce0");
    sc_trace(mVcdFile, c_V_we0, "(port)c_V_we0");
    sc_trace(mVcdFile, c_V_d0, "(port)c_V_d0");
    sc_trace(mVcdFile, c_V_address1, "(port)c_V_address1");
    sc_trace(mVcdFile, c_V_ce1, "(port)c_V_ce1");
    sc_trace(mVcdFile, c_V_we1, "(port)c_V_we1");
    sc_trace(mVcdFile, c_V_d1, "(port)c_V_d1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, grp_fu_67_p2, "grp_fu_67_p2");
    sc_trace(mVcdFile, grp_fu_74_p2, "grp_fu_74_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

mp2_add::~mp2_add() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete eval_4_isog_add_4ncg_U47;
    delete eval_4_isog_add_4ncg_U48;
}

void mp2_add::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void mp2_add::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
}

void mp2_add::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void mp2_add::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void mp2_add::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void mp2_add::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void mp2_add::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void mp2_add::thread_c_V_address0() {
    c_V_address0 =  (sc_lv<1>) (ap_const_lv64_0);
}

void mp2_add::thread_c_V_address1() {
    c_V_address1 =  (sc_lv<1>) (ap_const_lv64_1);
}

void mp2_add::thread_c_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        c_V_ce0 = ap_const_logic_1;
    } else {
        c_V_ce0 = ap_const_logic_0;
    }
}

void mp2_add::thread_c_V_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        c_V_ce1 = ap_const_logic_1;
    } else {
        c_V_ce1 = ap_const_logic_0;
    }
}

void mp2_add::thread_c_V_d0() {
    c_V_d0 = grp_fu_67_p2.read();
}

void mp2_add::thread_c_V_d1() {
    c_V_d1 = grp_fu_74_p2.read();
}

void mp2_add::thread_c_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        c_V_we0 = ap_const_logic_1;
    } else {
        c_V_we0 = ap_const_logic_0;
    }
}

void mp2_add::thread_c_V_we1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        c_V_we1 = ap_const_logic_1;
    } else {
        c_V_we1 = ap_const_logic_0;
    }
}

void mp2_add::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}

