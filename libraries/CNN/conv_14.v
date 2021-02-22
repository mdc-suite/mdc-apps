// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="conv_14,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.576500,HLS_SYN_LAT=3980907,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=1,HLS_SYN_FF=217,HLS_SYN_LUT=593}" *)

module conv_14 (
        ap_clk,
        ap_rst_n,
        input_V_V_dout,
        input_V_V_empty_n,
        input_V_V_read,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write,
        weight_V_V_dout,
        weight_V_V_empty_n,
        weight_V_V_read,
        bias_V_V_dout,
        bias_V_V_empty_n,
        bias_V_V_read
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp0_stage0 = 8'd16;
parameter    ap_ST_fsm_state9 = 8'd32;
parameter    ap_ST_fsm_state10 = 8'd64;
parameter    ap_ST_fsm_state11 = 8'd128;

input   ap_clk;
input   ap_rst_n;
input  [15:0] input_V_V_dout;
input   input_V_V_empty_n;
output   input_V_V_read;
output  [15:0] output_V_V_din;
input   output_V_V_full_n;
output   output_V_V_write;
input  [7:0] weight_V_V_dout;
input   weight_V_V_empty_n;
output   weight_V_V_read;
input  [7:0] bias_V_V_dout;
input   bias_V_V_empty_n;
output   bias_V_V_read;

reg input_V_V_read;
reg output_V_V_write;
reg weight_V_V_read;
reg bias_V_V_read;

reg    ap_rst_n_inv;
reg    input_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state4;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_state11;
reg    weight_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    bias_V_V_blk_n;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond3_fu_282_p2;
reg   [5:0] pout_reg_254;
wire   [8:0] indvar_flatten_next7_fu_276_p2;
reg   [8:0] indvar_flatten_next7_reg_552;
wire    ap_CS_fsm_state2;
wire   [6:0] init_idx_1_fu_288_p2;
reg    ap_block_state3;
reg  signed [15:0] tmp_V_reg_565;
wire   [6:0] indvar_flatten_next_fu_312_p2;
reg   [6:0] indvar_flatten_next_reg_570;
reg  signed [7:0] tmp_V_1_reg_575;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_state7_pp0_stage0_iter2;
wire    ap_block_state8_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [5:0] out_val_V_addr_2_reg_580;
reg   [5:0] ap_reg_pp0_iter1_out_val_V_addr_2_reg_580;
reg   [5:0] ap_reg_pp0_iter2_out_val_V_addr_2_reg_580;
wire   [5:0] pout_1_fu_323_p2;
reg   [5:0] pout_1_reg_586;
wire   [0:0] exitcond7_fu_329_p2;
reg   [0:0] exitcond7_reg_591;
wire  signed [23:0] p_Val2_2_fu_545_p2;
reg  signed [23:0] p_Val2_2_reg_595;
reg   [0:0] tmp_10_reg_600;
wire   [0:0] tmp_8_fu_365_p3;
reg   [0:0] tmp_8_reg_605;
wire   [0:0] tmp_11_fu_386_p3;
reg   [0:0] tmp_11_reg_613;
wire   [15:0] p_Val2_5_fu_394_p2;
reg   [15:0] p_Val2_5_reg_618;
wire   [0:0] tmp_12_fu_400_p3;
reg   [0:0] tmp_12_reg_624;
wire   [0:0] p_38_i_i_fu_420_p2;
reg   [0:0] p_38_i_i_reg_632;
wire   [6:0] wr_idx_1_fu_528_p2;
reg   [6:0] wr_idx_1_reg_644;
wire    ap_CS_fsm_state10;
wire   [0:0] exitcond_fu_522_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg   [5:0] out_val_V_address0;
reg    out_val_V_ce0;
reg    out_val_V_we0;
wire   [15:0] out_val_V_d0;
wire   [15:0] out_val_V_q0;
reg   [5:0] out_val_V_address1;
reg    out_val_V_ce1;
reg    out_val_V_we1;
wire   [15:0] out_val_V_d1;
wire   [15:0] out_val_V_q1;
reg   [8:0] indvar_flatten_reg_219;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond_flatten8_fu_539_p2;
reg   [6:0] init_idx_reg_231;
reg   [6:0] indvar_flatten1_reg_242;
wire    ap_CS_fsm_state9;
wire   [0:0] exitcond_flatten_fu_516_p2;
reg   [5:0] ap_phi_mux_pout_phi_fu_258_p4;
reg   [6:0] wr_idx_reg_265;
wire   [63:0] tmp_fu_294_p1;
wire   [63:0] tmp_s_fu_318_p1;
wire   [63:0] tmp_5_fu_534_p1;
wire   [8:0] tmp_2_fu_299_p3;
wire   [22:0] tmp_1_fu_348_p3;
wire  signed [23:0] tmp_10_cast_fu_356_p1;
(* use_dsp48 = "no" *) wire   [23:0] p_Val2_3_fu_360_p2;
wire   [15:0] p_Val2_4_fu_373_p4;
wire   [15:0] tmp_9_fu_383_p1;
wire   [0:0] tmp_7_fu_408_p2;
wire   [0:0] carry_1_fu_414_p2;
wire   [0:0] p_Result_2_not_fu_426_p2;
wire   [0:0] not_carry_1_fu_431_p2;
wire   [0:0] deleted_zeros_fu_436_p2;
wire   [0:0] p_not_i_i_fu_446_p2;
wire   [0:0] brmerge_i_i_fu_452_p2;
wire   [0:0] tmp_6_fu_441_p2;
wire   [0:0] brmerge40_demorgan_i_fu_463_p2;
wire   [0:0] tmp1_demorgan_fu_467_p2;
wire   [0:0] underflow_fu_472_p2;
wire   [0:0] overflow_fu_457_p2;
wire   [0:0] tmp2_fu_483_p2;
wire   [0:0] brmerge_i_i_i_fu_477_p2;
wire   [0:0] underflow_not_fu_488_p2;
wire   [15:0] p_Val2_5_mux_fu_493_p3;
wire   [15:0] p_Val2_5_9_fu_500_p3;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
end

conv_14_out_val_V #(
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
    .q0(out_val_V_q0),
    .address1(out_val_V_address1),
    .ce1(out_val_V_ce1),
    .we1(out_val_V_we1),
    .d1(out_val_V_d1),
    .q1(out_val_V_q1)
);

