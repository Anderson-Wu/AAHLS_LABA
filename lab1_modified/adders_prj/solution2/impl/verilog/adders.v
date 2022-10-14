// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="adders_adders,hls_ip_2022_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flgb2104-1-e,HLS_INPUT_CLOCK=3.250000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.049000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=34,HLS_SYN_LUT=220,HLS_VERSION=2022_1}" *)

module adders (
        ap_clk,
        ap_rst,
        in1,
        in2,
        in3,
        in4,
        in5,
        in6,
        in7,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input  [31:0] in1;
input  [31:0] in2;
input  [31:0] in3;
input  [31:0] in4;
input  [31:0] in5;
input  [31:0] in6;
input  [31:0] in7;
output  [31:0] ap_return;

wire   [31:0] add_ln64_3_fu_76_p2;
reg   [31:0] add_ln64_3_reg_111;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
wire   [31:0] add_ln64_fu_82_p2;
wire   [31:0] add_ln64_2_fu_94_p2;
wire   [31:0] add_ln64_4_fu_100_p2;
wire   [31:0] add_ln64_1_fu_88_p2;
reg   [1:0] ap_NS_fsm;
wire    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        add_ln64_3_reg_111 <= add_ln64_3_fu_76_p2;
    end
end

assign ap_ST_fsm_state1_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln64_1_fu_88_p2 = (add_ln64_fu_82_p2 + in2);

assign add_ln64_2_fu_94_p2 = (in4 + in5);

assign add_ln64_3_fu_76_p2 = (in6 + in7);

assign add_ln64_4_fu_100_p2 = (add_ln64_3_reg_111 + add_ln64_2_fu_94_p2);

assign add_ln64_fu_82_p2 = (in1 + in3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_return = (add_ln64_4_fu_100_p2 + add_ln64_1_fu_88_p2);

endmodule //adders