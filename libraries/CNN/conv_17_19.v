// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv_17_19,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.576500,HLS_SYN_LAT=65731093,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=1,HLS_SYN_FF=177,HLS_SYN_LUT=825}" *)

module conv_17_19 (
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
reg   [0:0] tmp_reg_801;
wire   [0:0] exitcond7_fu_542_p2;
reg    input_2_V_V_blk_n;
reg    output_1_V_V_blk_n;
wire    ap_CS_fsm_state14;
reg    output_2_V_V_blk_n;
reg    weight_1_V_V_blk_n;
wire    ap_CS_fsm_state9;
wire   [0:0] exitcond8_fu_558_p2;
reg    weight_2_V_V_blk_n;
reg    bias_1_V_V_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond4_fu_470_p2;
reg    bias_2_V_V_blk_n;
wire   [4:0] hout_1_fu_434_p2;
reg   [4:0] hout_1_reg_780;
wire    ap_CS_fsm_state2;
wire   [4:0] wout_1_fu_446_p2;
reg   [4:0] wout_1_reg_788;
wire    ap_CS_fsm_state3;
wire   [1:0] branch_1_fu_458_p2;
reg   [1:0] branch_1_reg_796;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_fu_464_p2;
wire   [0:0] exitcond3_fu_452_p2;
wire   [6:0] init_idx_1_fu_476_p2;
reg    ap_predicate_op64_read_state5;
reg    ap_predicate_op71_read_state5;
reg    ap_block_state5;
wire   [1:0] hkern_1_fu_524_p2;
reg   [1:0] hkern_1_reg_816;
wire    ap_CS_fsm_state6;
wire   [1:0] wkern_1_fu_536_p2;
reg   [1:0] wkern_1_reg_824;
wire    ap_CS_fsm_state7;
wire   [5:0] pkern_1_fu_548_p2;
reg   [5:0] pkern_1_reg_832;
reg    ap_predicate_op103_read_state8;
reg    ap_predicate_op105_read_state8;
reg    ap_block_state8;
wire  signed [23:0] OP1_V_fu_554_p1;
reg  signed [23:0] OP1_V_reg_837;
wire   [6:0] pout_1_fu_564_p2;
reg   [6:0] pout_1_reg_845;
reg    ap_predicate_op118_read_state9;
reg    ap_predicate_op120_read_state9;
reg    ap_block_state9;
reg   [5:0] out_val_V_addr_3_reg_860;
wire  signed [23:0] p_Val2_3_fu_771_p2;
reg  signed [23:0] p_Val2_3_reg_865;
wire    ap_CS_fsm_state10;
reg   [0:0] tmp_12_reg_870;
wire   [0:0] signbit_fu_603_p3;
reg   [0:0] signbit_reg_875;
wire    ap_CS_fsm_state11;
wire   [0:0] tmp_13_fu_624_p3;
reg   [0:0] tmp_13_reg_883;
wire   [15:0] p_Val2_6_fu_632_p2;
reg   [15:0] p_Val2_6_reg_888;
wire   [0:0] newsignbit_fu_638_p3;
reg   [0:0] newsignbit_reg_894;
wire   [0:0] p_38_i_i_fu_658_p2;
reg   [0:0] p_38_i_i_reg_902;
wire   [6:0] wr_idx_1_fu_760_p2;
reg   [6:0] wr_idx_1_reg_911;
wire    ap_CS_fsm_state13;
wire   [0:0] exitcond_fu_754_p2;
reg   [5:0] out_val_V_address0;
reg    out_val_V_ce0;
reg    out_val_V_we0;
reg   [15:0] out_val_V_d0;
wire   [15:0] out_val_V_q0;
reg   [4:0] hout_reg_309;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_440_p2;
reg   [4:0] wout_reg_320;
wire   [0:0] exitcond1_fu_428_p2;
reg   [1:0] branch_reg_331;
reg   [6:0] init_idx_reg_342;
reg   [1:0] hkern_reg_353;
wire   [0:0] exitcond6_fu_530_p2;
reg   [1:0] wkern_reg_364;
wire   [0:0] exitcond5_fu_518_p2;
reg   [5:0] pkern_reg_375;
reg   [15:0] ap_phi_mux_p_s_phi_fu_389_p4;
reg   [6:0] pout_reg_397;
wire    ap_CS_fsm_state12;
reg  signed [7:0] p_1_reg_408;
reg   [6:0] wr_idx_reg_417;
reg    ap_block_state14;
wire   [63:0] tmp_6_fu_482_p1;
wire   [63:0] tmp_2_fu_500_p1;
wire   [63:0] tmp_5_fu_570_p1;
wire   [63:0] tmp_s_fu_766_p1;
wire  signed [15:0] tmp_8_cast_fu_495_p1;
wire  signed [15:0] tmp_4_cast_fu_513_p1;
wire   [15:0] this_assign_1_fu_745_p3;
wire   [8:0] tmp_8_fu_487_p3;
wire   [8:0] tmp_4_fu_505_p3;
wire   [22:0] tmp_3_fu_586_p3;
wire  signed [23:0] tmp_10_cast_fu_594_p1;
(* use_dsp48 = "no" *) wire   [23:0] p_Val2_4_fu_598_p2;
wire   [15:0] tmp_9_fu_621_p1;
wire   [15:0] p_Val2_5_fu_611_p4;
wire   [0:0] tmp_7_fu_646_p2;
wire   [0:0] carry_fu_652_p2;
wire   [0:0] p_Result_2_not_fu_664_p2;
wire   [0:0] not_carry_fu_669_p2;
wire   [0:0] deleted_zeros_fu_674_p2;
wire   [0:0] p_not_i_i_fu_684_p2;
wire   [0:0] brmerge_i_i_fu_690_p2;
wire   [0:0] tmp_10_fu_679_p2;
wire   [0:0] brmerge40_demorgan_i_fu_701_p2;
wire   [0:0] tmp1_demorgan_fu_705_p2;
wire   [0:0] underflow_fu_710_p2;
wire   [0:0] overflow_fu_695_p2;
wire   [0:0] tmp2_fu_721_p2;
wire   [0:0] brmerge_i_i_i_fu_715_p2;
wire   [0:0] underflow_not_fu_726_p2;
wire   [15:0] p_Val2_6_mux_fu_731_p3;
wire   [15:0] p_Val2_6_13_fu_738_p3;
wire  signed [15:0] p_Val2_3_fu_771_p1;
reg   [13:0] ap_NS_fsm;
reg    ap_condition_202;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
end

conv_17_19_out_vabkb #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
out_val_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(out_val_V_address0),
    .ce0(out_val_V_ce0),
    .we0(out_val_V_we0),
    .d0(out_val_V_d0),
    .q0(out_val_V_q0)
);