conv_14_mul_mul_1bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
conv_14_mul_mul_1bkb_U1(
    .din0(tmp_V_reg_565),
    .din1(tmp_V_1_reg_575),
    .dout(p_Val2_2_fu_545_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond7_fu_329_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (input_V_V_empty_n == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((1'b1 == ap_CS_fsm_state4) & (input_V_V_empty_n == 1'b1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_516_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        indvar_flatten1_reg_242 <= indvar_flatten_next_reg_570;
    end else if ((~((exitcond3_fu_282_p2 == 1'd0) & (bias_V_V_empty_n == 1'b0)) & (exitcond3_fu_282_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvar_flatten1_reg_242 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten8_fu_539_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (exitcond_fu_522_p2 == 1'd1))) begin
        indvar_flatten_reg_219 <= indvar_flatten_next7_reg_552;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten_reg_219 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        init_idx_reg_231 <= 7'd0;
    end else if ((~((exitcond3_fu_282_p2 == 1'd0) & (bias_V_V_empty_n == 1'b0)) & (exitcond3_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        init_idx_reg_231 <= init_idx_1_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_reg_591 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pout_reg_254 <= pout_1_reg_586;
    end else if (((1'b1 == ap_CS_fsm_state4) & (input_V_V_empty_n == 1'b1))) begin
        pout_reg_254 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (exitcond_flatten_fu_516_p2 == 1'd1))) begin
        wr_idx_reg_265 <= 7'd0;
    end else if (((output_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        wr_idx_reg_265 <= wr_idx_1_reg_644;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_out_val_V_addr_2_reg_580 <= out_val_V_addr_2_reg_580;
        exitcond7_reg_591 <= exitcond7_fu_329_p2;
        out_val_V_addr_2_reg_580 <= tmp_s_fu_318_p1;
        p_Val2_2_reg_595 <= p_Val2_2_fu_545_p2;
        tmp_10_reg_600 <= p_Val2_2_fu_545_p2[32'd6];
        tmp_V_1_reg_575 <= weight_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_reg_pp0_iter2_out_val_V_addr_2_reg_580 <= ap_reg_pp0_iter1_out_val_V_addr_2_reg_580;
        p_38_i_i_reg_632 <= p_38_i_i_fu_420_p2;
        p_Val2_5_reg_618 <= p_Val2_5_fu_394_p2;
        tmp_11_reg_613 <= p_Val2_3_fu_360_p2[32'd22];
        tmp_12_reg_624 <= p_Val2_5_fu_394_p2[32'd15];
        tmp_8_reg_605 <= p_Val2_3_fu_360_p2[32'd23];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_next7_reg_552 <= indvar_flatten_next7_fu_276_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (input_V_V_empty_n == 1'b1))) begin
        indvar_flatten_next_reg_570 <= indvar_flatten_next_fu_312_p2;
        tmp_V_reg_565 <= input_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pout_1_reg_586 <= pout_1_fu_323_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        wr_idx_1_reg_644 <= wr_idx_1_fu_528_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond7_reg_591 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_pout_phi_fu_258_p4 = pout_1_reg_586;
    end else begin
        ap_phi_mux_pout_phi_fu_258_p4 = pout_reg_254;
    end
end

always @ (*) begin
    if (((exitcond3_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        bias_V_V_blk_n = bias_V_V_empty_n;
    end else begin
        bias_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((exitcond3_fu_282_p2 == 1'd0) & (bias_V_V_empty_n == 1'b0)) & (exitcond3_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        bias_V_V_read = 1'b1;
    end else begin
        bias_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (input_V_V_empty_n == 1'b1))) begin
        input_V_V_read = 1'b1;
    end else begin
        input_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        out_val_V_address0 = out_val_V_addr_2_reg_580;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        out_val_V_address0 = tmp_fu_294_p1;
    end else begin
        out_val_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        out_val_V_address1 = tmp_5_fu_534_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_val_V_address1 = ap_reg_pp0_iter2_out_val_V_addr_2_reg_580;
    end else begin
        out_val_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((~((exitcond3_fu_282_p2 == 1'd0) & (bias_V_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        out_val_V_ce0 = 1'b1;
    end else begin
        out_val_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        out_val_V_ce1 = 1'b1;
    end else begin
        out_val_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((exitcond3_fu_282_p2 == 1'd0) & (bias_V_V_empty_n == 1'b0)) & (exitcond3_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        out_val_V_we0 = 1'b1;
    end else begin
        out_val_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        out_val_V_we1 = 1'b1;
    end else begin
        out_val_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((output_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
        output_V_V_write = 1'b1;
    end else begin
        output_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weight_V_V_blk_n = weight_V_V_empty_n;
    end else begin
        weight_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weight_V_V_read = 1'b1;
    end else begin
        weight_V_V_read = 1'b0;
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
            if ((~((exitcond3_fu_282_p2 == 1'd0) & (bias_V_V_empty_n == 1'b0)) & (exitcond3_fu_282_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~((exitcond3_fu_282_p2 == 1'd0) & (bias_V_V_empty_n == 1'b0)) & (exitcond3_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (input_V_V_empty_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (exitcond_flatten_fu_516_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (exitcond_flatten8_fu_539_p2 == 1'd1) & (exitcond_fu_522_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((exitcond_flatten8_fu_539_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10) & (exitcond_fu_522_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((output_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((weight_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((weight_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_state3 = ((exitcond3_fu_282_p2 == 1'd0) & (bias_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter0 = (weight_V_V_empty_n == 1'b0);
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign brmerge40_demorgan_i_fu_463_p2 = (tmp_8_reg_605 & tmp_12_reg_624);

assign brmerge_i_i_fu_452_p2 = (tmp_12_reg_624 | p_not_i_i_fu_446_p2);

assign brmerge_i_i_i_fu_477_p2 = (underflow_fu_472_p2 | overflow_fu_457_p2);

assign carry_1_fu_414_p2 = (tmp_7_fu_408_p2 & tmp_11_fu_386_p3);

assign deleted_zeros_fu_436_p2 = (tmp_8_reg_605 ^ not_carry_1_fu_431_p2);

assign exitcond3_fu_282_p2 = ((init_idx_reg_231 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond7_fu_329_p2 = ((ap_phi_mux_pout_phi_fu_258_p4 == 6'd63) ? 1'b1 : 1'b0);

assign exitcond_flatten8_fu_539_p2 = ((indvar_flatten_reg_219 == 9'd440) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_516_p2 = ((indvar_flatten1_reg_242 == 7'd127) ? 1'b1 : 1'b0);

assign exitcond_fu_522_p2 = ((wr_idx_reg_265 == 7'd64) ? 1'b1 : 1'b0);

assign indvar_flatten_next7_fu_276_p2 = (indvar_flatten_reg_219 + 9'd1);

assign indvar_flatten_next_fu_312_p2 = (indvar_flatten1_reg_242 + 7'd1);

assign init_idx_1_fu_288_p2 = (init_idx_reg_231 + 7'd1);

assign not_carry_1_fu_431_p2 = (tmp_12_reg_624 | p_Result_2_not_fu_426_p2);

assign out_val_V_d0 = $signed(tmp_2_fu_299_p3);

assign out_val_V_d1 = ((underflow_not_fu_488_p2[0:0] === 1'b1) ? p_Val2_5_mux_fu_493_p3 : p_Val2_5_9_fu_500_p3);

assign output_V_V_din = out_val_V_q1;

assign overflow_fu_457_p2 = (tmp_6_fu_441_p2 & brmerge_i_i_fu_452_p2);

assign p_38_i_i_fu_420_p2 = (tmp_8_fu_365_p3 & carry_1_fu_414_p2);

assign p_Result_2_not_fu_426_p2 = (tmp_11_reg_613 ^ 1'd1);

assign p_Val2_3_fu_360_p2 = ($signed(tmp_10_cast_fu_356_p1) + $signed(p_Val2_2_reg_595));

assign p_Val2_4_fu_373_p4 = {{p_Val2_3_fu_360_p2[22:7]}};

assign p_Val2_5_9_fu_500_p3 = ((underflow_fu_472_p2[0:0] === 1'b1) ? 16'd32768 : p_Val2_5_reg_618);

assign p_Val2_5_fu_394_p2 = (p_Val2_4_fu_373_p4 + tmp_9_fu_383_p1);

assign p_Val2_5_mux_fu_493_p3 = ((brmerge_i_i_i_fu_477_p2[0:0] === 1'b1) ? 16'd32767 : p_Val2_5_reg_618);

assign p_not_i_i_fu_446_p2 = (deleted_zeros_fu_436_p2 ^ 1'd1);

assign pout_1_fu_323_p2 = (ap_phi_mux_pout_phi_fu_258_p4 + 6'd1);

assign tmp1_demorgan_fu_467_p2 = (p_38_i_i_reg_632 | brmerge40_demorgan_i_fu_463_p2);

assign tmp2_fu_483_p2 = (tmp_6_fu_441_p2 | tmp_12_reg_624);

assign tmp_10_cast_fu_356_p1 = $signed(tmp_1_fu_348_p3);

assign tmp_11_fu_386_p3 = p_Val2_3_fu_360_p2[32'd22];

assign tmp_12_fu_400_p3 = p_Val2_5_fu_394_p2[32'd15];

assign tmp_1_fu_348_p3 = {{out_val_V_q0}, {7'd0}};

assign tmp_2_fu_299_p3 = {{bias_V_V_dout}, {1'd0}};

assign tmp_5_fu_534_p1 = wr_idx_reg_265;

assign tmp_6_fu_441_p2 = (tmp_8_reg_605 ^ 1'd1);

assign tmp_7_fu_408_p2 = (tmp_12_fu_400_p3 ^ 1'd1);

assign tmp_8_fu_365_p3 = p_Val2_3_fu_360_p2[32'd23];

assign tmp_9_fu_383_p1 = tmp_10_reg_600;

assign tmp_fu_294_p1 = init_idx_reg_231;

assign tmp_s_fu_318_p1 = ap_phi_mux_pout_phi_fu_258_p4;

assign underflow_fu_472_p2 = (tmp_8_reg_605 ^ tmp1_demorgan_fu_467_p2);

assign underflow_not_fu_488_p2 = (tmp2_fu_483_p2 | p_38_i_i_reg_632);

assign wr_idx_1_fu_528_p2 = (wr_idx_reg_265 + 7'd1);

endmodule //conv_14