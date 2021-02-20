// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="line_buffer_3,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.379000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=6,HLS_SYN_DSP=0,HLS_SYN_FF=317,HLS_SYN_LUT=1060}" *)

module line_buffer_3 (
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
parameter    ap_ST_fsm_pp0_stage0 = 9'd16;
parameter    ap_ST_fsm_state7 = 9'd32;
parameter    ap_ST_fsm_state8 = 9'd64;
parameter    ap_ST_fsm_pp1_stage0 = 9'd128;
parameter    ap_ST_fsm_state11 = 9'd256;

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
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg   [0:0] out_of_bounds_reg_942;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [2:0] pin_reg_343;
reg   [0:0] exitcond_flatten3_reg_415;
reg   [0:0] exitcond4_reg_426;
reg   [3:0] pkern_reg_437;
reg   [1:0] wkern_reg_448;
reg   [5:0] indvar_flatten1_reg_459;
reg   [1:0] hkern_reg_470;
reg   [6:0] indvar_flatten2_reg_481;
wire   [2:0] tmp_1_fu_492_p2;
wire    ap_CS_fsm_state2;
wire   [15:0] win_138_cast_fu_504_p1;
wire    ap_CS_fsm_state3;
wire   [7:0] hout_mid2_fu_514_p3;
reg   [7:0] hout_mid2_reg_911;
wire   [15:0] tmp_4_cast_fu_528_p1;
reg   [15:0] tmp_4_cast_reg_916;
wire   [13:0] indvar_flatten_next1_fu_532_p2;
reg   [13:0] indvar_flatten_next1_reg_922;
wire   [14:0] tmp_2_fu_538_p1;
wire    ap_CS_fsm_state4;
wire   [7:0] wout_mid_fu_542_p3;
reg   [7:0] wout_mid_reg_932;
wire   [0:0] or_cond_fu_577_p2;
reg   [0:0] or_cond_reg_938;
wire   [0:0] out_of_bounds_fu_619_p2;
wire   [2:0] pin_1_fu_625_p2;
reg   [2:0] pin_1_reg_946;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] tmp_24_cast_fu_671_p1;
reg   [63:0] tmp_24_cast_reg_956;
reg   [10:0] buffer_val_1_V_addr_reg_961;
reg   [10:0] buffer_val_2_V_addr_reg_967;
wire   [0:0] exitcond3_fu_677_p2;
reg   [0:0] exitcond3_reg_973;
wire   [0:0] tmp_12_fu_683_p2;
wire    ap_CS_fsm_state7;
wire   [15:0] hin_fu_689_p2;
wire   [0:0] tmp_15_fu_696_p2;
wire   [15:0] win_fu_701_p2;
wire   [1:0] hkern_mid2_fu_733_p3;
reg   [1:0] hkern_mid2_reg_995;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state9_pp1_stage0_iter0;
reg    ap_block_state10_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [1:0] wkern_mid2_fu_761_p3;
reg   [1:0] wkern_mid2_reg_1001;
wire   [3:0] pkern_1_fu_825_p2;
reg   [3:0] pkern_1_reg_1021;
wire   [5:0] indvar_flatten_next_fu_837_p3;
reg   [5:0] indvar_flatten_next_reg_1026;
wire   [6:0] indvar_flatten_next2_fu_845_p2;
reg   [6:0] indvar_flatten_next2_reg_1031;
wire   [0:0] exitcond_fu_851_p2;
reg   [0:0] exitcond_reg_1036;
wire   [0:0] exitcond_flatten_fu_857_p2;
reg   [0:0] exitcond_flatten_reg_1041;
wire   [0:0] exitcond_flatten2_fu_863_p2;
reg   [0:0] exitcond_flatten2_reg_1046;
wire   [7:0] wout_1_fu_881_p2;
wire    ap_CS_fsm_state11;
wire   [0:0] exitcond2_fu_886_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp1_stage0_subdone;
reg   [10:0] buffer_val_0_V_address0;
reg    buffer_val_0_V_ce0;
reg    buffer_val_0_V_we0;
wire   [15:0] buffer_val_0_V_q0;
reg   [10:0] buffer_val_1_V_address0;
reg    buffer_val_1_V_ce0;
wire   [15:0] buffer_val_1_V_q0;
reg    buffer_val_1_V_ce1;
reg    buffer_val_1_V_we1;
reg   [10:0] buffer_val_2_V_address0;
reg    buffer_val_2_V_ce0;
wire   [15:0] buffer_val_2_V_q0;
reg    buffer_val_2_V_ce1;
reg    buffer_val_2_V_we1;
reg   [2:0] tmp_reg_241;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_3_fu_498_p2;
reg   [0:0] exitcond1_reg_252;
wire   [0:0] exitcond_flatten1_fu_892_p2;
reg   [14:0] win_4_reg_378;
reg   [14:0] win_s_reg_264;
reg   [15:0] hin_4_reg_366;
reg   [15:0] hin_s_reg_275;
reg   [7:0] wout_reg_287;
reg   [7:0] hout_reg_299;
reg   [13:0] indvar_flatten_reg_310;
reg   [15:0] hin_2_reg_322;
wire    ap_CS_fsm_state8;
reg   [15:0] win_2_reg_333;
reg   [2:0] ap_phi_mux_pin_phi_fu_347_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_tmp_13_reg_354;
reg   [15:0] ap_phi_reg_pp0_iter1_tmp_13_reg_354;
reg   [15:0] hin_3_reg_390;
reg   [15:0] win_3_reg_402;
reg   [0:0] ap_phi_mux_exitcond_flatten3_phi_fu_419_p4;
reg   [0:0] ap_phi_mux_exitcond4_phi_fu_430_p4;
reg   [3:0] ap_phi_mux_pkern_phi_fu_441_p4;
reg   [1:0] ap_phi_mux_wkern_phi_fu_452_p4;
reg   [5:0] ap_phi_mux_indvar_flatten1_phi_fu_463_p4;
reg   [1:0] ap_phi_mux_hkern_phi_fu_474_p4;
reg   [6:0] ap_phi_mux_indvar_flatten2_phi_fu_485_p4;
wire   [63:0] tmp_29_cast_fu_818_p1;
wire   [15:0] out_val_V_fu_869_p5;
reg    ap_block_pp1_stage0_01001;
wire   [7:0] hout_1_fu_508_p2;
wire   [7:0] tmp_4_fu_522_p2;
wire   [7:0] tmp_7_fu_550_p2;
wire   [15:0] tmp_7_cast_fu_556_p1;
wire   [0:0] slt_fu_560_p2;
wire   [0:0] rev_fu_566_p2;
wire   [0:0] tmp_5_fu_572_p2;
wire   [0:0] tmp_6_fu_583_p2;
wire   [0:0] tmp_9_fu_589_p2;
wire   [0:0] tmp_8_fu_595_p2;
wire   [0:0] tmp_10_fu_601_p2;
wire   [0:0] tmp2_fu_613_p2;
wire   [0:0] tmp1_fu_607_p2;
wire   [9:0] tmp_14_fu_631_p3;
wire   [3:0] tmp_16_fu_643_p3;
wire   [11:0] p_shl3_cast_fu_651_p1;
wire   [11:0] p_shl2_cast_fu_639_p1;
wire   [11:0] tmp_17_fu_655_p2;
wire   [11:0] tmp_18_fu_661_p1;
wire   [11:0] tmp_19_fu_665_p2;
wire   [0:0] not_exitcond_flatten_fu_721_p2;
wire   [1:0] hkern_1_fu_707_p2;
wire   [1:0] wkern_mid_fu_713_p3;
wire   [0:0] exitcond_mid_fu_727_p2;
wire   [0:0] tmp_21_fu_747_p2;
wire   [1:0] wkern_1_fu_741_p2;
wire   [3:0] pkern_mid2_fu_753_p3;
wire   [10:0] tmp_22_fu_769_p3;
wire   [4:0] tmp_23_fu_781_p3;
wire   [11:0] p_shl5_cast_fu_789_p1;
wire   [11:0] p_shl4_cast_fu_777_p1;
wire   [7:0] tmp_27_cast_fu_799_p1;
wire   [7:0] col_assign_fu_803_p2;
wire   [11:0] tmp_24_fu_793_p2;
wire   [11:0] tmp_22_cast_fu_808_p1;
wire   [11:0] tmp_25_fu_812_p2;
wire   [5:0] indvar_flatten_op_fu_831_p2;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_condition_120;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