conv_17_19_mul_mucud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 24 ))
conv_17_19_mul_mucud_U1(
    .din0(p_1_reg_408),
    .din1(p_Val2_3_fu_771_p1),
    .dout(p_Val2_3_fu_771_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_440_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        branch_reg_331 <= 2'd0;
    end else if (((exitcond_fu_754_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
        branch_reg_331 <= branch_1_reg_796;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        hkern_reg_353 <= 2'd0;
    end else if (((exitcond6_fu_530_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        hkern_reg_353 <= hkern_1_reg_816;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_440_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        hout_reg_309 <= hout_1_reg_780;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hout_reg_309 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_452_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        init_idx_reg_342 <= 7'd0;
    end else if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_470_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        init_idx_reg_342 <= init_idx_1_fu_476_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_202)) begin
        if ((tmp_reg_801 == 1'd0)) begin
            p_1_reg_408 <= weight_2_V_V_dout;
        end else if ((tmp_reg_801 == 1'd1)) begin
            p_1_reg_408 <= weight_1_V_V_dout;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_530_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        pkern_reg_375 <= 6'd0;
    end else if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_558_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
        pkern_reg_375 <= pkern_1_reg_832;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        pout_reg_397 <= pout_1_reg_845;
    end else if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_542_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        pout_reg_397 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_542_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        wkern_reg_364 <= wkern_1_reg_824;
    end else if (((exitcond5_fu_518_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        wkern_reg_364 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_428_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_320 <= 5'd0;
    end else if (((exitcond3_fu_452_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        wout_reg_320 <= wout_1_reg_788;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_518_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        wr_idx_reg_417 <= 7'd0;
    end else if ((~(((tmp_reg_801 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_801 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state14))) begin
        wr_idx_reg_417 <= wr_idx_1_reg_911;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_542_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        OP1_V_reg_837 <= OP1_V_fu_554_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        branch_1_reg_796 <= branch_1_fu_458_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        hkern_1_reg_816 <= hkern_1_fu_524_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hout_1_reg_780 <= hout_1_fu_434_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        newsignbit_reg_894 <= p_Val2_6_fu_632_p2[32'd15];
        p_38_i_i_reg_902 <= p_38_i_i_fu_658_p2;
        p_Val2_6_reg_888 <= p_Val2_6_fu_632_p2;
        signbit_reg_875 <= p_Val2_4_fu_598_p2[32'd23];
        tmp_13_reg_883 <= p_Val2_4_fu_598_p2[32'd22];
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_558_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        out_val_V_addr_3_reg_860 <= tmp_5_fu_570_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_Val2_3_reg_865 <= p_Val2_3_fu_771_p2;
        tmp_12_reg_870 <= p_Val2_3_fu_771_p2[32'd6];
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state8))) begin
        pkern_1_reg_832 <= pkern_1_fu_548_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (1'b1 == ap_CS_fsm_state9))) begin
        pout_1_reg_845 <= pout_1_fu_564_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_452_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_reg_801 <= tmp_fu_464_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        wkern_1_reg_824 <= wkern_1_fu_536_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wout_1_reg_788 <= wout_1_fu_446_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        wr_idx_1_reg_911 <= wr_idx_1_fu_760_p2;
    end
end

always @ (*) begin
    if (((exitcond7_fu_542_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        if ((tmp_reg_801 == 1'd0)) begin
            ap_phi_mux_p_s_phi_fu_389_p4 = input_2_V_V_dout;
        end else if ((tmp_reg_801 == 1'd1)) begin
            ap_phi_mux_p_s_phi_fu_389_p4 = input_1_V_V_dout;
        end else begin
            ap_phi_mux_p_s_phi_fu_389_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_s_phi_fu_389_p4 = 'bx;
    end
end

always @ (*) begin
    if (((exitcond4_fu_470_p2 == 1'd0) & (tmp_reg_801 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
    if (((exitcond4_fu_470_p2 == 1'd0) & (tmp_reg_801 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
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
    if (((exitcond7_fu_542_p2 == 1'd0) & (tmp_reg_801 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
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
    if (((exitcond7_fu_542_p2 == 1'd0) & (tmp_reg_801 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
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
        out_val_V_address0 = tmp_s_fu_766_p1;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10))) begin
        out_val_V_address0 = out_val_V_addr_3_reg_860;
    end else if (((ap_predicate_op71_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_address0 = tmp_2_fu_500_p1;
    end else if (((ap_predicate_op64_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_address0 = tmp_6_fu_482_p1;
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
        out_val_V_d0 = this_assign_1_fu_745_p3;
    end else if (((ap_predicate_op71_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_d0 = tmp_4_cast_fu_513_p1;
    end else if (((ap_predicate_op64_read_state5 == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_val_V_d0 = tmp_8_cast_fu_495_p1;
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
    if (((tmp_reg_801 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        output_1_V_V_blk_n = output_1_V_V_full_n;
    end else begin
        output_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_801 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_801 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (tmp_reg_801 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        output_1_V_V_write = 1'b1;
    end else begin
        output_1_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_reg_801 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        output_2_V_V_blk_n = output_2_V_V_full_n;
    end else begin
        output_2_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((tmp_reg_801 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_801 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (tmp_reg_801 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        output_2_V_V_write = 1'b1;
    end else begin
        output_2_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond8_fu_558_p2 == 1'd0) & (tmp_reg_801 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
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
    if (((exitcond8_fu_558_p2 == 1'd0) & (tmp_reg_801 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
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
            if (((exitcond1_fu_428_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond2_fu_440_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond3_fu_452_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_470_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if ((~(((ap_predicate_op71_read_state5 == 1'b1) & (bias_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op64_read_state5 == 1'b1) & (bias_2_V_V_empty_n == 1'b0))) & (exitcond4_fu_470_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond5_fu_518_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond6_fu_530_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_542_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else if ((~(((ap_predicate_op105_read_state8 == 1'b1) & (input_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op103_read_state8 == 1'b1) & (input_2_V_V_empty_n == 1'b0))) & (exitcond7_fu_542_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_558_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_558_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
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
            if (((exitcond_fu_754_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            if ((~(((tmp_reg_801 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_801 == 1'd1) & (output_1_V_V_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state14))) begin
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

assign OP1_V_fu_554_p1 = $signed(ap_phi_mux_p_s_phi_fu_389_p4);

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
    ap_block_state14 = (((tmp_reg_801 == 1'd0) & (output_2_V_V_full_n == 1'b0)) | ((tmp_reg_801 == 1'd1) & (output_1_V_V_full_n == 1'b0)));
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
    ap_condition_202 = (~(((ap_predicate_op120_read_state9 == 1'b1) & (weight_1_V_V_empty_n == 1'b0)) | ((ap_predicate_op118_read_state9 == 1'b1) & (weight_2_V_V_empty_n == 1'b0))) & (exitcond8_fu_558_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9));
end

always @ (*) begin
    ap_predicate_op103_read_state8 = ((exitcond7_fu_542_p2 == 1'd0) & (tmp_reg_801 == 1'd0));
end

always @ (*) begin
    ap_predicate_op105_read_state8 = ((exitcond7_fu_542_p2 == 1'd0) & (tmp_reg_801 == 1'd1));
end

always @ (*) begin
    ap_predicate_op118_read_state9 = ((exitcond8_fu_558_p2 == 1'd0) & (tmp_reg_801 == 1'd0));
end

always @ (*) begin
    ap_predicate_op120_read_state9 = ((exitcond8_fu_558_p2 == 1'd0) & (tmp_reg_801 == 1'd1));
end

always @ (*) begin
    ap_predicate_op64_read_state5 = ((exitcond4_fu_470_p2 == 1'd0) & (tmp_reg_801 == 1'd0));
end

always @ (*) begin
    ap_predicate_op71_read_state5 = ((exitcond4_fu_470_p2 == 1'd0) & (tmp_reg_801 == 1'd1));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign branch_1_fu_458_p2 = (branch_reg_331 + 2'd1);

assign brmerge40_demorgan_i_fu_701_p2 = (signbit_reg_875 & newsignbit_reg_894);

assign brmerge_i_i_fu_690_p2 = (p_not_i_i_fu_684_p2 | newsignbit_reg_894);

assign brmerge_i_i_i_fu_715_p2 = (underflow_fu_710_p2 | overflow_fu_695_p2);

assign carry_fu_652_p2 = (tmp_7_fu_646_p2 & tmp_13_fu_624_p3);

assign deleted_zeros_fu_674_p2 = (signbit_reg_875 ^ not_carry_fu_669_p2);

assign exitcond1_fu_428_p2 = ((hout_reg_309 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond2_fu_440_p2 = ((wout_reg_320 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond3_fu_452_p2 = ((branch_reg_331 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond4_fu_470_p2 = ((init_idx_reg_342 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond5_fu_518_p2 = ((hkern_reg_353 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond6_fu_530_p2 = ((wkern_reg_364 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond7_fu_542_p2 = ((pkern_reg_375 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond8_fu_558_p2 = ((pout_reg_397 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_fu_754_p2 = ((wr_idx_reg_417 == 7'd64) ? 1'b1 : 1'b0);

assign hkern_1_fu_524_p2 = (hkern_reg_353 + 2'd1);

assign hout_1_fu_434_p2 = (hout_reg_309 + 5'd1);

assign init_idx_1_fu_476_p2 = (init_idx_reg_342 + 7'd1);

assign newsignbit_fu_638_p3 = p_Val2_6_fu_632_p2[32'd15];

assign not_carry_fu_669_p2 = (p_Result_2_not_fu_664_p2 | newsignbit_reg_894);

assign output_1_V_V_din = out_val_V_q0;

assign output_2_V_V_din = out_val_V_q0;

assign overflow_fu_695_p2 = (tmp_10_fu_679_p2 & brmerge_i_i_fu_690_p2);

assign p_38_i_i_fu_658_p2 = (signbit_fu_603_p3 & carry_fu_652_p2);

assign p_Result_2_not_fu_664_p2 = (tmp_13_reg_883 ^ 1'd1);

assign p_Val2_3_fu_771_p1 = OP1_V_reg_837;

assign p_Val2_4_fu_598_p2 = ($signed(p_Val2_3_reg_865) + $signed(tmp_10_cast_fu_594_p1));

assign p_Val2_5_fu_611_p4 = {{p_Val2_4_fu_598_p2[22:7]}};

assign p_Val2_6_13_fu_738_p3 = ((underflow_fu_710_p2[0:0] === 1'b1) ? 16'd32768 : p_Val2_6_reg_888);

assign p_Val2_6_fu_632_p2 = (tmp_9_fu_621_p1 + p_Val2_5_fu_611_p4);

assign p_Val2_6_mux_fu_731_p3 = ((brmerge_i_i_i_fu_715_p2[0:0] === 1'b1) ? 16'd32767 : p_Val2_6_reg_888);

assign p_not_i_i_fu_684_p2 = (deleted_zeros_fu_674_p2 ^ 1'd1);

assign pkern_1_fu_548_p2 = (pkern_reg_375 + 6'd1);

assign pout_1_fu_564_p2 = (pout_reg_397 + 7'd1);

assign signbit_fu_603_p3 = p_Val2_4_fu_598_p2[32'd23];

assign this_assign_1_fu_745_p3 = ((underflow_not_fu_726_p2[0:0] === 1'b1) ? p_Val2_6_mux_fu_731_p3 : p_Val2_6_13_fu_738_p3);

assign tmp1_demorgan_fu_705_p2 = (p_38_i_i_reg_902 | brmerge40_demorgan_i_fu_701_p2);

assign tmp2_fu_721_p2 = (tmp_10_fu_679_p2 | newsignbit_reg_894);

assign tmp_10_cast_fu_594_p1 = $signed(tmp_3_fu_586_p3);

assign tmp_10_fu_679_p2 = (signbit_reg_875 ^ 1'd1);

assign tmp_13_fu_624_p3 = p_Val2_4_fu_598_p2[32'd22];

assign tmp_2_fu_500_p1 = init_idx_reg_342;

assign tmp_3_fu_586_p3 = {{out_val_V_q0}, {7'd0}};

assign tmp_4_cast_fu_513_p1 = $signed(tmp_4_fu_505_p3);

assign tmp_4_fu_505_p3 = {{bias_1_V_V_dout}, {1'd0}};

assign tmp_5_fu_570_p1 = pout_reg_397;

assign tmp_6_fu_482_p1 = init_idx_reg_342;

assign tmp_7_fu_646_p2 = (newsignbit_fu_638_p3 ^ 1'd1);

assign tmp_8_cast_fu_495_p1 = $signed(tmp_8_fu_487_p3);

assign tmp_8_fu_487_p3 = {{bias_2_V_V_dout}, {1'd0}};

assign tmp_9_fu_621_p1 = tmp_12_reg_870;

assign tmp_fu_464_p2 = ((branch_reg_331 == 2'd0) ? 1'b1 : 1'b0);

assign tmp_s_fu_766_p1 = wr_idx_reg_417;

assign underflow_fu_710_p2 = (tmp1_demorgan_fu_705_p2 ^ signbit_reg_875);

assign underflow_not_fu_726_p2 = (tmp2_fu_721_p2 | p_38_i_i_reg_902);

assign wkern_1_fu_536_p2 = (wkern_reg_364 + 2'd1);

assign wout_1_fu_446_p2 = (wout_reg_320 + 5'd1);

assign wr_idx_1_fu_760_p2 = (wr_idx_reg_417 + 7'd1);

endmodule //conv_17_19
