// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="line_buffer_0,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.731000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=0,HLS_SYN_FF=233,HLS_SYN_LUT=707}" *)

module line_buffer_0 (
        ap_clk,
        ap_rst,
        input_V_V_dout,
        input_V_V_empty_n,
        input_V_V_read,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_pp1_stage0 = 9'd128;
parameter    ap_ST_fsm_state10 = 9'd256;

input   ap_clk;
input   ap_rst;
input  [15:0] input_V_V_dout;
input   input_V_V_empty_n;
output   input_V_V_read;
output  [15:0] output_V_V_din;
input   output_V_V_full_n;
output   output_V_V_write;

reg input_V_V_read;
reg output_V_V_write;

reg    input_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state5;
reg   [0:0] out_of_bounds_reg_729;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] exitcond4_reg_340;
reg   [1:0] pkern_reg_351;
reg   [0:0] wkern_reg_362;
reg   [1:0] indvar_flatten9_reg_373;
wire   [1:0] tmp_1_fu_384_p2;
wire    ap_CS_fsm_state2;
wire   [15:0] win_118_cast_fu_396_p1;
wire    ap_CS_fsm_state3;
wire   [7:0] wout_mid2_fu_406_p3;
reg   [7:0] wout_mid2_reg_693;
wire   [7:0] hout_cast7_mid2_v_fu_414_p3;
reg   [7:0] hout_cast7_mid2_v_reg_699;
wire   [15:0] hout_cast7_mid2_fu_422_p1;
reg   [15:0] hout_cast7_mid2_reg_704;
wire   [15:0] wout_cast6_fu_426_p1;
reg   [15:0] wout_cast6_reg_710;
wire   [13:0] indvar_flatten_next7_fu_430_p2;
reg   [13:0] indvar_flatten_next7_reg_715;
wire   [14:0] tmp_2_fu_436_p1;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_6_fu_456_p2;
reg   [0:0] tmp_6_reg_725;
wire   [0:0] out_of_bounds_fu_522_p2;
wire   [1:0] pin_1_fu_528_p2;
reg    ap_block_state5;
wire   [0:0] tmp_4_fu_567_p2;
wire    ap_CS_fsm_state6;
wire   [15:0] hin_fu_573_p2;
wire   [0:0] tmp_10_fu_580_p2;
wire   [15:0] win_fu_585_p2;
wire   [0:0] wkern_mid2_fu_605_p3;
reg   [0:0] wkern_mid2_reg_759;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state8_pp1_stage0_iter0;
reg    ap_block_state9_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [1:0] pkern_1_fu_639_p2;
reg   [1:0] pkern_1_reg_769;
wire   [1:0] indvar_flatten_next_fu_645_p2;
reg   [1:0] indvar_flatten_next_reg_774;
wire   [0:0] exitcond_fu_651_p2;
reg   [0:0] exitcond_reg_779;
wire   [0:0] exitcond_flatten_fu_657_p2;
reg   [0:0] exitcond_flatten_reg_784;
wire   [7:0] wout_1_fu_663_p2;
wire    ap_CS_fsm_state10;
wire   [0:0] exitcond2_fu_668_p2;
reg    ap_block_pp1_stage0_subdone;
reg   [8:0] buffer_val_0_V_address0;
reg    buffer_val_0_V_ce0;
reg    buffer_val_0_V_we0;
wire   [15:0] buffer_val_0_V_q0;
reg   [1:0] tmp_reg_168;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_3_fu_390_p2;
reg   [0:0] exitcond1_reg_179;
wire   [0:0] exitcond_flatten8_fu_674_p2;
reg   [14:0] win_4_reg_303;
reg   [14:0] win_s_reg_190;
reg   [15:0] hin_4_reg_291;
reg   [15:0] hin_s_reg_201;
reg   [7:0] wout_reg_213;
reg   [7:0] hout_reg_224;
reg   [13:0] indvar_flatten_reg_235;
reg   [15:0] hin_2_reg_247;
wire    ap_CS_fsm_state7;
reg   [15:0] win_2_reg_258;
reg   [1:0] pin_reg_268;
wire   [0:0] exitcond3_fu_561_p2;
reg   [15:0] ap_phi_mux_tmp_11_phi_fu_282_p4;
reg   [15:0] hin_3_reg_315;
reg   [15:0] win_3_reg_327;
reg   [0:0] ap_phi_mux_exitcond4_phi_fu_344_p4;
reg   [1:0] ap_phi_mux_pkern_phi_fu_355_p4;
reg   [0:0] ap_phi_mux_wkern_phi_fu_366_p4;
reg   [1:0] ap_phi_mux_indvar_flatten9_phi_fu_377_p4;
wire   [63:0] tmp_20_cast_fu_556_p1;
wire   [63:0] tmp_21_fu_634_p1;
reg    ap_block_pp1_stage0_01001;
wire   [7:0] hout_1_fu_400_p2;
wire   [0:0] slt_fu_445_p2;
wire   [0:0] tmp_5_fu_440_p2;
wire   [0:0] rev_fu_450_p2;
wire   [8:0] tmp_8_fu_470_p4;
wire   [8:0] tmp_12_fu_494_p4;
wire   [0:0] tmp_7_fu_462_p3;
wire   [0:0] icmp_fu_480_p2;
wire   [0:0] tmp_9_fu_486_p3;
wire   [0:0] icmp1_fu_504_p2;
wire   [0:0] tmp2_fu_516_p2;
wire   [0:0] tmp1_fu_510_p2;
wire   [8:0] tmp_14_fu_534_p3;
wire   [9:0] tmp_19_cast_fu_542_p1;
wire   [9:0] tmp_15_fu_546_p1;
wire   [9:0] tmp_18_fu_550_p2;
wire   [0:0] wkern_1_fu_591_p2;
wire   [6:0] tmp_18_cast_fu_616_p1;
wire   [6:0] tmp_19_fu_613_p1;
wire   [1:0] pkern_mid2_fu_597_p3;
wire   [6:0] col_assign_fu_620_p2;
wire   [8:0] tmp_20_fu_626_p3;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
end

