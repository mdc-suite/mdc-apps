// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv_16_18,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.855000,HLS_SYN_LAT=14765605,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=196,HLS_SYN_LUT=775}" *)

module conv_16_18 (
        ap_clk,
        ap_rst_n,
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

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst_n;
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

reg    ap_rst_n_inv;
reg    input_1_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state6;
reg   [0:0] tmp_reg_752;
wire   [0:0] exitcond7_fu_494_p2;
reg    input_2_V_V_blk_n;
reg    output_1_V_V_blk_n;
wire    ap_CS_fsm_state12;
reg    output_2_V_V_blk_n;
reg    weight_1_V_V_blk_n;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond8_fu_510_p2;
reg    weight_2_V_V_blk_n;
reg    bias_1_V_V_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond4_fu_446_p2;
reg    bias_2_V_V_blk_n;
wire   [4:0] hout_1_fu_410_p2;
reg   [4:0] hout_1_reg_731;
wire    ap_CS_fsm_state2;
wire   [4:0] wout_1_fu_422_p2;
reg   [4:0] wout_1_reg_739;
wire    ap_CS_fsm_state3;
wire   [1:0] branch_1_fu_434_p2;
reg   [1:0] branch_1_reg_747;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_fu_440_p2;
wire   [0:0] exitcond3_fu_428_p2;
wire   [5:0] init_idx_1_fu_452_p2;
reg    ap_predicate_op62_read_state5;
reg    ap_predicate_op69_read_state5;
reg    ap_block_state5;
wire   [7:0] pkern_1_fu_500_p2;
reg   [7:0] pkern_1_reg_767;
reg    ap_predicate_op85_read_state6;
reg    ap_predicate_op87_read_state6;
reg    ap_block_state6;
wire  signed [23:0] OP1_V_fu_506_p1;
reg  signed [23:0] OP1_V_reg_772;
wire   [5:0] pout_1_fu_516_p2;
reg   [5:0] pout_1_reg_780;
reg    ap_predicate_op101_read_state7;
reg    ap_predicate_op103_read_state7;
reg    ap_block_state7;
reg   [4:0] out_val_V_addr_3_reg_795;
wire  signed [23:0] p_Val2_3_fu_722_p2;
reg  signed [23:0] p_Val2_3_reg_800;
wire    ap_CS_fsm_state8;
reg   [0:0] tmp_12_reg_805;
reg   [0:0] tmp_11_reg_810;
wire    ap_CS_fsm_state9;
reg   [0:0] tmp_13_reg_819;
wire   [15:0] p_Val2_6_fu_584_p2;
reg   [15:0] p_Val2_6_reg_825;
reg   [0:0] tmp_14_reg_831;
wire   [5:0] wr_idx_1_fu_711_p2;
reg   [5:0] wr_idx_1_reg_843;
wire    ap_CS_fsm_state11;
wire   [0:0] exitcond_fu_705_p2;
reg   [4:0] out_val_V_address0;
reg    out_val_V_ce0;
reg    out_val_V_we0;
reg   [15:0] out_val_V_d0;
wire   [15:0] out_val_V_q0;
reg   [4:0] hout_reg_307;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_416_p2;
reg   [4:0] wout_reg_318;
wire   [0:0] exitcond1_fu_404_p2;
reg   [1:0] branch_reg_329;
reg   [5:0] init_idx_reg_340;
reg   [7:0] pkern_reg_351;
reg   [15:0] ap_phi_mux_p_s_phi_fu_365_p4;
reg   [5:0] pout_reg_373;
wire    ap_CS_fsm_state10;
reg  signed [7:0] p_1_reg_384;
reg   [5:0] wr_idx_reg_393;
reg    ap_block_state12;
wire   [63:0] tmp_6_fu_458_p1;
wire   [63:0] tmp_2_fu_476_p1;
wire   [63:0] tmp_5_fu_522_p1;
wire   [63:0] tmp_s_fu_717_p1;
wire  signed [15:0] tmp_8_cast_fu_471_p1;
wire  signed [15:0] tmp_4_cast_fu_489_p1;
wire   [15:0] this_assign_1_fu_696_p3;
wire   [8:0] tmp_8_fu_463_p3;
wire   [8:0] tmp_4_fu_481_p3;
wire   [22:0] tmp_3_fu_538_p3;
wire  signed [23:0] tmp_10_cast_fu_546_p1;
(* use_dsp48 = "no" *) wire   [23:0] p_Val2_4_fu_550_p2;
wire   [15:0] tmp_9_fu_573_p1;
wire   [15:0] p_Val2_5_fu_563_p4;
wire   [0:0] tmp_7_fu_598_p2;
wire   [0:0] p_Result_2_not_fu_608_p2;
wire   [0:0] not_carry_1_fu_613_p2;
wire   [0:0] carry_1_fu_603_p2;
wire   [0:0] deleted_zeros_fu_618_p2;
wire   [0:0] p_not_i_i_fu_633_p2;
wire   [0:0] brmerge_i_i_fu_639_p2;
wire   [0:0] tmp_10_fu_623_p2;
wire   [0:0] p_38_i_i_fu_628_p2;
wire   [0:0] brmerge40_demorgan_i_fu_650_p2;
wire   [0:0] tmp1_demorgan_fu_654_p2;
wire   [0:0] underflow_fu_660_p2;
wire   [0:0] overflow_fu_644_p2;
wire   [0:0] tmp2_fu_671_p2;
wire   [0:0] brmerge_i_i_i_fu_665_p2;
wire   [0:0] underflow_not_fu_676_p2;
wire   [15:0] p_Val2_6_mux_fu_682_p3;
wire   [15:0] p_Val2_6_12_fu_689_p3;
wire  signed [15:0] p_Val2_3_fu_722_p1;
reg   [11:0] ap_NS_fsm;
reg    ap_condition_186;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
end

conv_16_18_out_vabkb #(
    .DataWidth( 16 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
out_val_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(out_val_V_address0),
    .ce0(out_val_V_ce0),
    .we0(out_val_V_we0),
    .d0(out_val_V_d0),
    .q0(out_val_V_q0)
);

conv_16_18_mul_mucud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 24 ))
conv_16_18_mul_mucud_U1(
    .din0(p_1_reg_384),
    .din1(p_Val2_3_fu_722_p1),
    .dout(p_Val2_3_fu_722_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_416_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        branch_reg_329 <= 2'd0;
    end else if (((exitcond_fu_705_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        branch_reg_329 <= branch_1_reg_747;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_416_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        hout_reg_307 <= hout_1_reg_731;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hout_reg_307 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_428_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        init_idx_reg_340 <= 6'd0;
    end else if ((~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_446_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        init_idx_reg_340 <= init_idx_1_fu_452_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_186)) begin
        if ((tmp_reg_752 == 1'd0)) begin
            p_1_reg_384 <= weight_2_V_V_dout;
        end else if ((tmp_reg_752 == 1'd1)) begin
            p_1_reg_384 <= weight_1_V_V_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_510_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        pkern_reg_351 <= pkern_1_reg_767;
    end else if ((~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_446_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        pkern_reg_351 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        pout_reg_373 <= pout_1_reg_780;
    end else if ((~(((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_494_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        pout_reg_373 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_404_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_318 <= 5'd0;
    end else if (((exitcond3_fu_428_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        wout_reg_318 <= wout_1_reg_739;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_494_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        wr_idx_reg_393 <= 6'd0;
    end else if ((~(((tmp_reg_752 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_752 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state12))) begin
        wr_idx_reg_393 <= wr_idx_1_reg_843;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_494_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        OP1_V_reg_772 <= OP1_V_fu_506_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        branch_1_reg_747 <= branch_1_fu_434_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hout_1_reg_731 <= hout_1_fu_410_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_510_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        out_val_V_addr_3_reg_795 <= tmp_5_fu_522_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_Val2_3_reg_800 <= p_Val2_3_fu_722_p2;
        tmp_12_reg_805 <= p_Val2_3_fu_722_p2[32'd6];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_Val2_6_reg_825 <= p_Val2_6_fu_584_p2;
        tmp_11_reg_810 <= p_Val2_4_fu_550_p2[32'd23];
        tmp_13_reg_819 <= p_Val2_4_fu_550_p2[32'd22];
        tmp_14_reg_831 <= p_Val2_6_fu_584_p2[32'd15];
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state6))) begin
        pkern_1_reg_767 <= pkern_1_fu_500_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state7))) begin
        pout_1_reg_780 <= pout_1_fu_516_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_428_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_reg_752 <= tmp_fu_440_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wout_1_reg_739 <= wout_1_fu_422_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        wr_idx_1_reg_843 <= wr_idx_1_fu_711_p2;
    end
end

always @ (*) begin
    if (((exitcond7_fu_494_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        if ((tmp_reg_752 == 1'd0)) begin
            ap_phi_mux_p_s_phi_fu_365_p4 = input_2_V_V_dout;
        end else if ((tmp_reg_752 == 1'd1)) begin
            ap_phi_mux_p_s_phi_fu_365_p4 = input_1_V_V_dout;
        end else begin
            ap_phi_mux_p_s_phi_fu_365_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_s_phi_fu_365_p4 = 'bx;
    end
end

always @ (*) begin
    if (((exitcond4_fu_446_p2 == 1'd0) & (tmp_reg_752 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        bias_1_V_V_blk_n = bias_1_V_V_empty_n;
    end else begin
        bias_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op69_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        bias_1_V_V_read = 1'b1;
    end else begin
        bias_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond4_fu_446_p2 == 1'd0) & (tmp_reg_752 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        bias_2_V_V_blk_n = bias_2_V_V_empty_n;
    end else begin
        bias_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op62_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        bias_2_V_V_read = 1'b1;
    end else begin
        bias_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond7_fu_494_p2 == 1'd0) & (tmp_reg_752 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        input_1_V_V_blk_n = input_1_V_V_empty_n;
    end else begin
        input_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (ap_predicate_op87_read_state6 == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        input_1_V_V_read = 1'b1;
    end else begin
        input_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond7_fu_494_p2 == 1'd0) & (tmp_reg_752 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        input_2_V_V_blk_n = input_2_V_V_empty_n;
    end else begin
        input_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (ap_predicate_op85_read_state6 == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        input_2_V_V_read = 1'b1;
    end else begin
        input_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        out_val_V_address0 = tmp_s_fu_717_p1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
        out_val_V_address0 = out_val_V_addr_3_reg_795;
    end else if (((ap_predicate_op69_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_address0 = tmp_2_fu_476_p1;
    end else if (((ap_predicate_op62_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_address0 = tmp_6_fu_458_p1;
    end else begin
        out_val_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op69_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | (~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op62_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_val_V_ce0 = 1'b1;
    end else begin
        out_val_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        out_val_V_d0 = this_assign_1_fu_696_p3;
    end else if (((ap_predicate_op69_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_d0 = tmp_4_cast_fu_489_p1;
    end else if (((ap_predicate_op62_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_d0 = tmp_8_cast_fu_471_p1;
    end else begin
        out_val_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op69_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | (~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op62_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_val_V_we0 = 1'b1;
    end else begin
        out_val_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_752 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        output_1_V_V_blk_n = output_1_V_V_full_n;
    end else begin
        output_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_752 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_752 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (tmp_reg_752 == 1'd1) & (1'b1 == ap_CS_fsm_state12))) begin
        output_1_V_V_write = 1'b1;
    end else begin
        output_1_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_752 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        output_2_V_V_blk_n = output_2_V_V_full_n;
    end else begin
        output_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_752 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_752 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (tmp_reg_752 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        output_2_V_V_write = 1'b1;
    end else begin
        output_2_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond8_fu_510_p2 == 1'd0) & (tmp_reg_752 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        weight_1_V_V_blk_n = weight_1_V_V_empty_n;
    end else begin
        weight_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (ap_predicate_op103_read_state7 == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
        weight_1_V_V_read = 1'b1;
    end else begin
        weight_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond8_fu_510_p2 == 1'd0) & (tmp_reg_752 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        weight_2_V_V_blk_n = weight_2_V_V_empty_n;
    end else begin
        weight_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (ap_predicate_op101_read_state7 == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
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
            if (((exitcond1_fu_404_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond2_fu_416_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond3_fu_428_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_446_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if ((~(((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_446_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if ((~(((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_494_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else if ((~(((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_494_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if ((~(((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_510_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if ((~(((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_510_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state11 : begin
            if (((exitcond_fu_705_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if ((~(((tmp_reg_752 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_752 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OP1_V_fu_506_p1 = $signed(ap_phi_mux_p_s_phi_fu_365_p4);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state12 = (((tmp_reg_752 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_752 == 1'd1) & (output_1_V_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state5 = (((ap_predicate_op69_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op62_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state6 = (((ap_predicate_op87_read_state6 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op85_read_state6 == 1'b1) & (input_2_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state7 = (((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_condition_186 = (~(((ap_predicate_op103_read_state7 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op101_read_state7 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_510_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7));
end

always @ (*) begin
    ap_predicate_op101_read_state7 = ((exitcond8_fu_510_p2 == 1'd0) & (tmp_reg_752 == 1'd0));
end

always @ (*) begin
    ap_predicate_op103_read_state7 = ((exitcond8_fu_510_p2 == 1'd0) & (tmp_reg_752 == 1'd1));
end

always @ (*) begin
    ap_predicate_op62_read_state5 = ((exitcond4_fu_446_p2 == 1'd0) & (tmp_reg_752 == 1'd0));
end

always @ (*) begin
    ap_predicate_op69_read_state5 = ((exitcond4_fu_446_p2 == 1'd0) & (tmp_reg_752 == 1'd1));
end

always @ (*) begin
    ap_predicate_op85_read_state6 = ((exitcond7_fu_494_p2 == 1'd0) & (tmp_reg_752 == 1'd0));
end

always @ (*) begin
    ap_predicate_op87_read_state6 = ((exitcond7_fu_494_p2 == 1'd0) & (tmp_reg_752 == 1'd1));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign branch_1_fu_434_p2 = (branch_reg_329 + 2'd1);

assign brmerge40_demorgan_i_fu_650_p2 = (tmp_14_reg_831 & tmp_11_reg_810);

assign brmerge_i_i_fu_639_p2 = (tmp_14_reg_831 | p_not_i_i_fu_633_p2);

assign brmerge_i_i_i_fu_665_p2 = (underflow_fu_660_p2 | overflow_fu_644_p2);

assign carry_1_fu_603_p2 = (tmp_7_fu_598_p2 & tmp_13_reg_819);

assign deleted_zeros_fu_618_p2 = (tmp_11_reg_810 ^ not_carry_1_fu_613_p2);

assign exitcond1_fu_404_p2 = ((hout_reg_307 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond2_fu_416_p2 = ((wout_reg_318 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond3_fu_428_p2 = ((branch_reg_329 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond4_fu_446_p2 = ((init_idx_reg_340 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond7_fu_494_p2 = ((pkern_reg_351 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond8_fu_510_p2 = ((pout_reg_373 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond_fu_705_p2 = ((wr_idx_reg_393 == 6'd32) ? 1'b1 : 1'b0);

assign hout_1_fu_410_p2 = (hout_reg_307 + 5'd1);

assign init_idx_1_fu_452_p2 = (init_idx_reg_340 + 6'd1);

assign not_carry_1_fu_613_p2 = (tmp_14_reg_831 | p_Result_2_not_fu_608_p2);

assign output_1_V_V_din = out_val_V_q0;

assign output_2_V_V_din = out_val_V_q0;

assign overflow_fu_644_p2 = (tmp_10_fu_623_p2 & brmerge_i_i_fu_639_p2);

assign p_38_i_i_fu_628_p2 = (tmp_11_reg_810 & carry_1_fu_603_p2);

assign p_Result_2_not_fu_608_p2 = (tmp_13_reg_819 ^ 1'd1);

assign p_Val2_3_fu_722_p1 = OP1_V_reg_772;

assign p_Val2_4_fu_550_p2 = ($signed(p_Val2_3_reg_800) + $signed(tmp_10_cast_fu_546_p1));

assign p_Val2_5_fu_563_p4 = {{p_Val2_4_fu_550_p2[22:7]}};

assign p_Val2_6_12_fu_689_p3 = ((underflow_fu_660_p2[0:0] === 1'b1) ? 16'd32768 : p_Val2_6_reg_825);

assign p_Val2_6_fu_584_p2 = (tmp_9_fu_573_p1 + p_Val2_5_fu_563_p4);

assign p_Val2_6_mux_fu_682_p3 = ((brmerge_i_i_i_fu_665_p2[0:0] === 1'b1) ? 16'd32767 : p_Val2_6_reg_825);

assign p_not_i_i_fu_633_p2 = (deleted_zeros_fu_618_p2 ^ 1'd1);

assign pkern_1_fu_500_p2 = (pkern_reg_351 + 8'd1);

assign pout_1_fu_516_p2 = (pout_reg_373 + 6'd1);

assign this_assign_1_fu_696_p3 = ((underflow_not_fu_676_p2[0:0] === 1'b1) ? p_Val2_6_mux_fu_682_p3 : p_Val2_6_12_fu_689_p3);

assign tmp1_demorgan_fu_654_p2 = (p_38_i_i_fu_628_p2 | brmerge40_demorgan_i_fu_650_p2);

assign tmp2_fu_671_p2 = (tmp_14_reg_831 | tmp_10_fu_623_p2);

assign tmp_10_cast_fu_546_p1 = $signed(tmp_3_fu_538_p3);

assign tmp_10_fu_623_p2 = (tmp_11_reg_810 ^ 1'd1);

assign tmp_2_fu_476_p1 = init_idx_reg_340;

assign tmp_3_fu_538_p3 = {{out_val_V_q0}, {7'd0}};

assign tmp_4_cast_fu_489_p1 = $signed(tmp_4_fu_481_p3);

assign tmp_4_fu_481_p3 = {{bias_1_V_V_dout}, {1'd0}};

assign tmp_5_fu_522_p1 = pout_reg_373;

assign tmp_6_fu_458_p1 = init_idx_reg_340;

assign tmp_7_fu_598_p2 = (tmp_14_reg_831 ^ 1'd1);

assign tmp_8_cast_fu_471_p1 = $signed(tmp_8_fu_463_p3);

assign tmp_8_fu_463_p3 = {{bias_2_V_V_dout}, {1'd0}};

assign tmp_9_fu_573_p1 = tmp_12_reg_805;

assign tmp_fu_440_p2 = ((branch_reg_329 == 2'd0) ? 1'b1 : 1'b0);

assign tmp_s_fu_717_p1 = wr_idx_reg_393;

assign underflow_fu_660_p2 = (tmp_11_reg_810 ^ tmp1_demorgan_fu_654_p2);

assign underflow_not_fu_676_p2 = (tmp2_fu_671_p2 | p_38_i_i_fu_628_p2);

assign wout_1_fu_422_p2 = (wout_reg_318 + 5'd1);

assign wr_idx_1_fu_711_p2 = (wr_idx_reg_393 + 6'd1);

endmodule //conv_16_18