line_buffer_3_bufbkb #(
    .DataWidth( 16 ),
    .AddressRange( 1040 ),
    .AddressWidth( 11 ))
buffer_val_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_0_V_address0),
    .ce0(buffer_val_0_V_ce0),
    .we0(buffer_val_0_V_we0),
    .d0(buffer_val_1_V_q0),
    .q0(buffer_val_0_V_q0)
);

line_buffer_3_bufcud #(
    .DataWidth( 16 ),
    .AddressRange( 1040 ),
    .AddressWidth( 11 ))
buffer_val_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_1_V_address0),
    .ce0(buffer_val_1_V_ce0),
    .q0(buffer_val_1_V_q0),
    .address1(buffer_val_1_V_addr_reg_961),
    .ce1(buffer_val_1_V_ce1),
    .we1(buffer_val_1_V_we1),
    .d1(buffer_val_2_V_q0)
);

line_buffer_3_bufcud #(
    .DataWidth( 16 ),
    .AddressRange( 1040 ),
    .AddressWidth( 11 ))
buffer_val_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_2_V_address0),
    .ce0(buffer_val_2_V_ce0),
    .q0(buffer_val_2_V_q0),
    .address1(buffer_val_2_V_addr_reg_967),
    .ce1(buffer_val_2_V_ce1),
    .we1(buffer_val_2_V_we1),
    .d1(ap_phi_reg_pp0_iter1_tmp_13_reg_354)
);

