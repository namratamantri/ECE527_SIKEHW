// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __eval_4_isog_sub_8g8j__HH__
#define __eval_4_isog_sub_8g8j__HH__
#include "ACMP_sub.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(eval_4_isog_sub_8g8j) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_sub<ID, 2, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_sub_U;

    SC_CTOR(eval_4_isog_sub_8g8j):  ACMP_sub_U ("ACMP_sub_U") {
        ACMP_sub_U.clk(clk);
        ACMP_sub_U.reset(reset);
        ACMP_sub_U.ce(ce);
        ACMP_sub_U.din0(din0);
        ACMP_sub_U.din1(din1);
        ACMP_sub_U.dout(dout);

    }

};

#endif //
