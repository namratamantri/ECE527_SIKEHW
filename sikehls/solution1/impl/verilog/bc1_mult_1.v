// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bc1_mult_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ta_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [112:0] ta_V;
output  [225:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [16:0] ai_0_V_fu_242_p1;
reg   [16:0] ai_0_V_reg_700;
reg   [16:0] ai_1_V_reg_706;
reg   [16:0] ai_2_V_reg_712;
wire   [16:0] ai_3_V_fu_266_p4;
reg   [16:0] ai_3_V_reg_718;
reg   [16:0] ai_4_V_reg_723;
reg   [16:0] ai_5_V_reg_729;
wire  signed [16:0] ai_6_V_fu_306_p1;
reg  signed [16:0] ai_6_V_reg_735;
wire   [33:0] zext_ln215_28_fu_310_p1;
reg   [33:0] zext_ln215_28_reg_741;
wire   [3:0] zext_ln137_fu_319_p1;
reg   [3:0] zext_ln137_reg_746;
wire    ap_CS_fsm_state2;
wire   [2:0] i_fu_329_p2;
reg   [2:0] i_reg_757;
wire   [16:0] tmp_1_fu_335_p9;
reg   [16:0] tmp_1_reg_762;
wire   [0:0] icmp_ln137_fu_323_p2;
wire   [225:0] add_ln68_fu_348_p2;
reg   [225:0] add_ln68_reg_767;
wire   [225:0] add_ln68_36_fu_354_p2;
reg   [225:0] add_ln68_36_reg_772;
wire   [225:0] add_ln68_37_fu_360_p2;
reg   [225:0] add_ln68_37_reg_777;
wire   [33:0] zext_ln215_25_fu_366_p1;
reg   [33:0] zext_ln215_25_reg_782;
wire    ap_CS_fsm_state3;
wire   [223:0] zext_ln78_fu_369_p1;
reg   [223:0] zext_ln78_reg_789;
wire   [0:0] icmp_ln215_fu_376_p2;
reg   [0:0] icmp_ln215_reg_794;
wire    ap_CS_fsm_state4;
wire   [33:0] mul_ln1352_fu_678_p2;
reg   [33:0] mul_ln1352_reg_801;
wire   [3:0] add_ln142_fu_392_p2;
reg   [3:0] add_ln142_reg_806;
wire   [0:0] icmp_ln215_13_fu_407_p2;
reg   [0:0] icmp_ln215_13_reg_812;
wire   [33:0] mul_ln1352_19_fu_683_p2;
reg   [33:0] mul_ln1352_19_reg_819;
wire   [3:0] add_ln142_1_fu_423_p2;
reg   [3:0] add_ln142_1_reg_824;
wire   [0:0] icmp_ln215_14_fu_438_p2;
reg   [0:0] icmp_ln215_14_reg_830;
wire   [33:0] mul_ln1352_20_fu_688_p2;
reg   [33:0] mul_ln1352_20_reg_837;
wire   [3:0] add_ln142_2_fu_454_p2;
reg   [3:0] add_ln142_2_reg_842;
wire   [225:0] sum_0_V_fu_489_p2;
reg   [225:0] sum_0_V_reg_848;
wire    ap_CS_fsm_state5;
wire   [225:0] sum_1_V_fu_525_p2;
reg   [225:0] sum_1_V_reg_854;
wire   [225:0] sum_2_V_fu_561_p2;
reg   [225:0] sum_2_V_reg_860;
wire   [225:0] sum_4_V_13_fu_567_p3;
reg   [225:0] sum_4_V_13_reg_866;
wire    ap_CS_fsm_state6;
wire   [225:0] sum_4_V_14_fu_573_p3;
reg   [225:0] sum_4_V_14_reg_872;
wire   [225:0] sum_5_V_13_fu_579_p3;
reg   [225:0] sum_5_V_13_reg_878;
wire   [225:0] sum_5_V_14_fu_585_p3;
reg   [225:0] sum_5_V_14_reg_884;
wire   [225:0] sum_6_V_13_fu_591_p3;
reg   [225:0] sum_6_V_13_reg_890;
wire   [225:0] sum_6_V_14_fu_597_p3;
reg   [225:0] sum_6_V_14_reg_896;
wire   [3:0] add_ln142_3_fu_619_p2;
reg   [3:0] add_ln142_3_reg_905;
wire   [0:0] icmp_ln139_fu_613_p2;
wire   [2:0] xor_ln139_fu_624_p2;
reg   [2:0] xor_ln139_reg_911;
wire   [225:0] sum_3_V_fu_649_p2;
reg   [225:0] sum_3_V_reg_916;
wire    ap_CS_fsm_state7;
wire   [225:0] add_ln68_35_fu_659_p2;
reg   [225:0] add_ln68_35_reg_921;
wire    ap_CS_fsm_state9;
wire   [225:0] add_ln68_38_fu_664_p2;
reg   [225:0] add_ln68_38_reg_926;
reg   [225:0] sum_V_0_0_reg_78;
reg   [225:0] sum_V_1_0_reg_90;
reg   [225:0] sum_V_2_0_reg_102;
reg   [225:0] sum_V_4_0_reg_114;
reg   [225:0] sum_V_5_0_reg_126;
reg   [225:0] sum_V_6_0_reg_138;
reg   [2:0] i4_0_reg_150;
reg   [2:0] j_0_0_reg_161;
wire    ap_CS_fsm_state8;
reg   [225:0] sum_V_0_1_reg_173;
reg   [225:0] sum_V_1_1_reg_184;
reg   [225:0] sum_V_2_1_reg_195;
reg   [225:0] sum_V_4_1_reg_206;
reg   [225:0] sum_V_5_1_reg_217;
reg   [225:0] sum_V_6_1_reg_228;
reg   [225:0] sum_3_V_7_fu_68;
wire   [10:0] tmp_fu_296_p4;
wire   [33:0] mul_ln1352_21_fu_672_p2;
wire   [16:0] select_ln215_fu_382_p3;
wire   [3:0] zext_ln139_fu_372_p1;
wire   [2:0] or_ln139_fu_397_p2;
wire   [16:0] select_ln215_13_fu_413_p3;
wire   [3:0] zext_ln139_1_fu_403_p1;
wire   [2:0] or_ln139_1_fu_428_p2;
wire   [16:0] select_ln215_14_fu_444_p3;
wire   [3:0] zext_ln139_2_fu_434_p1;
wire   [7:0] add_ln142_4_fu_462_p3;
wire   [203:0] zext_ln142_fu_459_p1;
wire   [203:0] zext_ln1503_fu_468_p1;
wire   [203:0] shl_ln1503_fu_472_p2;
wire   [225:0] select_ln700_fu_482_p3;
wire   [225:0] zext_ln700_fu_478_p1;
wire   [7:0] add_ln142_5_fu_498_p3;
wire   [223:0] zext_ln78_1_fu_495_p1;
wire   [223:0] zext_ln1503_1_fu_504_p1;
wire   [223:0] shl_ln1503_1_fu_508_p2;
wire   [225:0] select_ln700_51_fu_518_p3;
wire  signed [225:0] sext_ln700_1_fu_514_p1;
wire   [7:0] add_ln142_6_fu_534_p3;
wire   [223:0] zext_ln78_2_fu_531_p1;
wire   [223:0] zext_ln1503_2_fu_540_p1;
wire   [223:0] shl_ln1503_2_fu_544_p2;
wire   [225:0] select_ln700_54_fu_554_p3;
wire  signed [225:0] sext_ln700_2_fu_550_p1;
wire   [2:0] or_ln139_2_fu_603_p2;
wire   [3:0] zext_ln139_3_fu_609_p1;
wire   [7:0] add_ln142_7_fu_630_p3;
wire   [223:0] zext_ln1503_3_fu_636_p1;
wire   [223:0] shl_ln1503_3_fu_640_p2;
wire  signed [225:0] sext_ln700_fu_645_p1;
wire    ap_CS_fsm_state10;
wire   [16:0] mul_ln1352_21_fu_672_p0;
wire   [16:0] mul_ln1352_21_fu_672_p1;
wire   [16:0] mul_ln1352_fu_678_p0;
wire   [16:0] mul_ln1352_fu_678_p1;
wire   [16:0] mul_ln1352_19_fu_683_p0;
wire   [16:0] mul_ln1352_19_fu_683_p1;
wire   [16:0] mul_ln1352_20_fu_688_p0;
wire   [16:0] mul_ln1352_20_fu_688_p1;
reg   [9:0] ap_NS_fsm;
wire   [33:0] mul_ln1352_19_fu_683_p00;
wire   [33:0] mul_ln1352_20_fu_688_p10;
wire   [33:0] mul_ln1352_21_fu_672_p10;
wire   [33:0] mul_ln1352_fu_678_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
end

mp_mul_mux_73_17_dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 17 ),
    .din2_WIDTH( 17 ),
    .din3_WIDTH( 17 ),
    .din4_WIDTH( 17 ),
    .din5_WIDTH( 17 ),
    .din6_WIDTH( 17 ),
    .din7_WIDTH( 3 ),
    .dout_WIDTH( 17 ))
