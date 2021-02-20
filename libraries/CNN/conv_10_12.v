// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv_10_12,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.223500,HLS_SYN_LAT=42098688,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=1,HLS_SYN_FF=126,HLS_SYN_LUT=857}" *)

module conv_10_12 (
        ap_clk,
        ap_rst,
        input_1_V_V_dout,
        input_1_V_V_empty_n,
        input_1_V_V_read,
        input_2_V_V_dout,
        input_2_V_V_empty_n,
        input_2_V_V_read,
        output_1_V_V_din,
        output_1_V_V_full_n,
        output_1_V_V_write,
        output_2_V_V_din,
        output_2_V_V_full_n,
        output_2_V_V_write,
        weight_1_V_V_dout,
        weight_1_V_V_empty_n,
        weight_1_V_V_read,
        weight_2_V_V_dout,
        weight_2_V_V_empty_n,
        weight_2_V_V_read,
        bias_1_V_V_dout,
        bias_1_V_V_empty_n,
        bias_1_V_V_read,
        bias_2_V_V_dout,
        bias_2_V_V_empty_n,
        bias_2_V_V_read
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp0_stage0 = 8'd16;
parameter    ap_ST_fsm_state7 = 8'd32;
parameter    ap_ST_fsm_state8 = 8'd64;
parameter    ap_ST_fsm_state9 = 8'd128;

input   ap_clk;
input   ap_rst;
input  [15:0] input_1_V_V_dout;
input   input_1_V_V_empty_n;
output   input_1_V_V_read;
input  [15:0] input_2_V_V_dout;
input   input_2_V_V_empty_n;
output   input_2_V_V_read;
output  [15:0] output_1_V_V_din;
input   output_1_V_V_full_n;
output   output_1_V_V_write;
output  [15:0] output_2_V_V_din;
input   output_2_V_V_full_n;
output   output_2_V_V_write;
input  [7:0] weight_1_V_V_dout;
input   weight_1_V_V_empty_n;
output   weight_1_V_V_read;
input  [7:0] weight_2_V_V_dout;
input   weight_2_V_V_empty_n;
output   weight_2_V_V_read;
input  [7:0] bias_1_V_V_dout;
input   bias_1_V_V_empty_n;
output   bias_1_V_V_read;
input  [7:0] bias_2_V_V_dout;
input   bias_2_V_V_empty_n;
output   bias_2_V_V_read;

reg input_1_V_V_read;
reg input_2_V_V_read;
reg output_1_V_V_write;
reg output_2_V_V_write;
reg weight_1_V_V_read;
reg weight_2_V_V_read;
reg bias_1_V_V_read;
reg bias_2_V_V_read;

reg    input_1_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state4;
reg   [0:0] tmp_reg_832;
reg    input_2_V_V_blk_n;
reg    output_1_V_V_blk_n;
wire    ap_CS_fsm_state9;
reg    output_2_V_V_blk_n;
reg    weight_1_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    weight_2_V_V_blk_n;
reg    bias_1_V_V_blk_n;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond4_fu_491_p2;
reg    bias_2_V_V_blk_n;
reg   [4:0] pout_reg_422;
wire   [1:0] branch_mid2_fu_471_p3;
reg   [1:0] branch_mid2_reg_827;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_479_p2;
wire   [12:0] indvar_flatten_next1_fu_485_p2;
reg   [12:0] indvar_flatten_next1_reg_836;
wire   [5:0] init_idx_1_fu_497_p2;
reg    ap_predicate_op51_read_state3;
reg    ap_predicate_op58_read_state3;
reg    ap_block_state3;
wire   [7:0] indvar_flatten_next2_fu_539_p2;
reg   [7:0] indvar_flatten_next2_reg_849;
reg    ap_block_state4;
wire   [4:0] pout_1_fu_545_p2;
reg   [4:0] pout_1_reg_854;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
reg   [4:0] out_val_V_addr_3_reg_869;
wire   [0:0] exitcond8_fu_556_p2;
reg   [0:0] exitcond8_reg_875;
wire   [5:0] wr_idx_1_fu_771_p2;
reg   [5:0] wr_idx_1_reg_885;
wire    ap_CS_fsm_state8;
wire   [0:0] exitcond_fu_765_p2;
wire   [1:0] branch_1_fu_782_p2;
wire   [8:0] indvar_flatten_next_fu_793_p3;
wire   [0:0] exitcond3_fu_801_p2;
wire   [0:0] exitcond_flatten_fu_807_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter1;
reg   [4:0] out_val_V_address0;
reg    out_val_V_ce0;
reg    out_val_V_we0;
reg   [15:0] out_val_V_d0;
wire   [15:0] out_val_V_q0;
reg   [4:0] out_val_V_address1;
reg    out_val_V_ce1;
reg    out_val_V_we1;
wire   [15:0] out_val_V_d1;
wire   [15:0] out_val_V_q1;
reg   [0:0] exitcond_flatten3_reg_329;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond_flatten1_fu_813_p2;
reg   [0:0] exitcond1_reg_341;
reg   [1:0] branch_reg_352;
reg   [8:0] indvar_flatten_reg_363;
reg   [12:0] indvar_flatten1_reg_375;
reg   [5:0] init_idx_reg_387;
reg   [7:0] indvar_flatten2_reg_398;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond_flatten2_fu_759_p2;
reg  signed [15:0] p_s_reg_410;
reg   [4:0] ap_phi_mux_pout_phi_fu_426_p4;
wire   [7:0] ap_phi_reg_pp0_iter0_p_1_reg_433;
reg  signed [7:0] ap_phi_reg_pp0_iter1_p_1_reg_433;
reg   [5:0] wr_idx_reg_442;
reg    ap_block_state9;
wire   [63:0] tmp_6_fu_503_p1;
wire   [63:0] tmp_2_fu_521_p1;
wire   [63:0] tmp_5_fu_551_p1;
wire   [63:0] tmp_s_fu_777_p1;
wire  signed [15:0] tmp_8_cast_fu_516_p1;
wire  signed [15:0] tmp_4_cast_fu_534_p1;
wire   [0:0] not_exitcond_flatten_fu_453_p2;
wire   [0:0] exitcond3_mid_fu_459_p2;
wire   [0:0] tmp_1_fu_465_p2;
wire   [8:0] tmp_8_fu_508_p3;
wire   [8:0] tmp_4_fu_526_p3;
wire   [22:0] tmp_7_fu_570_p3;
wire  signed [23:0] tmp_10_cast_fu_578_p1;
wire  signed [23:0] p_Val2_3_fu_819_p2;
(* use_dsp48 = "no" *) wire   [23:0] p_Val2_4_fu_582_p2;
wire   [0:0] tmp_13_fu_605_p3;
wire   [15:0] p_Val2_5_fu_595_p4;
wire   [15:0] tmp_9_fu_612_p1;
wire   [15:0] p_Val2_6_fu_624_p2;
wire   [0:0] newsignbit_fu_630_p3;
wire   [0:0] tmp_14_fu_616_p3;
wire   [0:0] tmp_10_fu_638_p2;
wire   [0:0] p_Result_2_not_fu_650_p2;
wire   [0:0] signbit_fu_587_p3;
wire   [0:0] not_carry_fu_656_p2;
wire   [0:0] carry_fu_644_p2;
wire   [0:0] deleted_zeros_fu_662_p2;
wire   [0:0] p_not_i_i_fu_680_p2;
wire   [0:0] brmerge_i_i_fu_686_p2;
wire   [0:0] tmp_11_fu_668_p2;
wire   [0:0] p_38_i_i_fu_674_p2;
wire   [0:0] brmerge40_demorgan_i_fu_698_p2;
wire   [0:0] tmp1_demorgan_fu_704_p2;
wire   [0:0] underflow_fu_710_p2;
wire   [0:0] overflow_fu_692_p2;
wire   [0:0] tmp2_fu_722_p2;
wire   [0:0] brmerge_i_i_i_fu_716_p2;
wire   [0:0] underflow_not_fu_728_p2;
wire   [15:0] p_Val2_6_mux_fu_734_p3;
wire   [15:0] p_Val2_6_7_fu_742_p3;
wire   [8:0] indvar_flatten18_op_fu_787_p2;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_153;
reg    ap_condition_139;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

conv_10_12_out_vabkb #(
    .DataWidth( 16 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
out_val_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(out_val_V_address0),
    .ce0(out_val_V_ce0),
    .we0(out_val_V_we0),
    .d0(out_val_V_d0),
    .q0(out_val_V_q0),
    .address1(out_val_V_address1),
    .ce1(out_val_V_ce1),
    .we1(out_val_V_we1),
    .d1(out_val_V_d1),
    .q1(out_val_V_q1)
);

conv_10_12_mul_mucud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
conv_10_12_mul_mucud_U1(
    .din0(p_s_reg_410),
    .din1(ap_phi_reg_pp0_iter1_p_1_reg_433),
    .dout(p_Val2_3_fu_819_p2)
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((exitcond8_fu_556_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~(((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~(((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_153)) begin
        if ((tmp_reg_832 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_p_1_reg_433 <= weight_2_V_V_dout;
        end else if ((tmp_reg_832 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_p_1_reg_433 <= weight_1_V_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_p_1_reg_433 <= ap_phi_reg_pp0_iter0_p_1_reg_433;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_fu_813_p2 == 1'd0) & (exitcond_fu_765_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        branch_reg_352 <= branch_1_fu_782_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        branch_reg_352 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_fu_813_p2 == 1'd0) & (exitcond_fu_765_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        exitcond1_reg_341 <= exitcond3_fu_801_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        exitcond1_reg_341 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_fu_813_p2 == 1'd0) & (exitcond_fu_765_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        exitcond_flatten3_reg_329 <= exitcond_flatten_fu_807_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        exitcond_flatten3_reg_329 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_fu_813_p2 == 1'd0) & (exitcond_fu_765_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        indvar_flatten1_reg_375 <= indvar_flatten_next1_reg_836;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten1_reg_375 <= 13'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_491_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvar_flatten2_reg_398 <= 8'd0;
    end else if (((exitcond_flatten2_fu_759_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        indvar_flatten2_reg_398 <= indvar_flatten_next2_reg_849;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_fu_813_p2 == 1'd0) & (exitcond_fu_765_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        indvar_flatten_reg_363 <= indvar_flatten_next_fu_793_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten_reg_363 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        init_idx_reg_387 <= 6'd0;
    end else if ((~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_491_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        init_idx_reg_387 <= init_idx_1_fu_497_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((tmp_reg_832 == 1'd0)) begin
            p_s_reg_410 <= input_2_V_V_dout;
        end else if ((tmp_reg_832 == 1'd1)) begin
            p_s_reg_410 <= input_1_V_V_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_reg_875 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pout_reg_422 <= pout_1_reg_854;
    end else if ((~(((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
        pout_reg_422 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_fu_759_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        wr_idx_reg_442 <= 6'd0;
    end else if ((~(((tmp_reg_832 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state9))) begin
        wr_idx_reg_442 <= wr_idx_1_reg_885;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        branch_mid2_reg_827 <= branch_mid2_fu_471_p3;
        indvar_flatten_next1_reg_836 <= indvar_flatten_next1_fu_485_p2;
        tmp_reg_832 <= tmp_fu_479_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond8_reg_875 <= exitcond8_fu_556_p2;
        out_val_V_addr_3_reg_869 <= tmp_5_fu_551_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
        indvar_flatten_next2_reg_849 <= indvar_flatten_next2_fu_539_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pout_1_reg_854 <= pout_1_fu_545_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        wr_idx_1_reg_885 <= wr_idx_1_fu_771_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (exitcond8_reg_875 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_pout_phi_fu_426_p4 = pout_1_reg_854;
    end else begin
        ap_phi_mux_pout_phi_fu_426_p4 = pout_reg_422;
    end
end

always @ (*) begin
    if (((exitcond4_fu_491_p2 == 1'd0) & (tmp_reg_832 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        bias_1_V_V_blk_n = bias_1_V_V_empty_n;
    end else begin
        bias_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op58_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        bias_1_V_V_read = 1'b1;
    end else begin
        bias_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond4_fu_491_p2 == 1'd0) & (tmp_reg_832 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        bias_2_V_V_blk_n = bias_2_V_V_empty_n;
    end else begin
        bias_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op51_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        bias_2_V_V_read = 1'b1;
    end else begin
        bias_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_832 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        input_1_V_V_blk_n = input_1_V_V_empty_n;
    end else begin
        input_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0))) & (tmp_reg_832 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        input_1_V_V_read = 1'b1;
    end else begin
        input_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_832 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        input_2_V_V_blk_n = input_2_V_V_empty_n;
    end else begin
        input_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0))) & (tmp_reg_832 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        input_2_V_V_read = 1'b1;
    end else begin
        input_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_val_V_address0 = tmp_5_fu_551_p1;
    end else if (((ap_predicate_op58_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        out_val_V_address0 = tmp_2_fu_521_p1;
    end else if (((ap_predicate_op51_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        out_val_V_address0 = tmp_6_fu_503_p1;
    end else begin
        out_val_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        out_val_V_address1 = tmp_s_fu_777_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        out_val_V_address1 = out_val_V_addr_3_reg_869;
    end else begin
        out_val_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op58_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | (~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op51_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        out_val_V_ce0 = 1'b1;
    end else begin
        out_val_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        out_val_V_ce1 = 1'b1;
    end else begin
        out_val_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        if ((ap_predicate_op58_read_state3 == 1'b1)) begin
            out_val_V_d0 = tmp_4_cast_fu_534_p1;
        end else if ((ap_predicate_op51_read_state3 == 1'b1)) begin
            out_val_V_d0 = tmp_8_cast_fu_516_p1;
        end else begin
            out_val_V_d0 = 'bx;
        end
    end else begin
        out_val_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op58_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | (~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op51_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        out_val_V_we0 = 1'b1;
    end else begin
        out_val_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_val_V_we1 = 1'b1;
    end else begin
        out_val_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_832 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        output_1_V_V_blk_n = output_1_V_V_full_n;
    end else begin
        output_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_832 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (tmp_reg_832 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        output_1_V_V_write = 1'b1;
    end else begin
        output_1_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_832 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        output_2_V_V_blk_n = output_2_V_V_full_n;
    end else begin
        output_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_832 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (tmp_reg_832 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        output_2_V_V_write = 1'b1;
    end else begin
        output_2_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_832 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weight_1_V_V_blk_n = weight_1_V_V_empty_n;
    end else begin
        weight_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_832 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weight_1_V_V_read = 1'b1;
    end else begin
        weight_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_reg_832 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weight_2_V_V_blk_n = weight_2_V_V_empty_n;
    end else begin
        weight_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_reg_832 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weight_2_V_V_read = 1'b1;
    end else begin
        weight_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if ((~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_491_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~(((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_491_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~(((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond_flatten2_fu_759_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((exitcond_flatten1_fu_813_p2 == 1'd1) & (exitcond_fu_765_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((exitcond_flatten1_fu_813_p2 == 1'd0) & (exitcond_fu_765_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~(((tmp_reg_832 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((tmp_reg_832 == 1'd0) & (weight_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (weight_1_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((tmp_reg_832 == 1'd0) & (weight_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (weight_1_V_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state3 = (((ap_predicate_op58_read_state3 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op51_read_state3 == 1'b1) & (bias_2_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state4 = (((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter0 = (((tmp_reg_832 == 1'd0) & (weight_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (weight_1_V_V_empty_n == 1'b0)));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9 = (((tmp_reg_832 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (output_1_V_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_139 = (~(((tmp_reg_832 == 1'd0) & (input_2_V_V_empty_n == 1'b0)) | ((tmp_reg_832 == 1'd1) & (input_1_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state4));
end

always @ (*) begin
    ap_condition_153 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_p_1_reg_433 = 'bx;

always @ (*) begin
    ap_predicate_op51_read_state3 = ((exitcond4_fu_491_p2 == 1'd0) & (tmp_reg_832 == 1'd0));
end

always @ (*) begin
    ap_predicate_op58_read_state3 = ((exitcond4_fu_491_p2 == 1'd0) & (tmp_reg_832 == 1'd1));
end

assign branch_1_fu_782_p2 = (branch_mid2_reg_827 + 2'd1);

assign branch_mid2_fu_471_p3 = ((tmp_1_fu_465_p2[0:0] === 1'b1) ? 2'd0 : branch_reg_352);

assign brmerge40_demorgan_i_fu_698_p2 = (signbit_fu_587_p3 & newsignbit_fu_630_p3);

assign brmerge_i_i_fu_686_p2 = (p_not_i_i_fu_680_p2 | newsignbit_fu_630_p3);

assign brmerge_i_i_i_fu_716_p2 = (underflow_fu_710_p2 | overflow_fu_692_p2);

assign carry_fu_644_p2 = (tmp_14_fu_616_p3 & tmp_10_fu_638_p2);

assign deleted_zeros_fu_662_p2 = (signbit_fu_587_p3 ^ not_carry_fu_656_p2);

assign exitcond3_fu_801_p2 = ((branch_1_fu_782_p2 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond3_mid_fu_459_p2 = (not_exitcond_flatten_fu_453_p2 & exitcond1_reg_341);

assign exitcond4_fu_491_p2 = ((init_idx_reg_387 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond8_fu_556_p2 = ((ap_phi_mux_pout_phi_fu_426_p4 == 5'd31) ? 1'b1 : 1'b0);

assign exitcond_flatten1_fu_813_p2 = ((indvar_flatten1_reg_375 == 13'd8191) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_759_p2 = ((indvar_flatten2_reg_398 == 8'd143) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_807_p2 = ((indvar_flatten_next_fu_793_p3 == 9'd128) ? 1'b1 : 1'b0);

assign exitcond_fu_765_p2 = ((wr_idx_reg_442 == 6'd32) ? 1'b1 : 1'b0);

assign indvar_flatten18_op_fu_787_p2 = (indvar_flatten_reg_363 + 9'd1);

assign indvar_flatten_next1_fu_485_p2 = (indvar_flatten1_reg_375 + 13'd1);

assign indvar_flatten_next2_fu_539_p2 = (indvar_flatten2_reg_398 + 8'd1);

assign indvar_flatten_next_fu_793_p3 = ((exitcond_flatten3_reg_329[0:0] === 1'b1) ? 9'd1 : indvar_flatten18_op_fu_787_p2);

assign init_idx_1_fu_497_p2 = (init_idx_reg_387 + 6'd1);

assign newsignbit_fu_630_p3 = p_Val2_6_fu_624_p2[32'd15];

assign not_carry_fu_656_p2 = (p_Result_2_not_fu_650_p2 | newsignbit_fu_630_p3);

assign not_exitcond_flatten_fu_453_p2 = (exitcond_flatten3_reg_329 ^ 1'd1);

assign out_val_V_d1 = ((underflow_not_fu_728_p2[0:0] === 1'b1) ? p_Val2_6_mux_fu_734_p3 : p_Val2_6_7_fu_742_p3);

assign output_1_V_V_din = out_val_V_q1;

assign output_2_V_V_din = out_val_V_q1;

assign overflow_fu_692_p2 = (tmp_11_fu_668_p2 & brmerge_i_i_fu_686_p2);

assign p_38_i_i_fu_674_p2 = (signbit_fu_587_p3 & carry_fu_644_p2);

assign p_Result_2_not_fu_650_p2 = (tmp_14_fu_616_p3 ^ 1'd1);

assign p_Val2_4_fu_582_p2 = ($signed(tmp_10_cast_fu_578_p1) + $signed(p_Val2_3_fu_819_p2));

assign p_Val2_5_fu_595_p4 = {{p_Val2_4_fu_582_p2[22:7]}};

assign p_Val2_6_7_fu_742_p3 = ((underflow_fu_710_p2[0:0] === 1'b1) ? 16'd32768 : p_Val2_6_fu_624_p2);

assign p_Val2_6_fu_624_p2 = (p_Val2_5_fu_595_p4 + tmp_9_fu_612_p1);

assign p_Val2_6_mux_fu_734_p3 = ((brmerge_i_i_i_fu_716_p2[0:0] === 1'b1) ? 16'd32767 : p_Val2_6_fu_624_p2);

assign p_not_i_i_fu_680_p2 = (deleted_zeros_fu_662_p2 ^ 1'd1);

assign pout_1_fu_545_p2 = (ap_phi_mux_pout_phi_fu_426_p4 + 5'd1);

assign signbit_fu_587_p3 = p_Val2_4_fu_582_p2[32'd23];

assign tmp1_demorgan_fu_704_p2 = (p_38_i_i_fu_674_p2 | brmerge40_demorgan_i_fu_698_p2);

assign tmp2_fu_722_p2 = (tmp_11_fu_668_p2 | newsignbit_fu_630_p3);

assign tmp_10_cast_fu_578_p1 = $signed(tmp_7_fu_570_p3);

assign tmp_10_fu_638_p2 = (newsignbit_fu_630_p3 ^ 1'd1);

assign tmp_11_fu_668_p2 = (signbit_fu_587_p3 ^ 1'd1);

assign tmp_13_fu_605_p3 = p_Val2_3_fu_819_p2[32'd6];

assign tmp_14_fu_616_p3 = p_Val2_4_fu_582_p2[32'd22];

assign tmp_1_fu_465_p2 = (exitcond_flatten3_reg_329 | exitcond3_mid_fu_459_p2);

assign tmp_2_fu_521_p1 = init_idx_reg_387;

assign tmp_4_cast_fu_534_p1 = $signed(tmp_4_fu_526_p3);

assign tmp_4_fu_526_p3 = {{bias_1_V_V_dout}, {1'd0}};

assign tmp_5_fu_551_p1 = ap_phi_mux_pout_phi_fu_426_p4;

assign tmp_6_fu_503_p1 = init_idx_reg_387;

assign tmp_7_fu_570_p3 = {{out_val_V_q0}, {7'd0}};

assign tmp_8_cast_fu_516_p1 = $signed(tmp_8_fu_508_p3);

assign tmp_8_fu_508_p3 = {{bias_2_V_V_dout}, {1'd0}};

assign tmp_9_fu_612_p1 = tmp_13_fu_605_p3;

assign tmp_fu_479_p2 = ((branch_mid2_fu_471_p3 == 2'd0) ? 1'b1 : 1'b0);

assign tmp_s_fu_777_p1 = wr_idx_reg_442;

assign underflow_fu_710_p2 = (tmp1_demorgan_fu_704_p2 ^ signbit_fu_587_p3);

assign underflow_not_fu_728_p2 = (tmp2_fu_722_p2 | p_38_i_i_fu_674_p2);

assign wr_idx_1_fu_771_p2 = (wr_idx_reg_442 + 6'd1);

endmodule //conv_10_12
