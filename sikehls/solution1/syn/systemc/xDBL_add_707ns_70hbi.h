// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __xDBL_add_707ns_70hbi__HH__
#define __xDBL_add_707ns_70hbi__HH__
#include "ACMP_add.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(xDBL_add_707ns_70hbi) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_add<ID, 2, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_add_U;

    SC_CTOR(xDBL_add_707ns_70hbi):  ACMP_add_U ("ACMP_add_U") {
        ACMP_add_U.clk(clk);
        ACMP_add_U.reset(reset);
        ACMP_add_U.ce(ce);
        ACMP_add_U.din0(din0);
        ACMP_add_U.din1(din1);
        ACMP_add_U.dout(dout);

    }

};

#endif //