mp_mul_mux_73_17_dEe_U35(
    .din0(ai_0_V_reg_700),
    .din1(ai_1_V_reg_706),
    .din2(ai_2_V_reg_712),
    .din3(ai_3_V_reg_718),
    .din4(ai_4_V_reg_723),
    .din5(ai_5_V_reg_729),
    .din6(ai_6_V_reg_735),
    .din7(i4_0_reg_150),
    .dout(tmp_1_fu_335_p9)
);

mp_mul_mul_mul_17eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 34 ))
mp_mul_mul_mul_17eOg_U36(
    .din0(mul_ln1352_21_fu_672_p0),
    .din1(mul_ln1352_21_fu_672_p1),
    .dout(mul_ln1352_21_fu_672_p2)
);

mp_mul_mul_mul_17eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 34 ))
mp_mul_mul_mul_17eOg_U37(
    .din0(mul_ln1352_fu_678_p0),
    .din1(mul_ln1352_fu_678_p1),
    .dout(mul_ln1352_fu_678_p2)
);

mp_mul_mul_mul_17eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 34 ))
mp_mul_mul_mul_17eOg_U38(
    .din0(mul_ln1352_19_fu_683_p0),
    .din1(mul_ln1352_19_fu_683_p1),
    .dout(mul_ln1352_19_fu_683_p2)
);