line_buffer_3_muxeOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 16 ))
line_buffer_3_muxeOg_U1(
    .din0(buffer_val_0_V_q0),
    .din1(buffer_val_1_V_q0),
    .din2(buffer_val_2_V_q0),
    .din3(hkern_mid2_reg_995),
    .dout(out_val_V_fu_869_p5)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond3_fu_677_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_577_p2 == 1'd1))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_577_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (exitcond_flatten2_fu_863_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_120)) begin
        if ((out_of_bounds_reg_942 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_354 <= 16'd0;
        end else if ((out_of_bounds_reg_942 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_354 <= input_V_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_354 <= ap_phi_reg_pp0_iter0_tmp_13_reg_354;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_498_p2 == 1'd1))) begin
        exitcond1_reg_252 <= 1'd0;
    end else if (((exitcond_flatten1_fu_892_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        exitcond1_reg_252 <= exitcond2_fu_886_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond4_reg_426 <= exitcond_reg_1036;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
        exitcond4_reg_426 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten3_reg_415 <= exitcond_flatten_reg_1041;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
        exitcond_flatten3_reg_415 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hin_2_reg_322 <= hin_s_reg_275;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hin_2_reg_322 <= hin_3_reg_390;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_938 == 1'd1))) begin
        if (((tmp_15_fu_696_p2 == 1'd0) & (tmp_12_fu_683_p2 == 1'd0))) begin
            hin_3_reg_390 <= hin_fu_689_p2;
        end else if ((tmp_12_fu_683_p2 == 1'd1)) begin
            hin_3_reg_390 <= hin_2_reg_322;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_577_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hin_4_reg_366 <= hin_2_reg_322;
    end else if (((tmp_12_fu_683_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_15_fu_696_p2 == 1'd1) & (or_cond_reg_938 == 1'd1))) begin
        hin_4_reg_366 <= hin_fu_689_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_498_p2 == 1'd1))) begin
        hin_s_reg_275 <= 16'd0;
    end else if (((exitcond_flatten1_fu_892_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        hin_s_reg_275 <= hin_4_reg_366;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        hkern_reg_470 <= hkern_mid2_reg_995;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
        hkern_reg_470 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_498_p2 == 1'd1))) begin
        hout_reg_299 <= 8'd0;
    end else if (((exitcond_flatten1_fu_892_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        hout_reg_299 <= hout_mid2_reg_911;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten1_reg_459 <= indvar_flatten_next_reg_1026;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
        indvar_flatten1_reg_459 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten2_reg_481 <= indvar_flatten_next2_reg_1031;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
        indvar_flatten2_reg_481 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_498_p2 == 1'd1))) begin
        indvar_flatten_reg_310 <= 14'd0;
    end else if (((exitcond_flatten1_fu_892_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        indvar_flatten_reg_310 <= indvar_flatten_next1_reg_922;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_reg_973 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_reg_343 <= pin_1_reg_946;
    end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_577_p2 == 1'd1))) begin
        pin_reg_343 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        pkern_reg_437 <= pkern_1_reg_1021;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
        pkern_reg_437 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_498_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_241 <= tmp_1_fu_492_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_241 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        win_2_reg_333 <= win_138_cast_fu_504_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        win_2_reg_333 <= win_3_reg_402;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_938 == 1'd1))) begin
        if (((tmp_15_fu_696_p2 == 1'd0) & (tmp_12_fu_683_p2 == 1'd0))) begin
            win_3_reg_402 <= 16'd0;
        end else if ((tmp_12_fu_683_p2 == 1'd1)) begin
            win_3_reg_402 <= win_fu_701_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_577_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        win_4_reg_378 <= tmp_2_fu_538_p1;
    end else if (((tmp_12_fu_683_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_15_fu_696_p2 == 1'd1) & (or_cond_reg_938 == 1'd1))) begin
        win_4_reg_378 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_498_p2 == 1'd1))) begin
        win_s_reg_264 <= 15'd0;
    end else if (((exitcond_flatten1_fu_892_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        win_s_reg_264 <= win_4_reg_378;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        wkern_reg_448 <= wkern_mid2_reg_1001;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
        wkern_reg_448 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_498_p2 == 1'd1))) begin
        wout_reg_287 <= 8'd0;
    end else if (((exitcond_flatten1_fu_892_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        wout_reg_287 <= wout_1_fu_881_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_1_V_addr_reg_961 <= tmp_24_cast_fu_671_p1;
        buffer_val_2_V_addr_reg_967 <= tmp_24_cast_fu_671_p1;
        exitcond3_reg_973 <= exitcond3_fu_677_p2;
        tmp_24_cast_reg_956[11 : 0] <= tmp_24_cast_fu_671_p1[11 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten2_reg_1046 <= exitcond_flatten2_fu_863_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_1041 <= exitcond_flatten_fu_857_p2;
        exitcond_reg_1036 <= exitcond_fu_851_p2;
        hkern_mid2_reg_995 <= hkern_mid2_fu_733_p3;
        indvar_flatten_next2_reg_1031 <= indvar_flatten_next2_fu_845_p2;
        indvar_flatten_next_reg_1026 <= indvar_flatten_next_fu_837_p3;
        pkern_1_reg_1021 <= pkern_1_fu_825_p2;
        wkern_mid2_reg_1001 <= wkern_mid2_fu_761_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hout_mid2_reg_911 <= hout_mid2_fu_514_p3;
        indvar_flatten_next1_reg_922 <= indvar_flatten_next1_fu_532_p2;
        tmp_4_cast_reg_916[7 : 0] <= tmp_4_cast_fu_528_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        or_cond_reg_938 <= or_cond_fu_577_p2;
        wout_mid_reg_932 <= wout_mid_fu_542_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_577_p2 == 1'd1))) begin
        out_of_bounds_reg_942 <= out_of_bounds_fu_619_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_1_reg_946 <= pin_1_fu_625_p2;
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
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond4_phi_fu_430_p4 = exitcond_reg_1036;
    end else begin
        ap_phi_mux_exitcond4_phi_fu_430_p4 = exitcond4_reg_426;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond_flatten3_phi_fu_419_p4 = exitcond_flatten_reg_1041;
    end else begin
        ap_phi_mux_exitcond_flatten3_phi_fu_419_p4 = exitcond_flatten3_reg_415;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_hkern_phi_fu_474_p4 = hkern_mid2_reg_995;
    end else begin
        ap_phi_mux_hkern_phi_fu_474_p4 = hkern_reg_470;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten1_phi_fu_463_p4 = indvar_flatten_next_reg_1026;
    end else begin
        ap_phi_mux_indvar_flatten1_phi_fu_463_p4 = indvar_flatten1_reg_459;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten2_phi_fu_485_p4 = indvar_flatten_next2_reg_1031;
    end else begin
        ap_phi_mux_indvar_flatten2_phi_fu_485_p4 = indvar_flatten2_reg_481;
    end
end

always @ (*) begin
    if (((exitcond3_reg_973 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_pin_phi_fu_347_p4 = pin_1_reg_946;
    end else begin
        ap_phi_mux_pin_phi_fu_347_p4 = pin_reg_343;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_pkern_phi_fu_441_p4 = pkern_1_reg_1021;
    end else begin
        ap_phi_mux_pkern_phi_fu_441_p4 = pkern_reg_437;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1046 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_wkern_phi_fu_452_p4 = wkern_mid2_reg_1001;
    end else begin
        ap_phi_mux_wkern_phi_fu_452_p4 = wkern_reg_448;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_29_cast_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_24_cast_reg_956;
    end else begin
        buffer_val_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        buffer_val_0_V_ce0 = 1'b1;
    end else begin
        buffer_val_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_0_V_we0 = 1'b1;
    end else begin
        buffer_val_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buffer_val_1_V_address0 = tmp_29_cast_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_1_V_address0 = tmp_24_cast_fu_671_p1;
    end else begin
        buffer_val_1_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        buffer_val_1_V_ce0 = 1'b1;
    end else begin
        buffer_val_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_1_V_ce1 = 1'b1;
    end else begin
        buffer_val_1_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_1_V_we1 = 1'b1;
    end else begin
        buffer_val_1_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buffer_val_2_V_address0 = tmp_29_cast_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_2_V_address0 = tmp_24_cast_fu_671_p1;
    end else begin
        buffer_val_2_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        buffer_val_2_V_ce0 = 1'b1;
    end else begin
        buffer_val_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_2_V_ce1 = 1'b1;
    end else begin
        buffer_val_2_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_2_V_we1 = 1'b1;
    end else begin
        buffer_val_2_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((out_of_bounds_reg_942 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_of_bounds_reg_942 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_498_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_577_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
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
            if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_938 == 1'd0) | ((tmp_12_fu_683_p2 == 1'd0) & (tmp_15_fu_696_p2 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond_flatten1_fu_892_p2 == 1'd1))) begin
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((out_of_bounds_reg_942 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((out_of_bounds_reg_942 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

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
    ap_block_state10_pp1_stage0_iter1 = (output_V_V_full_n == 1'b0);
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter0 = ((out_of_bounds_reg_942 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_120 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_tmp_13_reg_354 = 'bx;

assign col_assign_fu_803_p2 = (wout_mid_reg_932 + tmp_27_cast_fu_799_p1);

assign exitcond2_fu_886_p2 = ((wout_1_fu_881_p2 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond3_fu_677_p2 = ((ap_phi_mux_pin_phi_fu_347_p4 == 3'd7) ? 1'b1 : 1'b0);

assign exitcond_flatten1_fu_892_p2 = ((indvar_flatten_reg_310 == 14'd16383) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_863_p2 = ((ap_phi_mux_indvar_flatten2_phi_fu_485_p4 == 7'd71) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_857_p2 = ((indvar_flatten_next_fu_837_p3 == 6'd24) ? 1'b1 : 1'b0);

assign exitcond_fu_851_p2 = ((pkern_1_fu_825_p2 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond_mid_fu_727_p2 = (not_exitcond_flatten_fu_721_p2 & ap_phi_mux_exitcond4_phi_fu_430_p4);

assign hin_fu_689_p2 = (hin_2_reg_322 + 16'd1);

assign hkern_1_fu_707_p2 = (ap_phi_mux_hkern_phi_fu_474_p4 + 2'd1);

assign hkern_mid2_fu_733_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_419_p4[0:0] === 1'b1) ? hkern_1_fu_707_p2 : ap_phi_mux_hkern_phi_fu_474_p4);

assign hout_1_fu_508_p2 = (hout_reg_299 + 8'd1);

assign hout_mid2_fu_514_p3 = ((exitcond1_reg_252[0:0] === 1'b1) ? hout_1_fu_508_p2 : hout_reg_299);

assign indvar_flatten_next1_fu_532_p2 = (indvar_flatten_reg_310 + 14'd1);

assign indvar_flatten_next2_fu_845_p2 = (ap_phi_mux_indvar_flatten2_phi_fu_485_p4 + 7'd1);

assign indvar_flatten_next_fu_837_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_419_p4[0:0] === 1'b1) ? 6'd1 : indvar_flatten_op_fu_831_p2);

assign indvar_flatten_op_fu_831_p2 = (ap_phi_mux_indvar_flatten1_phi_fu_463_p4 + 6'd1);

assign not_exitcond_flatten_fu_721_p2 = (ap_phi_mux_exitcond_flatten3_phi_fu_419_p4 ^ 1'd1);

assign or_cond_fu_577_p2 = (tmp_5_fu_572_p2 | rev_fu_566_p2);

assign out_of_bounds_fu_619_p2 = (tmp2_fu_613_p2 | tmp1_fu_607_p2);

assign output_V_V_din = out_val_V_fu_869_p5;

assign p_shl2_cast_fu_639_p1 = tmp_14_fu_631_p3;

assign p_shl3_cast_fu_651_p1 = tmp_16_fu_643_p3;

assign p_shl4_cast_fu_777_p1 = tmp_22_fu_769_p3;

assign p_shl5_cast_fu_789_p1 = tmp_23_fu_781_p3;

assign pin_1_fu_625_p2 = (ap_phi_mux_pin_phi_fu_347_p4 + 3'd1);

assign pkern_1_fu_825_p2 = (pkern_mid2_fu_753_p3 + 4'd1);

assign pkern_mid2_fu_753_p3 = ((tmp_21_fu_747_p2[0:0] === 1'b1) ? 4'd0 : ap_phi_mux_pkern_phi_fu_441_p4);

assign rev_fu_566_p2 = (slt_fu_560_p2 ^ 1'd1);

assign slt_fu_560_p2 = (($signed(tmp_7_cast_fu_556_p1) < $signed(win_2_reg_333)) ? 1'b1 : 1'b0);

assign tmp1_fu_607_p2 = (tmp_9_fu_589_p2 | tmp_6_fu_583_p2);

assign tmp2_fu_613_p2 = (tmp_8_fu_595_p2 | tmp_10_fu_601_p2);

assign tmp_10_fu_601_p2 = (($signed(win_2_reg_333) > $signed(16'd128)) ? 1'b1 : 1'b0);

assign tmp_12_fu_683_p2 = (($signed(win_2_reg_333) < $signed(16'd129)) ? 1'b1 : 1'b0);

assign tmp_14_fu_631_p3 = {{ap_phi_mux_pin_phi_fu_347_p4}, {7'd0}};

assign tmp_15_fu_696_p2 = (($signed(hin_fu_689_p2) > $signed(tmp_4_cast_reg_916)) ? 1'b1 : 1'b0);

assign tmp_16_fu_643_p3 = {{ap_phi_mux_pin_phi_fu_347_p4}, {1'd0}};

assign tmp_17_fu_655_p2 = (p_shl3_cast_fu_651_p1 + p_shl2_cast_fu_639_p1);

assign tmp_18_fu_661_p1 = win_2_reg_333[11:0];

assign tmp_19_fu_665_p2 = (tmp_17_fu_655_p2 + tmp_18_fu_661_p1);

assign tmp_1_fu_492_p2 = (tmp_reg_241 + 3'd1);

assign tmp_21_fu_747_p2 = (exitcond_mid_fu_727_p2 | ap_phi_mux_exitcond_flatten3_phi_fu_419_p4);

assign tmp_22_cast_fu_808_p1 = col_assign_fu_803_p2;

assign tmp_22_fu_769_p3 = {{pkern_mid2_fu_753_p3}, {7'd0}};

assign tmp_23_fu_781_p3 = {{pkern_mid2_fu_753_p3}, {1'd0}};

assign tmp_24_cast_fu_671_p1 = tmp_19_fu_665_p2;

assign tmp_24_fu_793_p2 = (p_shl5_cast_fu_789_p1 + p_shl4_cast_fu_777_p1);

assign tmp_25_fu_812_p2 = (tmp_24_fu_793_p2 + tmp_22_cast_fu_808_p1);

assign tmp_27_cast_fu_799_p1 = wkern_mid2_fu_761_p3;

assign tmp_29_cast_fu_818_p1 = tmp_25_fu_812_p2;

assign tmp_2_fu_538_p1 = win_2_reg_333[14:0];

assign tmp_3_fu_498_p2 = ((tmp_reg_241 == 3'd7) ? 1'b1 : 1'b0);

assign tmp_4_cast_fu_528_p1 = tmp_4_fu_522_p2;

assign tmp_4_fu_522_p2 = (hout_mid2_fu_514_p3 + 8'd2);

assign tmp_5_fu_572_p2 = (($signed(hin_2_reg_322) < $signed(tmp_4_cast_reg_916)) ? 1'b1 : 1'b0);

assign tmp_6_fu_583_p2 = (($signed(hin_2_reg_322) < $signed(16'd1)) ? 1'b1 : 1'b0);

assign tmp_7_cast_fu_556_p1 = tmp_7_fu_550_p2;

assign tmp_7_fu_550_p2 = (8'd2 + wout_mid_fu_542_p3);

assign tmp_8_fu_595_p2 = (($signed(win_2_reg_333) < $signed(16'd1)) ? 1'b1 : 1'b0);

assign tmp_9_fu_589_p2 = (($signed(hin_2_reg_322) > $signed(16'd128)) ? 1'b1 : 1'b0);

assign win_138_cast_fu_504_p1 = win_s_reg_264;

assign win_fu_701_p2 = (win_2_reg_333 + 16'd1);

assign wkern_1_fu_741_p2 = (wkern_mid_fu_713_p3 + 2'd1);

assign wkern_mid2_fu_761_p3 = ((exitcond_mid_fu_727_p2[0:0] === 1'b1) ? wkern_1_fu_741_p2 : wkern_mid_fu_713_p3);

assign wkern_mid_fu_713_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_419_p4[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_wkern_phi_fu_452_p4);

assign wout_1_fu_881_p2 = (wout_mid_reg_932 + 8'd1);

assign wout_mid_fu_542_p3 = ((exitcond1_reg_252[0:0] === 1'b1) ? 8'd0 : wout_reg_287);

always @ (posedge ap_clk) begin
    tmp_4_cast_reg_916[15:8] <= 8'b00000000;
    tmp_24_cast_reg_956[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end

endmodule //line_buffer_3