line_buffer_0_bufbkb #(
    .DataWidth( 16 ),
    .AddressRange( 384 ),
    .AddressWidth( 9 ))
buffer_val_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_0_V_address0),
    .ce0(buffer_val_0_V_ce0),
    .we0(buffer_val_0_V_we0),
    .d0(ap_phi_mux_tmp_11_phi_fu_282_p4),
    .q0(buffer_val_0_V_q0)
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
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((exitcond_flatten_fu_657_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_725 == 1'd0) | ((tmp_10_fu_580_p2 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0))))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_725 == 1'd0) | ((tmp_10_fu_580_p2 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0))))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        exitcond1_reg_179 <= 1'd0;
    end else if (((exitcond_flatten8_fu_674_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        exitcond1_reg_179 <= exitcond2_fu_668_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_784 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond4_reg_340 <= exitcond_reg_779;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_725 == 1'd0) | ((tmp_10_fu_580_p2 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0))))) begin
        exitcond4_reg_340 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hin_2_reg_247 <= hin_s_reg_201;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        hin_2_reg_247 <= hin_3_reg_315;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_6_reg_725 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        if (((tmp_10_fu_580_p2 == 1'd0) & (tmp_4_fu_567_p2 == 1'd0))) begin
            hin_3_reg_315 <= hin_fu_573_p2;
        end else if ((tmp_4_fu_567_p2 == 1'd1)) begin
            hin_3_reg_315 <= hin_2_reg_247;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_10_fu_580_p2 == 1'd1) & (tmp_6_reg_725 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        hin_4_reg_291 <= hin_fu_573_p2;
    end else if (((tmp_6_fu_456_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hin_4_reg_291 <= hin_2_reg_247;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        hin_s_reg_201 <= 16'd0;
    end else if (((exitcond_flatten8_fu_674_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        hin_s_reg_201 <= hin_4_reg_291;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        hout_reg_224 <= 8'd0;
    end else if (((exitcond_flatten8_fu_674_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        hout_reg_224 <= hout_cast7_mid2_v_reg_699;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_784 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten9_reg_373 <= indvar_flatten_next_reg_774;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_725 == 1'd0) | ((tmp_10_fu_580_p2 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0))))) begin
        indvar_flatten9_reg_373 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_reg_235 <= 14'd0;
    end else if (((exitcond_flatten8_fu_674_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        indvar_flatten_reg_235 <= indvar_flatten_next7_reg_715;
    end
end

always @ (posedge ap_clk) begin
    if ((~((out_of_bounds_reg_729 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond3_fu_561_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        pin_reg_268 <= pin_1_fu_528_p2;
    end else if (((tmp_6_fu_456_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        pin_reg_268 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_784 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        pkern_reg_351 <= pkern_1_reg_769;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_725 == 1'd0) | ((tmp_10_fu_580_p2 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0))))) begin
        pkern_reg_351 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_390_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_168 <= tmp_1_fu_384_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_168 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        win_2_reg_258 <= win_118_cast_fu_396_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        win_2_reg_258 <= win_3_reg_327;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_6_reg_725 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        if (((tmp_10_fu_580_p2 == 1'd0) & (tmp_4_fu_567_p2 == 1'd0))) begin
            win_3_reg_327 <= 16'd0;
        end else if ((tmp_4_fu_567_p2 == 1'd1)) begin
            win_3_reg_327 <= win_fu_585_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_10_fu_580_p2 == 1'd1) & (tmp_6_reg_725 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        win_4_reg_303 <= 15'd0;
    end else if (((tmp_6_fu_456_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        win_4_reg_303 <= tmp_2_fu_436_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        win_s_reg_190 <= 15'd0;
    end else if (((exitcond_flatten8_fu_674_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        win_s_reg_190 <= win_4_reg_303;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_784 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        wkern_reg_362 <= wkern_mid2_reg_759;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_725 == 1'd0) | ((tmp_10_fu_580_p2 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0))))) begin
        wkern_reg_362 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_213 <= 8'd0;
    end else if (((exitcond_flatten8_fu_674_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        wout_reg_213 <= wout_1_fu_663_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_784 <= exitcond_flatten_fu_657_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_reg_779 <= exitcond_fu_651_p2;
        indvar_flatten_next_reg_774 <= indvar_flatten_next_fu_645_p2;
        pkern_1_reg_769 <= pkern_1_fu_639_p2;
        wkern_mid2_reg_759 <= wkern_mid2_fu_605_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hout_cast7_mid2_reg_704[7 : 0] <= hout_cast7_mid2_fu_422_p1[7 : 0];
        hout_cast7_mid2_v_reg_699 <= hout_cast7_mid2_v_fu_414_p3;
        indvar_flatten_next7_reg_715 <= indvar_flatten_next7_fu_430_p2;
        wout_cast6_reg_710[7 : 0] <= wout_cast6_fu_426_p1[7 : 0];
        wout_mid2_reg_693 <= wout_mid2_fu_406_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_6_fu_456_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_of_bounds_reg_729 <= out_of_bounds_fu_522_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_6_reg_725 <= tmp_6_fu_456_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_784 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond4_phi_fu_344_p4 = exitcond_reg_779;
    end else begin
        ap_phi_mux_exitcond4_phi_fu_344_p4 = exitcond4_reg_340;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_784 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten9_phi_fu_377_p4 = indvar_flatten_next_reg_774;
    end else begin
        ap_phi_mux_indvar_flatten9_phi_fu_377_p4 = indvar_flatten9_reg_373;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_784 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_pkern_phi_fu_355_p4 = pkern_1_reg_769;
    end else begin
        ap_phi_mux_pkern_phi_fu_355_p4 = pkern_reg_351;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((out_of_bounds_reg_729 == 1'd1)) begin
            ap_phi_mux_tmp_11_phi_fu_282_p4 = 16'd0;
        end else if ((out_of_bounds_reg_729 == 1'd0)) begin
            ap_phi_mux_tmp_11_phi_fu_282_p4 = input_V_V_dout;
        end else begin
            ap_phi_mux_tmp_11_phi_fu_282_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_tmp_11_phi_fu_282_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_784 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_wkern_phi_fu_366_p4 = wkern_mid2_reg_759;
    end else begin
        ap_phi_mux_wkern_phi_fu_366_p4 = wkern_reg_362;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_21_fu_634_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buffer_val_0_V_address0 = tmp_20_cast_fu_556_p1;
    end else begin
        buffer_val_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | (~((out_of_bounds_reg_729 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5)))) begin
        buffer_val_0_V_ce0 = 1'b1;
    end else begin
        buffer_val_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((out_of_bounds_reg_729 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        buffer_val_0_V_we0 = 1'b1;
    end else begin
        buffer_val_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((out_of_bounds_reg_729 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((out_of_bounds_reg_729 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (out_of_bounds_reg_729 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        input_V_V_read = 1'b1;
    end else begin
        input_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        output_V_V_write = 1'b1;
    end else begin
        output_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_3_fu_390_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_6_fu_456_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((out_of_bounds_reg_729 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond3_fu_561_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((out_of_bounds_reg_729 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond3_fu_561_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_725 == 1'd0) | ((tmp_10_fu_580_p2 == 1'd1) & (tmp_4_fu_567_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((exitcond_flatten8_fu_674_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((output_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((output_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((output_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state5 = ((out_of_bounds_reg_729 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

assign ap_block_state8_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp1_stage0_iter1 = (output_V_V_full_n == 1'b0);
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign col_assign_fu_620_p2 = (tmp_18_cast_fu_616_p1 + tmp_19_fu_613_p1);

assign exitcond2_fu_668_p2 = ((wout_1_fu_663_p2 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond3_fu_561_p2 = ((pin_reg_268 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_flatten8_fu_674_p2 = ((indvar_flatten_reg_235 == 14'd16383) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_657_p2 = ((ap_phi_mux_indvar_flatten9_phi_fu_377_p4 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_fu_651_p2 = ((pkern_1_fu_639_p2 == 2'd3) ? 1'b1 : 1'b0);

assign hin_fu_573_p2 = (hin_2_reg_247 + 16'd1);

assign hout_1_fu_400_p2 = (hout_reg_224 + 8'd1);

assign hout_cast7_mid2_fu_422_p1 = hout_cast7_mid2_v_fu_414_p3;

assign hout_cast7_mid2_v_fu_414_p3 = ((exitcond1_reg_179[0:0] === 1'b1) ? hout_1_fu_400_p2 : hout_reg_224);

assign icmp1_fu_504_p2 = (($signed(tmp_12_fu_494_p4) > $signed(9'd0)) ? 1'b1 : 1'b0);

assign icmp_fu_480_p2 = (($signed(tmp_8_fu_470_p4) > $signed(9'd0)) ? 1'b1 : 1'b0);

assign indvar_flatten_next7_fu_430_p2 = (indvar_flatten_reg_235 + 14'd1);

assign indvar_flatten_next_fu_645_p2 = (2'd1 + ap_phi_mux_indvar_flatten9_phi_fu_377_p4);

assign out_of_bounds_fu_522_p2 = (tmp2_fu_516_p2 | tmp1_fu_510_p2);

assign output_V_V_din = buffer_val_0_V_q0;

assign pin_1_fu_528_p2 = (pin_reg_268 + 2'd1);

assign pkern_1_fu_639_p2 = (2'd1 + pkern_mid2_fu_597_p3);

assign pkern_mid2_fu_597_p3 = ((ap_phi_mux_exitcond4_phi_fu_344_p4[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_pkern_phi_fu_355_p4);

assign rev_fu_450_p2 = (slt_fu_445_p2 ^ 1'd1);

assign slt_fu_445_p2 = (($signed(wout_cast6_reg_710) < $signed(win_2_reg_258)) ? 1'b1 : 1'b0);

assign tmp1_fu_510_p2 = (tmp_7_fu_462_p3 | icmp_fu_480_p2);

assign tmp2_fu_516_p2 = (tmp_9_fu_486_p3 | icmp1_fu_504_p2);

assign tmp_10_fu_580_p2 = (($signed(hin_fu_573_p2) > $signed(hout_cast7_mid2_reg_704)) ? 1'b1 : 1'b0);

assign tmp_12_fu_494_p4 = {{win_2_reg_258[15:7]}};

assign tmp_14_fu_534_p3 = {{pin_reg_268}, {7'd0}};

assign tmp_15_fu_546_p1 = win_2_reg_258[9:0];

assign tmp_18_cast_fu_616_p1 = wkern_mid2_fu_605_p3;

assign tmp_18_fu_550_p2 = (tmp_19_cast_fu_542_p1 + tmp_15_fu_546_p1);

assign tmp_19_cast_fu_542_p1 = tmp_14_fu_534_p3;

assign tmp_19_fu_613_p1 = wout_mid2_reg_693[6:0];

assign tmp_1_fu_384_p2 = (tmp_reg_168 + 2'd1);

assign tmp_20_cast_fu_556_p1 = tmp_18_fu_550_p2;

assign tmp_20_fu_626_p3 = {{pkern_mid2_fu_597_p3}, {col_assign_fu_620_p2}};

assign tmp_21_fu_634_p1 = tmp_20_fu_626_p3;

assign tmp_2_fu_436_p1 = win_2_reg_258[14:0];

assign tmp_3_fu_390_p2 = ((tmp_reg_168 == 2'd2) ? 1'b1 : 1'b0);

assign tmp_4_fu_567_p2 = (($signed(win_2_reg_258) < $signed(16'd127)) ? 1'b1 : 1'b0);

assign tmp_5_fu_440_p2 = (($signed(hin_2_reg_247) < $signed(hout_cast7_mid2_reg_704)) ? 1'b1 : 1'b0);

assign tmp_6_fu_456_p2 = (tmp_5_fu_440_p2 | rev_fu_450_p2);

assign tmp_7_fu_462_p3 = hin_2_reg_247[32'd15];

assign tmp_8_fu_470_p4 = {{hin_2_reg_247[15:7]}};

assign tmp_9_fu_486_p3 = win_2_reg_258[32'd15];

assign win_118_cast_fu_396_p1 = win_s_reg_190;

assign win_fu_585_p2 = (win_2_reg_258 + 16'd1);

assign wkern_1_fu_591_p2 = (ap_phi_mux_wkern_phi_fu_366_p4 ^ 1'd1);

assign wkern_mid2_fu_605_p3 = ((ap_phi_mux_exitcond4_phi_fu_344_p4[0:0] === 1'b1) ? wkern_1_fu_591_p2 : ap_phi_mux_wkern_phi_fu_366_p4);

assign wout_1_fu_663_p2 = (wout_mid2_reg_693 + 8'd1);

assign wout_cast6_fu_426_p1 = wout_mid2_fu_406_p3;

assign wout_mid2_fu_406_p3 = ((exitcond1_reg_179[0:0] === 1'b1) ? 8'd0 : wout_reg_213);

always @ (posedge ap_clk) begin
    hout_cast7_mid2_reg_704[15:8] <= 8'b00000000;
    wout_cast6_reg_710[15:8] <= 8'b00000000;
end

endmodule //line_buffer_0
