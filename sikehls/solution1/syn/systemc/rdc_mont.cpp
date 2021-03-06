// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "rdc_mont.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic rdc_mont::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic rdc_mont::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> rdc_mont::ap_ST_fsm_state1 = "1";
const sc_lv<4> rdc_mont::ap_ST_fsm_state2 = "10";
const sc_lv<4> rdc_mont::ap_ST_fsm_state3 = "100";
const sc_lv<4> rdc_mont::ap_ST_fsm_state4 = "1000";
const sc_lv<32> rdc_mont::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> rdc_mont::ap_const_lv32_1 = "1";
const sc_lv<32> rdc_mont::ap_const_lv32_2 = "10";
const sc_lv<448> rdc_mont::ap_const_lv448_lc_9 = "10001101000001111100100111000101110111001101000100011011001111110001011111110101101000000111000101001000000101011001111011110001100101110001111000001100010101100010101110101000111111110111000001011101100111101011100011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<448> rdc_mont::ap_const_lv448_lc_10 = "10001101000001111100100111000101110111001101000100011011001111110001011111110101101000000111000101001000000101011001111011110001100101110001111000001100010101100010101110101000111111110111000001011101100111101011100010111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
const sc_lv<32> rdc_mont::ap_const_lv32_1BF = "110111111";
const sc_lv<447> rdc_mont::ap_const_lv447_lc_1 = "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> rdc_mont::ap_const_lv32_1C0 = "111000000";
const sc_lv<32> rdc_mont::ap_const_lv32_37F = "1101111111";
const sc_lv<32> rdc_mont::ap_const_lv32_3 = "11";
const sc_lv<448> rdc_mont::ap_const_lv448_lc_1 = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const bool rdc_mont::ap_const_boolean_1 = true;

rdc_mont::rdc_mont(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_bc_mult_448_fu_30 = new bc_mult_448("grp_bc_mult_448_fu_30");
    grp_bc_mult_448_fu_30->ap_clk(ap_clk);
    grp_bc_mult_448_fu_30->ap_rst(ap_rst);
    grp_bc_mult_448_fu_30->ap_start(grp_bc_mult_448_fu_30_ap_start);
    grp_bc_mult_448_fu_30->ap_done(grp_bc_mult_448_fu_30_ap_done);
    grp_bc_mult_448_fu_30->ap_idle(grp_bc_mult_448_fu_30_ap_idle);
    grp_bc_mult_448_fu_30->ap_ready(grp_bc_mult_448_fu_30_ap_ready);
    grp_bc_mult_448_fu_30->a_V(grp_bc_mult_448_fu_30_a_V);
    grp_bc_mult_448_fu_30->b_V(grp_bc_mult_448_fu_30_b_V);
    grp_bc_mult_448_fu_30->ap_return(grp_bc_mult_448_fu_30_ap_return);
    eval_4_isog_add_8eOg_U41 = new eval_4_isog_add_8eOg<1,2,896,896,896>("eval_4_isog_add_8eOg_U41");
    eval_4_isog_add_8eOg_U41->clk(ap_clk);
    eval_4_isog_add_8eOg_U41->reset(ap_rst);
    eval_4_isog_add_8eOg_U41->din0(ma_V_read_reg_75);
    eval_4_isog_add_8eOg_U41->din1(grp_bc_mult_448_fu_30_ap_return);
    eval_4_isog_add_8eOg_U41->ce(grp_fu_60_ce);
    eval_4_isog_add_8eOg_U41->dout(grp_fu_60_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_grp_bc_mult_448_fu_30_a_V);
    sensitive << ( ma_trunc_V_reg_80 );
    sensitive << ( m_V_reg_85 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_bc_mult_448_fu_30_ap_start);
    sensitive << ( grp_bc_mult_448_fu_30_ap_start_reg );

    SC_METHOD(thread_grp_bc_mult_448_fu_30_b_V);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_fu_60_ce);
    sensitive << ( grp_bc_mult_448_fu_30_ap_done );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_m_V_fu_51_p3);
    sensitive << ( tmp_fu_43_p3 );

    SC_METHOD(thread_ma_trunc_V_fu_38_p1);
    sensitive << ( ma_V );

    SC_METHOD(thread_tmp_fu_43_p3);
    sensitive << ( grp_bc_mult_448_fu_30_ap_return );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( grp_bc_mult_448_fu_30_ap_done );
    sensitive << ( ap_CS_fsm_state3 );

    ap_CS_fsm = "0001";
    grp_bc_mult_448_fu_30_ap_start_reg = SC_LOGIC_0;
    ap_return_preg = "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "rdc_mont_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, ma_V, "(port)ma_V");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ma_V_read_reg_75, "ma_V_read_reg_75");
    sc_trace(mVcdFile, ma_trunc_V_fu_38_p1, "ma_trunc_V_fu_38_p1");
    sc_trace(mVcdFile, ma_trunc_V_reg_80, "ma_trunc_V_reg_80");
    sc_trace(mVcdFile, m_V_fu_51_p3, "m_V_fu_51_p3");
    sc_trace(mVcdFile, m_V_reg_85, "m_V_reg_85");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, grp_bc_mult_448_fu_30_ap_ready, "grp_bc_mult_448_fu_30_ap_ready");
    sc_trace(mVcdFile, grp_bc_mult_448_fu_30_ap_done, "grp_bc_mult_448_fu_30_ap_done");
    sc_trace(mVcdFile, grp_bc_mult_448_fu_30_ap_return, "grp_bc_mult_448_fu_30_ap_return");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, grp_bc_mult_448_fu_30_ap_start, "grp_bc_mult_448_fu_30_ap_start");
    sc_trace(mVcdFile, grp_bc_mult_448_fu_30_ap_idle, "grp_bc_mult_448_fu_30_ap_idle");
    sc_trace(mVcdFile, grp_bc_mult_448_fu_30_a_V, "grp_bc_mult_448_fu_30_a_V");
    sc_trace(mVcdFile, grp_bc_mult_448_fu_30_b_V, "grp_bc_mult_448_fu_30_b_V");
    sc_trace(mVcdFile, grp_bc_mult_448_fu_30_ap_start_reg, "grp_bc_mult_448_fu_30_ap_start_reg");
    sc_trace(mVcdFile, tmp_fu_43_p3, "tmp_fu_43_p3");
    sc_trace(mVcdFile, grp_fu_60_p2, "grp_fu_60_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, grp_fu_60_ce, "grp_fu_60_ce");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

rdc_mont::~rdc_mont() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_bc_mult_448_fu_30;
    delete eval_4_isog_add_8eOg_U41;
}

