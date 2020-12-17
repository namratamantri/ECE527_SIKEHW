// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="rdc_mont,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.978000,HLS_SYN_LAT=67,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=70,HLS_SYN_FF=24707,HLS_SYN_LUT=4256,HLS_VERSION=2019_1}" *)

module rdc_mont (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ma_V,
        mc_V,
        mc_V_ap_vld
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [895:0] ma_V;
output  [447:0] mc_V;
output   mc_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg mc_V_ap_vld;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [447:0] ma_trunc_V_fu_55_p1;
reg   [447:0] ma_trunc_V_reg_102;
wire   [447:0] m_V_fu_68_p3;
reg   [447:0] m_V_reg_107;
wire    ap_CS_fsm_state2;
wire    grp_bc_mult_448_fu_47_ap_ready;
wire    grp_bc_mult_448_fu_47_ap_done;
wire    ap_CS_fsm_state3;
wire    grp_bc_mult_448_fu_47_ap_start;
wire    grp_bc_mult_448_fu_47_ap_idle;
reg   [447:0] grp_bc_mult_448_fu_47_a_V;
reg   [434:0] grp_bc_mult_448_fu_47_b_V;
wire   [834:0] grp_bc_mult_448_fu_47_ap_return;
reg    grp_bc_mult_448_fu_47_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_fu_60_p3;
wire   [895:0] grp_fu_81_p1;
wire   [895:0] grp_fu_81_p2;
reg    grp_fu_81_ce;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_bc_mult_448_fu_47_ap_start_reg = 1'b0;
end

bc_mult_448 grp_bc_mult_448_fu_47(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_bc_mult_448_fu_47_ap_start),
    .ap_done(grp_bc_mult_448_fu_47_ap_done),
    .ap_idle(grp_bc_mult_448_fu_47_ap_idle),
    .ap_ready(grp_bc_mult_448_fu_47_ap_ready),
    .a_V(grp_bc_mult_448_fu_47_a_V),
    .b_V(grp_bc_mult_448_fu_47_b_V),
    .ap_return(grp_bc_mult_448_fu_47_ap_return)
);

rdc_mont_add_896nmb6 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 896 ),
    .din1_WIDTH( 896 ),
    .dout_WIDTH( 896 ))
rdc_mont_add_896nmb6_U42(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ma_V),
    .din1(grp_fu_81_p1),
    .ce(grp_fu_81_ce),
    .dout(grp_fu_81_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bc_mult_448_fu_47_ap_start_reg <= 1'b0;
    end else begin
        if ((((grp_bc_mult_448_fu_47_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_bc_mult_448_fu_47_ap_start_reg <= 1'b1;
        end else if ((grp_bc_mult_448_fu_47_ap_ready == 1'b1)) begin
            grp_bc_mult_448_fu_47_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_bc_mult_448_fu_47_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_V_reg_107[447] <= m_V_fu_68_p3[447];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ma_trunc_V_reg_102 <= ma_trunc_V_fu_55_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_bc_mult_448_fu_47_a_V = m_V_reg_107;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_bc_mult_448_fu_47_a_V = ma_trunc_V_reg_102;
    end else begin
        grp_bc_mult_448_fu_47_a_V = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_bc_mult_448_fu_47_b_V = 435'd24439423661345221551909145011457493619085780243761596511325807336205221239331976725970216671828618445898719026692884939342314733567;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_bc_mult_448_fu_47_b_V = 435'd24439423661345221551909145011457493619085780243761596511325807336205221239331976725970216671828618445898719026692884939342314733568;
    end else begin
        grp_bc_mult_448_fu_47_b_V = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((grp_bc_mult_448_fu_47_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        grp_fu_81_ce = 1'b1;
    end else begin
        grp_fu_81_ce = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mc_V_ap_vld = 1'b1;
    end else begin
        mc_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_bc_mult_448_fu_47_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_bc_mult_448_fu_47_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign grp_bc_mult_448_fu_47_ap_start = grp_bc_mult_448_fu_47_ap_start_reg;

assign grp_fu_81_p1 = grp_bc_mult_448_fu_47_ap_return;

assign m_V_fu_68_p3 = {{tmp_fu_60_p3}, {447'd0}};

assign ma_trunc_V_fu_55_p1 = ma_V[447:0];

assign mc_V = {{grp_fu_81_p2[895:448]}};

assign tmp_fu_60_p3 = grp_bc_mult_448_fu_47_ap_return[32'd447];

always @ (posedge ap_clk) begin
    m_V_reg_107[446:0] <= 447'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end

endmodule //rdc_mont