mp_mul_mul_mul_17eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 34 ))
mp_mul_mul_mul_17eOg_U39(
    .din0(mul_ln1352_20_fu_688_p0),
    .din1(mul_ln1352_20_fu_688_p1),
    .dout(mul_ln1352_20_fu_688_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        i4_0_reg_150 <= i_reg_757;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i4_0_reg_150 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_0_0_reg_161 <= xor_ln139_reg_911;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        j_0_0_reg_161 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_3_V_7_fu_68 <= sum_3_V_reg_916;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sum_3_V_7_fu_68 <= 226'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        sum_V_0_0_reg_78 <= sum_4_V_13_fu_567_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sum_V_0_0_reg_78 <= 226'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_V_0_1_reg_173 <= sum_4_V_13_reg_866;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_V_0_1_reg_173 <= sum_V_0_0_reg_78;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        sum_V_1_0_reg_90 <= sum_5_V_13_fu_579_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sum_V_1_0_reg_90 <= 226'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_V_1_1_reg_184 <= sum_5_V_13_reg_878;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_V_1_1_reg_184 <= sum_V_1_0_reg_90;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        sum_V_2_0_reg_102 <= sum_6_V_13_fu_591_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sum_V_2_0_reg_102 <= 226'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_V_2_1_reg_195 <= sum_6_V_13_reg_890;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_V_2_1_reg_195 <= sum_V_2_0_reg_102;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        sum_V_4_0_reg_114 <= sum_4_V_14_fu_573_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sum_V_4_0_reg_114 <= 226'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_V_4_1_reg_206 <= sum_4_V_14_reg_872;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_V_4_1_reg_206 <= sum_V_4_0_reg_114;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        sum_V_5_0_reg_126 <= sum_5_V_14_fu_585_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sum_V_5_0_reg_126 <= 226'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_V_5_1_reg_217 <= sum_5_V_14_reg_884;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_V_5_1_reg_217 <= sum_V_5_0_reg_126;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        sum_V_6_0_reg_138 <= sum_6_V_14_fu_597_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        sum_V_6_0_reg_138 <= 226'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sum_V_6_1_reg_228 <= sum_6_V_14_reg_896;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_V_6_1_reg_228 <= sum_V_6_0_reg_138;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln142_1_reg_824 <= add_ln142_1_fu_423_p2;
        add_ln142_2_reg_842 <= add_ln142_2_fu_454_p2;
        add_ln142_reg_806 <= add_ln142_fu_392_p2;
        icmp_ln215_13_reg_812 <= icmp_ln215_13_fu_407_p2;
        icmp_ln215_14_reg_830 <= icmp_ln215_14_fu_438_p2;
        icmp_ln215_reg_794 <= icmp_ln215_fu_376_p2;
        mul_ln1352_19_reg_819 <= mul_ln1352_19_fu_683_p2;
        mul_ln1352_20_reg_837 <= mul_ln1352_20_fu_688_p2;
        mul_ln1352_reg_801 <= mul_ln1352_fu_678_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln139_fu_613_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln142_3_reg_905 <= add_ln142_3_fu_619_p2;
        xor_ln139_reg_911 <= xor_ln139_fu_624_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln68_35_reg_921 <= add_ln68_35_fu_659_p2;
        add_ln68_38_reg_926 <= add_ln68_38_fu_664_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln137_fu_323_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        add_ln68_36_reg_772 <= add_ln68_36_fu_354_p2;
        add_ln68_37_reg_777 <= add_ln68_37_fu_360_p2;
        add_ln68_reg_767 <= add_ln68_fu_348_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        ai_0_V_reg_700 <= ai_0_V_fu_242_p1;
        ai_1_V_reg_706 <= {{ta_V[33:17]}};
        ai_2_V_reg_712 <= {{ta_V[50:34]}};
        ai_3_V_reg_718 <= {{ta_V[67:51]}};
        ai_4_V_reg_723 <= {{ta_V[84:68]}};
        ai_5_V_reg_729 <= {{ta_V[101:85]}};
        ai_6_V_reg_735 <= ai_6_V_fu_306_p1;
        zext_ln215_28_reg_741[16 : 0] <= zext_ln215_28_fu_310_p1[16 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_757 <= i_fu_329_p2;
        zext_ln137_reg_746[2 : 0] <= zext_ln137_fu_319_p1[2 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        sum_0_V_reg_848 <= sum_0_V_fu_489_p2;
        sum_1_V_reg_854 <= sum_1_V_fu_525_p2;
        sum_2_V_reg_860 <= sum_2_V_fu_561_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        sum_3_V_reg_916 <= sum_3_V_fu_649_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sum_4_V_13_reg_866 <= sum_4_V_13_fu_567_p3;
        sum_4_V_14_reg_872 <= sum_4_V_14_fu_573_p3;
        sum_5_V_13_reg_878 <= sum_5_V_13_fu_579_p3;
        sum_5_V_14_reg_884 <= sum_5_V_14_fu_585_p3;
        sum_6_V_13_reg_890 <= sum_6_V_13_fu_591_p3;
        sum_6_V_14_reg_896 <= sum_6_V_14_fu_597_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln137_fu_323_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_1_reg_762 <= tmp_1_fu_335_p9;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        zext_ln215_25_reg_782[16 : 0] <= zext_ln215_25_fu_366_p1[16 : 0];
        zext_ln78_reg_789[33 : 0] <= zext_ln78_fu_369_p1[33 : 0];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln137_fu_323_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln139_fu_613_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln142_1_fu_423_p2 = (zext_ln137_reg_746 + zext_ln139_1_fu_403_p1);

assign add_ln142_2_fu_454_p2 = (zext_ln139_2_fu_434_p1 + zext_ln137_reg_746);

assign add_ln142_3_fu_619_p2 = (zext_ln137_reg_746 + zext_ln139_3_fu_609_p1);

assign add_ln142_4_fu_462_p3 = {{add_ln142_reg_806}, {add_ln142_reg_806}};

assign add_ln142_5_fu_498_p3 = {{add_ln142_1_reg_824}, {add_ln142_1_reg_824}};

assign add_ln142_6_fu_534_p3 = {{add_ln142_2_reg_842}, {add_ln142_2_reg_842}};

assign add_ln142_7_fu_630_p3 = {{add_ln142_3_reg_905}, {add_ln142_3_reg_905}};

assign add_ln142_fu_392_p2 = (zext_ln137_reg_746 + zext_ln139_fu_372_p1);

assign add_ln68_35_fu_659_p2 = (add_ln68_reg_767 + sum_V_1_0_reg_90);

assign add_ln68_36_fu_354_p2 = (sum_3_V_7_fu_68 + sum_V_4_0_reg_114);

assign add_ln68_37_fu_360_p2 = (sum_V_5_0_reg_126 + sum_V_6_0_reg_138);

assign add_ln68_38_fu_664_p2 = (add_ln68_37_reg_777 + add_ln68_36_reg_772);

assign add_ln68_fu_348_p2 = (sum_V_0_0_reg_78 + sum_V_2_0_reg_102);

assign ai_0_V_fu_242_p1 = ta_V[16:0];

assign ai_3_V_fu_266_p4 = {{ta_V[67:51]}};

assign ai_6_V_fu_306_p1 = $signed(tmp_fu_296_p4);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = (add_ln68_38_reg_926 + add_ln68_35_reg_921);

assign i_fu_329_p2 = (i4_0_reg_150 + 3'd1);

assign icmp_ln137_fu_323_p2 = ((i4_0_reg_150 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln139_fu_613_p2 = ((or_ln139_2_fu_603_p2 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln215_13_fu_407_p2 = ((or_ln139_fu_397_p2 == 3'd1) ? 1'b1 : 1'b0);

assign icmp_ln215_14_fu_438_p2 = ((or_ln139_1_fu_428_p2 == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln215_fu_376_p2 = ((j_0_0_reg_161 == 3'd0) ? 1'b1 : 1'b0);

assign mul_ln1352_19_fu_683_p0 = mul_ln1352_19_fu_683_p00;

assign mul_ln1352_19_fu_683_p00 = select_ln215_13_fu_413_p3;

assign mul_ln1352_19_fu_683_p1 = zext_ln215_25_reg_782;

assign mul_ln1352_20_fu_688_p0 = zext_ln215_25_reg_782;

assign mul_ln1352_20_fu_688_p1 = mul_ln1352_20_fu_688_p10;

assign mul_ln1352_20_fu_688_p10 = select_ln215_14_fu_444_p3;

assign mul_ln1352_21_fu_672_p0 = zext_ln215_28_reg_741;

assign mul_ln1352_21_fu_672_p1 = mul_ln1352_21_fu_672_p10;

assign mul_ln1352_21_fu_672_p10 = tmp_1_reg_762;

assign mul_ln1352_fu_678_p0 = mul_ln1352_fu_678_p00;

assign mul_ln1352_fu_678_p00 = select_ln215_fu_382_p3;

assign mul_ln1352_fu_678_p1 = zext_ln215_25_reg_782;

assign or_ln139_1_fu_428_p2 = (j_0_0_reg_161 | 3'd2);

assign or_ln139_2_fu_603_p2 = (j_0_0_reg_161 | 3'd3);

assign or_ln139_fu_397_p2 = (j_0_0_reg_161 | 3'd1);

assign select_ln215_13_fu_413_p3 = ((icmp_ln215_13_fu_407_p2[0:0] === 1'b1) ? ai_1_V_reg_706 : ai_5_V_reg_729);

assign select_ln215_14_fu_444_p3 = ((icmp_ln215_14_fu_438_p2[0:0] === 1'b1) ? ai_2_V_reg_712 : ai_6_V_reg_735);

assign select_ln215_fu_382_p3 = ((icmp_ln215_fu_376_p2[0:0] === 1'b1) ? ai_0_V_reg_700 : ai_4_V_reg_723);

assign select_ln700_51_fu_518_p3 = ((icmp_ln215_13_reg_812[0:0] === 1'b1) ? sum_V_1_1_reg_184 : sum_V_5_1_reg_217);

assign select_ln700_54_fu_554_p3 = ((icmp_ln215_14_reg_830[0:0] === 1'b1) ? sum_V_2_1_reg_195 : sum_V_6_1_reg_228);

assign select_ln700_fu_482_p3 = ((icmp_ln215_reg_794[0:0] === 1'b1) ? sum_V_0_1_reg_173 : sum_V_4_1_reg_206);

assign sext_ln700_1_fu_514_p1 = $signed(shl_ln1503_1_fu_508_p2);

assign sext_ln700_2_fu_550_p1 = $signed(shl_ln1503_2_fu_544_p2);

assign sext_ln700_fu_645_p1 = $signed(shl_ln1503_3_fu_640_p2);

assign shl_ln1503_1_fu_508_p2 = zext_ln78_1_fu_495_p1 << zext_ln1503_1_fu_504_p1;

assign shl_ln1503_2_fu_544_p2 = zext_ln78_2_fu_531_p1 << zext_ln1503_2_fu_540_p1;

assign shl_ln1503_3_fu_640_p2 = zext_ln78_reg_789 << zext_ln1503_3_fu_636_p1;

assign shl_ln1503_fu_472_p2 = zext_ln142_fu_459_p1 << zext_ln1503_fu_468_p1;

assign sum_0_V_fu_489_p2 = (select_ln700_fu_482_p3 + zext_ln700_fu_478_p1);

assign sum_1_V_fu_525_p2 = ($signed(select_ln700_51_fu_518_p3) + $signed(sext_ln700_1_fu_514_p1));

assign sum_2_V_fu_561_p2 = ($signed(select_ln700_54_fu_554_p3) + $signed(sext_ln700_2_fu_550_p1));

assign sum_3_V_fu_649_p2 = ($signed(sext_ln700_fu_645_p1) + $signed(sum_3_V_7_fu_68));

assign sum_4_V_13_fu_567_p3 = ((icmp_ln215_reg_794[0:0] === 1'b1) ? sum_0_V_reg_848 : sum_V_0_1_reg_173);

assign sum_4_V_14_fu_573_p3 = ((icmp_ln215_reg_794[0:0] === 1'b1) ? sum_V_4_1_reg_206 : sum_0_V_reg_848);

assign sum_5_V_13_fu_579_p3 = ((icmp_ln215_13_reg_812[0:0] === 1'b1) ? sum_1_V_reg_854 : sum_V_1_1_reg_184);

assign sum_5_V_14_fu_585_p3 = ((icmp_ln215_13_reg_812[0:0] === 1'b1) ? sum_V_5_1_reg_217 : sum_1_V_reg_854);

assign sum_6_V_13_fu_591_p3 = ((icmp_ln215_14_reg_830[0:0] === 1'b1) ? sum_2_V_reg_860 : sum_V_2_1_reg_195);

assign sum_6_V_14_fu_597_p3 = ((icmp_ln215_14_reg_830[0:0] === 1'b1) ? sum_V_6_1_reg_228 : sum_2_V_reg_860);

assign tmp_fu_296_p4 = {{ta_V[112:102]}};

assign xor_ln139_fu_624_p2 = (j_0_0_reg_161 ^ 3'd4);

assign zext_ln137_fu_319_p1 = i4_0_reg_150;

assign zext_ln139_1_fu_403_p1 = or_ln139_fu_397_p2;

assign zext_ln139_2_fu_434_p1 = or_ln139_1_fu_428_p2;

assign zext_ln139_3_fu_609_p1 = or_ln139_2_fu_603_p2;

assign zext_ln139_fu_372_p1 = j_0_0_reg_161;

assign zext_ln142_fu_459_p1 = mul_ln1352_reg_801;

assign zext_ln1503_1_fu_504_p1 = add_ln142_5_fu_498_p3;

assign zext_ln1503_2_fu_540_p1 = add_ln142_6_fu_534_p3;

assign zext_ln1503_3_fu_636_p1 = add_ln142_7_fu_630_p3;

assign zext_ln1503_fu_468_p1 = add_ln142_4_fu_462_p3;

assign zext_ln215_25_fu_366_p1 = tmp_1_reg_762;

assign zext_ln215_28_fu_310_p1 = ai_3_V_fu_266_p4;

assign zext_ln700_fu_478_p1 = shl_ln1503_fu_472_p2;

assign zext_ln78_1_fu_495_p1 = mul_ln1352_19_reg_819;

assign zext_ln78_2_fu_531_p1 = mul_ln1352_20_reg_837;

assign zext_ln78_fu_369_p1 = mul_ln1352_21_fu_672_p2;

always @ (posedge ap_clk) begin
    zext_ln215_28_reg_741[33:17] <= 17'b00000000000000000;
    zext_ln137_reg_746[3] <= 1'b0;
    zext_ln215_25_reg_782[33:17] <= 17'b00000000000000000;
    zext_ln78_reg_789[223:34] <= 190'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end

endmodule //bc1_mult_1