void rdc_mont::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv448_lc_1;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
            ap_return_preg = grp_fu_60_p2.read().range(895, 448);
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_bc_mult_448_fu_30_ap_start_reg = ap_const_logic_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
              esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
              esl_seteq<1,1,1>(grp_bc_mult_448_fu_30_ap_done.read(), ap_const_logic_1)))) {
            grp_bc_mult_448_fu_30_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_bc_mult_448_fu_30_ap_ready.read())) {
            grp_bc_mult_448_fu_30_ap_start_reg = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_return = grp_fu_60_p2.read().range(895, 448);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_bc_mult_448_fu_30_ap_done.read(), ap_const_logic_1))) {
        m_V_reg_85 = m_V_fu_51_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ma_V_read_reg_75 = ma_V.read();
        ma_trunc_V_reg_80 = ma_trunc_V_fu_38_p1.read();
    }
}

void rdc_mont::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void rdc_mont::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void rdc_mont::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void rdc_mont::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void rdc_mont::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void rdc_mont::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void rdc_mont::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void rdc_mont::thread_grp_bc_mult_448_fu_30_a_V() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_bc_mult_448_fu_30_a_V = m_V_reg_85.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_bc_mult_448_fu_30_a_V = ma_trunc_V_reg_80.read();
    } else {
        grp_bc_mult_448_fu_30_a_V = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void rdc_mont::thread_grp_bc_mult_448_fu_30_ap_start() {
    grp_bc_mult_448_fu_30_ap_start = grp_bc_mult_448_fu_30_ap_start_reg.read();
}

void rdc_mont::thread_grp_bc_mult_448_fu_30_b_V() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_bc_mult_448_fu_30_b_V = ap_const_lv448_lc_10;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_bc_mult_448_fu_30_b_V = ap_const_lv448_lc_9;
    } else {
        grp_bc_mult_448_fu_30_b_V = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void rdc_mont::thread_grp_fu_60_ce() {
    if (((esl_seteq<1,1,1>(grp_bc_mult_448_fu_30_ap_done.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        grp_fu_60_ce = ap_const_logic_1;
    } else {
        grp_fu_60_ce = ap_const_logic_0;
    }
}

void rdc_mont::thread_m_V_fu_51_p3() {
    m_V_fu_51_p3 = esl_concat<1,447>(tmp_fu_43_p3.read(), ap_const_lv447_lc_1);
}

void rdc_mont::thread_ma_trunc_V_fu_38_p1() {
    ma_trunc_V_fu_38_p1 = ma_V.read().range(448-1, 0);
}

void rdc_mont::thread_tmp_fu_43_p3() {
    tmp_fu_43_p3 = grp_bc_mult_448_fu_30_ap_return.read().range(447, 447);
}

void rdc_mont::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_bc_mult_448_fu_30_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(grp_bc_mult_448_fu_30_ap_done.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}

}

