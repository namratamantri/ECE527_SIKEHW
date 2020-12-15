// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mp_mul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_V,
        b_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [447:0] a_V;
input  [447:0] b_V;
output  [834:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[834:0] ap_return;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [447:0] b_V_read_reg_28;
reg   [447:0] a_V_read_reg_33;
wire    grp_bc_mult_448_fu_20_ap_start;
wire    grp_bc_mult_448_fu_20_ap_done;
wire    grp_bc_mult_448_fu_20_ap_idle;
wire    grp_bc_mult_448_fu_20_ap_ready;
wire   [834:0] grp_bc_mult_448_fu_20_ap_return;
reg    grp_bc_mult_448_fu_20_ap_start_reg;
wire    ap_CS_fsm_state2;
reg   [834:0] ap_return_preg;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_bc_mult_448_fu_20_ap_start_reg = 1'b0;
#0 ap_return_preg = 835'd0;
end

bc_mult_448 grp_bc_mult_448_fu_20(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_bc_mult_448_fu_20_ap_start),
    .ap_done(grp_bc_mult_448_fu_20_ap_done),
    .ap_idle(grp_bc_mult_448_fu_20_ap_idle),
    .ap_ready(grp_bc_mult_448_fu_20_ap_ready),
    .a_V(a_V_read_reg_33),
    .b_V(b_V_read_reg_28),
    .ap_return(grp_bc_mult_448_fu_20_ap_return)
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
        ap_return_preg <= 835'd0;
    end else begin
        if (((grp_bc_mult_448_fu_20_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_return_preg <= grp_bc_mult_448_fu_20_ap_return;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bc_mult_448_fu_20_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bc_mult_448_fu_20_ap_start_reg <= 1'b1;
        end else if ((grp_bc_mult_448_fu_20_ap_ready == 1'b1)) begin
            grp_bc_mult_448_fu_20_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_V_read_reg_33 <= a_V;
        b_V_read_reg_28 <= b_V;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_bc_mult_448_fu_20_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_return <= grp_bc_mult_448_fu_20_ap_return;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((grp_bc_mult_448_fu_20_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((grp_bc_mult_448_fu_20_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign grp_bc_mult_448_fu_20_ap_start = grp_bc_mult_448_fu_20_ap_start_reg;

endmodule //mp_mul
