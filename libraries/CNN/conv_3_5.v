// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv_3_5,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.855000,HLS_SYN_LAT=158236929,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=204,HLS_SYN_LUT=831}" *)

module conv_3_5 (
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

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;

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
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state8;
reg   [0:0] tmp_reg_802;
wire   [0:0] exitcond7_fu_544_p2;
reg    input_2_V_V_blk_n;
reg    output_1_V_V_blk_n;
wire    ap_CS_fsm_state14;
reg    output_2_V_V_blk_n;
reg    weight_1_V_V_blk_n;
wire    ap_CS_fsm_state9;
wire   [0:0] exitcond8_fu_560_p2;
reg    weight_2_V_V_blk_n;
reg    bias_1_V_V_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond4_fu_472_p2;
reg    bias_2_V_V_blk_n;
wire   [7:0] hout_1_fu_436_p2;
reg   [7:0] hout_1_reg_781;
wire    ap_CS_fsm_state2;
wire   [7:0] wout_1_fu_448_p2;
reg   [7:0] wout_1_reg_789;
wire    ap_CS_fsm_state3;
wire   [1:0] branch_1_fu_460_p2;
reg   [1:0] branch_1_reg_797;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_fu_466_p2;
wire   [0:0] exitcond3_fu_454_p2;
wire   [4:0] init_idx_1_fu_478_p2;
reg    ap_predicate_op64_read_state5;
reg    ap_predicate_op71_read_state5;
reg    ap_block_state5;
wire   [1:0] hkern_1_fu_526_p2;
reg   [1:0] hkern_1_reg_817;
wire    ap_CS_fsm_state6;
wire   [1:0] wkern_1_fu_538_p2;
reg   [1:0] wkern_1_reg_825;
wire    ap_CS_fsm_state7;
wire   [3:0] pkern_1_fu_550_p2;
reg   [3:0] pkern_1_reg_833;
reg    ap_predicate_op103_read_state8;
reg    ap_predicate_op105_read_state8;
reg    ap_block_state8;
wire  signed [23:0] OP1_V_fu_556_p1;
reg  signed [23:0] OP1_V_reg_838;
wire   [4:0] pout_1_fu_566_p2;
reg   [4:0] pout_1_reg_846;
reg    ap_predicate_op118_read_state9;
reg    ap_predicate_op120_read_state9;
reg    ap_block_state9;
reg   [3:0] out_val_V_addr_3_reg_861;
wire  signed [23:0] p_Val2_3_fu_772_p2;
reg  signed [23:0] p_Val2_3_reg_866;
wire    ap_CS_fsm_state10;
reg   [0:0] tmp_12_reg_871;
reg   [0:0] signbit_reg_876;
wire    ap_CS_fsm_state11;
reg   [0:0] tmp_13_reg_885;
wire   [15:0] p_Val2_6_fu_634_p2;
reg   [15:0] p_Val2_6_reg_891;
reg   [0:0] newsignbit_reg_897;
wire   [4:0] wr_idx_1_fu_761_p2;
reg   [4:0] wr_idx_1_reg_909;
wire    ap_CS_fsm_state13;
wire   [0:0] exitcond_fu_755_p2;
reg   [3:0] out_val_V_address0;
reg    out_val_V_ce0;
reg    out_val_V_we0;
reg   [15:0] out_val_V_d0;
wire   [15:0] out_val_V_q0;
reg   [7:0] hout_reg_311;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_442_p2;
reg   [7:0] wout_reg_322;
wire   [0:0] exitcond1_fu_430_p2;
reg   [1:0] branch_reg_333;
reg   [4:0] init_idx_reg_344;
reg   [1:0] hkern_reg_355;
wire   [0:0] exitcond6_fu_532_p2;
reg   [1:0] wkern_reg_366;
wire   [0:0] exitcond5_fu_520_p2;
reg   [3:0] pkern_reg_377;
reg   [15:0] ap_phi_mux_p_s_phi_fu_391_p4;
reg   [4:0] pout_reg_399;
wire    ap_CS_fsm_state12;
reg  signed [7:0] p_1_reg_410;
reg   [4:0] wr_idx_reg_419;
reg    ap_block_state14;
wire   [63:0] tmp_6_fu_484_p1;
wire   [63:0] tmp_2_fu_502_p1;
wire   [63:0] tmp_5_fu_572_p1;
wire   [63:0] tmp_s_fu_767_p1;
wire  signed [15:0] tmp_8_cast_fu_497_p1;
wire  signed [15:0] tmp_4_cast_fu_515_p1;
wire   [15:0] this_assign_1_fu_746_p3;
wire   [8:0] tmp_8_fu_489_p3;
wire   [8:0] tmp_4_fu_507_p3;
wire   [22:0] tmp_3_fu_588_p3;
wire  signed [23:0] tmp_10_cast_fu_596_p1;
(* use_dsp48 = "no" *) wire   [23:0] p_Val2_4_fu_600_p2;
wire   [15:0] tmp_9_fu_623_p1;
wire   [15:0] p_Val2_5_fu_613_p4;
wire   [0:0] tmp_7_fu_648_p2;
wire   [0:0] p_Result_2_not_fu_658_p2;
wire   [0:0] not_carry_fu_663_p2;
wire   [0:0] carry_fu_653_p2;
wire   [0:0] deleted_zeros_fu_668_p2;
wire   [0:0] p_not_i_i_fu_683_p2;
wire   [0:0] brmerge_i_i_fu_689_p2;
wire   [0:0] tmp_10_fu_673_p2;
wire   [0:0] p_38_i_i_fu_678_p2;
wire   [0:0] brmerge40_demorgan_i_fu_700_p2;
wire   [0:0] tmp1_demorgan_fu_704_p2;
wire   [0:0] underflow_fu_710_p2;
wire   [0:0] overflow_fu_694_p2;
wire   [0:0] tmp2_fu_721_p2;
wire   [0:0] brmerge_i_i_i_fu_715_p2;
wire   [0:0] underflow_not_fu_726_p2;
wire   [15:0] p_Val2_6_mux_fu_732_p3;
wire   [15:0] p_Val2_6_13_fu_739_p3;
wire  signed [15:0] p_Val2_3_fu_772_p1;
reg   [13:0] ap_NS_fsm;
reg    ap_condition_202;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
end

conv_3_5_out_val_V #(
    .DataWidth( 16 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
out_val_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(out_val_V_address0),
    .ce0(out_val_V_ce0),
    .we0(out_val_V_we0),
    .d0(out_val_V_d0),
    .q0(out_val_V_q0)
);

conv_3_5_mul_mul_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 24 ))
conv_3_5_mul_mul_bkb_U1(
    .din0(p_1_reg_410),
    .din1(p_Val2_3_fu_772_p1),
    .dout(p_Val2_3_fu_772_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_442_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        branch_reg_333 <= 2'd0;
    end else if (((exitcond_fu_755_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        branch_reg_333 <= branch_1_reg_797;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_472_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        hkern_reg_355 <= 2'd0;
    end else if (((exitcond6_fu_532_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        hkern_reg_355 <= hkern_1_reg_817;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_442_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        hout_reg_311 <= hout_1_reg_781;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hout_reg_311 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        init_idx_reg_344 <= 5'd0;
    end else if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_472_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        init_idx_reg_344 <= init_idx_1_fu_478_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_202)) begin
        if ((tmp_reg_802 == 1'd0)) begin
            p_1_reg_410 <= weight_2_V_V_dout;
        end else if ((tmp_reg_802 == 1'd1)) begin
            p_1_reg_410 <= weight_1_V_V_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_532_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        pkern_reg_377 <= 4'd0;
    end else if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_560_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        pkern_reg_377 <= pkern_1_reg_833;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        pout_reg_399 <= pout_1_reg_846;
    end else if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_544_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        pout_reg_399 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_544_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        wkern_reg_366 <= wkern_1_reg_825;
    end else if (((exitcond5_fu_520_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        wkern_reg_366 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_430_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_322 <= 8'd0;
    end else if (((exitcond3_fu_454_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        wout_reg_322 <= wout_1_reg_789;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_520_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        wr_idx_reg_419 <= 5'd0;
    end else if ((~(((tmp_reg_802 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_802 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state14))) begin
        wr_idx_reg_419 <= wr_idx_1_reg_909;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_544_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        OP1_V_reg_838 <= OP1_V_fu_556_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        branch_1_reg_797 <= branch_1_fu_460_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        hkern_1_reg_817 <= hkern_1_fu_526_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hout_1_reg_781 <= hout_1_fu_436_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        newsignbit_reg_897 <= p_Val2_6_fu_634_p2[32'd15];
        p_Val2_6_reg_891 <= p_Val2_6_fu_634_p2;
        signbit_reg_876 <= p_Val2_4_fu_600_p2[32'd23];
        tmp_13_reg_885 <= p_Val2_4_fu_600_p2[32'd22];
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_560_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        out_val_V_addr_3_reg_861 <= tmp_5_fu_572_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_Val2_3_reg_866 <= p_Val2_3_fu_772_p2;
        tmp_12_reg_871 <= p_Val2_3_fu_772_p2[32'd6];
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state8))) begin
        pkern_1_reg_833 <= pkern_1_fu_550_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state9))) begin
        pout_1_reg_846 <= pout_1_fu_566_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_454_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_reg_802 <= tmp_fu_466_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        wkern_1_reg_825 <= wkern_1_fu_538_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wout_1_reg_789 <= wout_1_fu_448_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        wr_idx_1_reg_909 <= wr_idx_1_fu_761_p2;
    end
end

always @ (*) begin
    if (((exitcond7_fu_544_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        if ((tmp_reg_802 == 1'd0)) begin
            ap_phi_mux_p_s_phi_fu_391_p4 = input_2_V_V_dout;
        end else if ((tmp_reg_802 == 1'd1)) begin
            ap_phi_mux_p_s_phi_fu_391_p4 = input_1_V_V_dout;
        end else begin
            ap_phi_mux_p_s_phi_fu_391_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_s_phi_fu_391_p4 = 'bx;
    end
end

always @ (*) begin
    if (((exitcond4_fu_472_p2 == 1'd0) & (tmp_reg_802 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        bias_1_V_V_blk_n = bias_1_V_V_empty_n;
    end else begin
        bias_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op71_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        bias_1_V_V_read = 1'b1;
    end else begin
        bias_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond4_fu_472_p2 == 1'd0) & (tmp_reg_802 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        bias_2_V_V_blk_n = bias_2_V_V_empty_n;
    end else begin
        bias_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op64_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        bias_2_V_V_read = 1'b1;
    end else begin
        bias_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond7_fu_544_p2 == 1'd0) & (tmp_reg_802 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        input_1_V_V_blk_n = input_1_V_V_empty_n;
    end else begin
        input_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (ap_predicate_op105_read_state8 == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        input_1_V_V_read = 1'b1;
    end else begin
        input_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond7_fu_544_p2 == 1'd0) & (tmp_reg_802 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        input_2_V_V_blk_n = input_2_V_V_empty_n;
    end else begin
        input_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (ap_predicate_op103_read_state8 == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        input_2_V_V_read = 1'b1;
    end else begin
        input_2_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        out_val_V_address0 = tmp_s_fu_767_p1;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10))) begin
        out_val_V_address0 = out_val_V_addr_3_reg_861;
    end else if (((ap_predicate_op71_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_address0 = tmp_2_fu_502_p1;
    end else if (((ap_predicate_op64_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_address0 = tmp_6_fu_484_p1;
    end else begin
        out_val_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state10) | (~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op71_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | (~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op64_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_val_V_ce0 = 1'b1;
    end else begin
        out_val_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        out_val_V_d0 = this_assign_1_fu_746_p3;
    end else if (((ap_predicate_op71_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_d0 = tmp_4_cast_fu_515_p1;
    end else if (((ap_predicate_op64_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_d0 = tmp_8_cast_fu_497_p1;
    end else begin
        out_val_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op71_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | (~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (ap_predicate_op64_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        out_val_V_we0 = 1'b1;
    end else begin
        out_val_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_802 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        output_1_V_V_blk_n = output_1_V_V_full_n;
    end else begin
        output_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_802 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_802 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (tmp_reg_802 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        output_1_V_V_write = 1'b1;
    end else begin
        output_1_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_802 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        output_2_V_V_blk_n = output_2_V_V_full_n;
    end else begin
        output_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_802 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_802 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (tmp_reg_802 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        output_2_V_V_write = 1'b1;
    end else begin
        output_2_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond8_fu_560_p2 == 1'd0) & (tmp_reg_802 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        weight_1_V_V_blk_n = weight_1_V_V_empty_n;
    end else begin
        weight_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (ap_predicate_op120_read_state9 == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        weight_1_V_V_read = 1'b1;
    end else begin
        weight_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond8_fu_560_p2 == 1'd0) & (tmp_reg_802 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        weight_2_V_V_blk_n = weight_2_V_V_empty_n;
    end else begin
        weight_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (ap_predicate_op118_read_state9 == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
            if (((exitcond1_fu_430_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond2_fu_442_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond3_fu_454_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_472_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_472_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond5_fu_520_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond6_fu_532_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_544_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_544_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_560_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_560_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state13 : begin
            if (((exitcond_fu_755_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            if ((~(((tmp_reg_802 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_802 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OP1_V_fu_556_p1 = $signed(ap_phi_mux_p_s_phi_fu_391_p4);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state14 = (((tmp_reg_802 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_802 == 1'd1) & (output_1_V_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state5 = (((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state8 = (((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state9 = (((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_condition_202 = (~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_560_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9));
end

always @ (*) begin
    ap_predicate_op103_read_state8 = ((exitcond7_fu_544_p2 == 1'd0) & (tmp_reg_802 == 1'd0));
end

always @ (*) begin
    ap_predicate_op105_read_state8 = ((exitcond7_fu_544_p2 == 1'd0) & (tmp_reg_802 == 1'd1));
end

always @ (*) begin
    ap_predicate_op118_read_state9 = ((exitcond8_fu_560_p2 == 1'd0) & (tmp_reg_802 == 1'd0));
end

always @ (*) begin
    ap_predicate_op120_read_state9 = ((exitcond8_fu_560_p2 == 1'd0) & (tmp_reg_802 == 1'd1));
end

always @ (*) begin
    ap_predicate_op64_read_state5 = ((exitcond4_fu_472_p2 == 1'd0) & (tmp_reg_802 == 1'd0));
end

always @ (*) begin
    ap_predicate_op71_read_state5 = ((exitcond4_fu_472_p2 == 1'd0) & (tmp_reg_802 == 1'd1));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign branch_1_fu_460_p2 = (branch_reg_333 + 2'd1);

assign brmerge40_demorgan_i_fu_700_p2 = (signbit_reg_876 & newsignbit_reg_897);

assign brmerge_i_i_fu_689_p2 = (p_not_i_i_fu_683_p2 | newsignbit_reg_897);

assign brmerge_i_i_i_fu_715_p2 = (underflow_fu_710_p2 | overflow_fu_694_p2);

assign carry_fu_653_p2 = (tmp_7_fu_648_p2 & tmp_13_reg_885);

assign deleted_zeros_fu_668_p2 = (signbit_reg_876 ^ not_carry_fu_663_p2);

assign exitcond1_fu_430_p2 = ((hout_reg_311 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond2_fu_442_p2 = ((wout_reg_322 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond3_fu_454_p2 = ((branch_reg_333 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond4_fu_472_p2 = ((init_idx_reg_344 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond5_fu_520_p2 = ((hkern_reg_355 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond6_fu_532_p2 = ((wkern_reg_366 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond7_fu_544_p2 = ((pkern_reg_377 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond8_fu_560_p2 = ((pout_reg_399 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_fu_755_p2 = ((wr_idx_reg_419 == 5'd16) ? 1'b1 : 1'b0);

assign hkern_1_fu_526_p2 = (hkern_reg_355 + 2'd1);

assign hout_1_fu_436_p2 = (hout_reg_311 + 8'd1);

assign init_idx_1_fu_478_p2 = (init_idx_reg_344 + 5'd1);

assign not_carry_fu_663_p2 = (p_Result_2_not_fu_658_p2 | newsignbit_reg_897);

assign output_1_V_V_din = out_val_V_q0;

assign output_2_V_V_din = out_val_V_q0;

assign overflow_fu_694_p2 = (tmp_10_fu_673_p2 & brmerge_i_i_fu_689_p2);

assign p_38_i_i_fu_678_p2 = (signbit_reg_876 & carry_fu_653_p2);

assign p_Result_2_not_fu_658_p2 = (tmp_13_reg_885 ^ 1'd1);

assign p_Val2_3_fu_772_p1 = OP1_V_reg_838;

assign p_Val2_4_fu_600_p2 = ($signed(p_Val2_3_reg_866) + $signed(tmp_10_cast_fu_596_p1));

assign p_Val2_5_fu_613_p4 = {{p_Val2_4_fu_600_p2[22:7]}};

assign p_Val2_6_13_fu_739_p3 = ((underflow_fu_710_p2[0:0] === 1'b1) ? 16'd32768 : p_Val2_6_reg_891);

assign p_Val2_6_fu_634_p2 = (tmp_9_fu_623_p1 + p_Val2_5_fu_613_p4);

assign p_Val2_6_mux_fu_732_p3 = ((brmerge_i_i_i_fu_715_p2[0:0] === 1'b1) ? 16'd32767 : p_Val2_6_reg_891);

assign p_not_i_i_fu_683_p2 = (deleted_zeros_fu_668_p2 ^ 1'd1);

assign pkern_1_fu_550_p2 = (pkern_reg_377 + 4'd1);

assign pout_1_fu_566_p2 = (pout_reg_399 + 5'd1);

assign this_assign_1_fu_746_p3 = ((underflow_not_fu_726_p2[0:0] === 1'b1) ? p_Val2_6_mux_fu_732_p3 : p_Val2_6_13_fu_739_p3);

assign tmp1_demorgan_fu_704_p2 = (p_38_i_i_fu_678_p2 | brmerge40_demorgan_i_fu_700_p2);

assign tmp2_fu_721_p2 = (tmp_10_fu_673_p2 | newsignbit_reg_897);

assign tmp_10_cast_fu_596_p1 = $signed(tmp_3_fu_588_p3);

assign tmp_10_fu_673_p2 = (signbit_reg_876 ^ 1'd1);

assign tmp_2_fu_502_p1 = init_idx_reg_344;

assign tmp_3_fu_588_p3 = {{out_val_V_q0}, {7'd0}};

assign tmp_4_cast_fu_515_p1 = $signed(tmp_4_fu_507_p3);

assign tmp_4_fu_507_p3 = {{bias_1_V_V_dout}, {1'd0}};

assign tmp_5_fu_572_p1 = pout_reg_399;

assign tmp_6_fu_484_p1 = init_idx_reg_344;

assign tmp_7_fu_648_p2 = (newsignbit_reg_897 ^ 1'd1);

assign tmp_8_cast_fu_497_p1 = $signed(tmp_8_fu_489_p3);

assign tmp_8_fu_489_p3 = {{bias_2_V_V_dout}, {1'd0}};

assign tmp_9_fu_623_p1 = tmp_12_reg_871;

assign tmp_fu_466_p2 = ((branch_reg_333 == 2'd0) ? 1'b1 : 1'b0);

assign tmp_s_fu_767_p1 = wr_idx_reg_419;

assign underflow_fu_710_p2 = (tmp1_demorgan_fu_704_p2 ^ signbit_reg_876);

assign underflow_not_fu_726_p2 = (tmp2_fu_721_p2 | p_38_i_i_fu_678_p2);

assign wkern_1_fu_538_p2 = (wkern_reg_366 + 2'd1);

assign wout_1_fu_448_p2 = (wout_reg_322 + 8'd1);

assign wr_idx_1_fu_761_p2 = (wr_idx_reg_419 + 5'd1);

endmodule //conv_3_5