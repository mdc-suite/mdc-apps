// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="line_buffer_mp_2,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.661000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=24,HLS_SYN_DSP=0,HLS_SYN_FF=341,HLS_SYN_LUT=1033}" *)

module line_buffer_mp_2 (
        ap_clk,
        ap_rst_n,
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
parameter    ap_ST_fsm_state12 = 9'd256;

input   ap_clk;
input   ap_rst_n;
input  [15:0] input_V_V_dout;
input   input_V_V_empty_n;
output   input_V_V_read;
output  [15:0] output_V_V_din;
input   output_V_V_full_n;
output   output_V_V_write;

reg input_V_V_read;
reg output_V_V_write;

reg    ap_rst_n_inv;
reg    input_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg   [0:0] out_of_bounds_reg_935;
reg    output_V_V_blk_n;
reg    ap_enable_reg_pp1_iter2;
wire    ap_block_pp1_stage0;
reg   [5:0] pin_reg_339;
reg   [0:0] exitcond_flatten3_reg_411;
reg   [0:0] exitcond4_reg_422;
reg   [1:0] wkern_reg_433;
reg   [1:0] hkern_reg_444;
reg   [3:0] indvar_flatten1_reg_455;
reg   [6:0] pout_reg_466;
reg   [9:0] indvar_flatten2_reg_477;
wire   [5:0] tmp_1_fu_488_p2;
wire    ap_CS_fsm_state2;
wire   [15:0] win_138_cast_fu_500_p1;
wire    ap_CS_fsm_state3;
wire   [6:0] hout_mid2_fu_510_p3;
reg   [6:0] hout_mid2_reg_904;
wire   [15:0] tmp_4_cast_fu_524_p1;
reg   [15:0] tmp_4_cast_reg_909;
wire   [11:0] indvar_flatten_next1_fu_528_p2;
reg   [11:0] indvar_flatten_next1_reg_915;
wire   [14:0] tmp_2_fu_534_p1;
wire    ap_CS_fsm_state4;
wire   [6:0] wout_mid_fu_538_p3;
reg   [6:0] wout_mid_reg_925;
wire   [0:0] or_cond_fu_573_p2;
reg   [0:0] or_cond_reg_931;
wire   [0:0] out_of_bounds_fu_615_p2;
wire   [5:0] pin_1_fu_621_p2;
reg   [5:0] pin_1_reg_939;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] tmp_24_cast_fu_667_p1;
reg   [63:0] tmp_24_cast_reg_949;
reg   [12:0] buffer_val_1_V_addr_reg_954;
reg   [12:0] buffer_val_2_V_addr_reg_960;
wire   [0:0] exitcond3_fu_673_p2;
reg   [0:0] exitcond3_reg_966;
wire   [0:0] tmp_12_fu_679_p2;
wire    ap_CS_fsm_state7;
wire   [15:0] hin_fu_685_p2;
wire   [0:0] tmp_15_fu_692_p2;
wire   [15:0] win_fu_697_p2;
wire   [6:0] pout_mid2_fu_729_p3;
reg   [6:0] pout_mid2_reg_988;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state9_pp1_stage0_iter0;
wire    ap_block_state10_pp1_stage0_iter1;
reg    ap_block_state11_pp1_stage0_iter2;
reg    ap_block_pp1_stage0_11001;
wire   [1:0] hkern_mid2_fu_757_p3;
reg   [1:0] hkern_mid2_reg_995;
reg   [1:0] ap_reg_pp1_iter1_hkern_mid2_reg_995;
wire   [6:0] col_assign_fu_769_p2;
reg   [6:0] col_assign_reg_1001;
wire   [1:0] wkern_1_fu_774_p2;
reg   [1:0] wkern_1_reg_1006;
wire   [3:0] indvar_flatten_next_fu_786_p3;
reg   [3:0] indvar_flatten_next_reg_1011;
wire   [9:0] indvar_flatten_next2_fu_794_p2;
reg   [9:0] indvar_flatten_next2_reg_1016;
wire   [0:0] exitcond_fu_800_p2;
reg   [0:0] exitcond_reg_1021;
wire   [0:0] exitcond_flatten_fu_806_p2;
reg   [0:0] exitcond_flatten_reg_1026;
wire   [0:0] exitcond_flatten2_fu_812_p2;
reg   [0:0] exitcond_flatten2_reg_1031;
wire   [6:0] wout_1_fu_874_p2;
wire    ap_CS_fsm_state12;
wire   [0:0] exitcond2_fu_879_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp1_stage0_subdone;
reg    ap_enable_reg_pp1_iter1;
reg   [12:0] buffer_val_0_V_address0;
reg    buffer_val_0_V_ce0;
reg    buffer_val_0_V_we0;
wire   [15:0] buffer_val_0_V_q0;
reg   [12:0] buffer_val_1_V_address0;
reg    buffer_val_1_V_ce0;
wire   [15:0] buffer_val_1_V_q0;
reg    buffer_val_1_V_ce1;
reg    buffer_val_1_V_we1;
reg   [12:0] buffer_val_2_V_address0;
reg    buffer_val_2_V_ce0;
wire   [15:0] buffer_val_2_V_q0;
reg    buffer_val_2_V_ce1;
reg    buffer_val_2_V_we1;
reg   [5:0] tmp_reg_237;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_3_fu_494_p2;
reg   [0:0] exitcond1_reg_248;
wire   [0:0] exitcond_flatten1_fu_885_p2;
reg   [14:0] win_4_reg_374;
reg   [14:0] win_s_reg_260;
reg   [15:0] hin_4_reg_362;
reg   [15:0] hin_s_reg_271;
reg   [6:0] wout_reg_283;
reg   [6:0] hout_reg_295;
reg   [11:0] indvar_flatten_reg_306;
reg   [15:0] hin_2_reg_318;
wire    ap_CS_fsm_state8;
reg   [15:0] win_2_reg_329;
reg   [5:0] ap_phi_mux_pin_phi_fu_343_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_tmp_13_reg_350;
reg   [15:0] ap_phi_reg_pp0_iter1_tmp_13_reg_350;
reg   [15:0] hin_3_reg_386;
reg   [15:0] win_3_reg_398;
reg   [0:0] ap_phi_mux_exitcond_flatten3_phi_fu_415_p4;
reg   [0:0] ap_phi_mux_exitcond4_phi_fu_426_p4;
reg   [1:0] ap_phi_mux_wkern_phi_fu_437_p4;
reg   [1:0] ap_phi_mux_hkern_phi_fu_448_p4;
reg   [3:0] ap_phi_mux_indvar_flatten1_phi_fu_459_p4;
reg   [6:0] ap_phi_mux_pout_phi_fu_470_p4;
reg   [9:0] ap_phi_mux_indvar_flatten2_phi_fu_481_p4;
wire   [63:0] tmp_29_cast_fu_855_p1;
wire   [15:0] out_val_V_fu_862_p5;
reg    ap_block_pp1_stage0_01001;
wire   [6:0] hout_1_fu_504_p2;
wire   [6:0] tmp_4_fu_518_p2;
wire   [6:0] tmp_7_fu_546_p2;
wire   [15:0] tmp_7_cast_fu_552_p1;
wire   [0:0] slt_fu_556_p2;
wire   [0:0] rev_fu_562_p2;
wire   [0:0] tmp_5_fu_568_p2;
wire   [0:0] tmp_6_fu_579_p2;
wire   [0:0] tmp_9_fu_585_p2;
wire   [0:0] tmp_8_fu_591_p2;
wire   [0:0] tmp_10_fu_597_p2;
wire   [0:0] tmp2_fu_609_p2;
wire   [0:0] tmp1_fu_603_p2;
wire   [11:0] tmp_14_fu_627_p3;
wire   [6:0] tmp_16_fu_639_p3;
wire   [13:0] p_shl3_cast_fu_647_p1;
wire   [13:0] p_shl2_cast_fu_635_p1;
wire   [13:0] tmp_17_fu_651_p2;
wire   [13:0] tmp_18_fu_657_p1;
wire   [13:0] tmp_19_fu_661_p2;
wire   [0:0] not_exitcond_flatten_fu_717_p2;
wire   [6:0] pout_1_fu_703_p2;
wire   [1:0] hkern_mid_fu_709_p3;
wire   [0:0] exitcond_mid_fu_723_p2;
wire   [0:0] tmp_21_fu_743_p2;
wire   [1:0] hkern_1_fu_737_p2;
wire   [1:0] wkern_mid2_fu_749_p3;
wire   [6:0] tmp_27_cast_fu_765_p1;
wire   [3:0] indvar_flatten_op_fu_780_p2;
wire   [12:0] tmp_22_fu_818_p3;
wire   [7:0] tmp_23_fu_829_p3;
wire   [13:0] p_shl5_cast_fu_836_p1;
wire   [13:0] p_shl4_cast_fu_825_p1;
wire   [13:0] tmp_24_fu_840_p2;
wire   [13:0] tmp_22_cast_fu_846_p1;
wire   [13:0] tmp_25_fu_849_p2;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_condition_116;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
end

line_buffer_mp_2_bkb #(
    .DataWidth( 16 ),
    .AddressRange( 4224 ),
    .AddressWidth( 13 ))
buffer_val_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(buffer_val_0_V_address0),
    .ce0(buffer_val_0_V_ce0),
    .we0(buffer_val_0_V_we0),
    .d0(buffer_val_1_V_q0),
    .q0(buffer_val_0_V_q0)
);

line_buffer_mp_2_cud #(
    .DataWidth( 16 ),
    .AddressRange( 4224 ),
    .AddressWidth( 13 ))
buffer_val_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(buffer_val_1_V_address0),
    .ce0(buffer_val_1_V_ce0),
    .q0(buffer_val_1_V_q0),
    .address1(buffer_val_1_V_addr_reg_954),
    .ce1(buffer_val_1_V_ce1),
    .we1(buffer_val_1_V_we1),
    .d1(buffer_val_2_V_q0)
);

line_buffer_mp_2_cud #(
    .DataWidth( 16 ),
    .AddressRange( 4224 ),
    .AddressWidth( 13 ))
buffer_val_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(buffer_val_2_V_address0),
    .ce0(buffer_val_2_V_ce0),
    .q0(buffer_val_2_V_q0),
    .address1(buffer_val_2_V_addr_reg_960),
    .ce1(buffer_val_2_V_ce1),
    .we1(buffer_val_2_V_we1),
    .d1(ap_phi_reg_pp0_iter1_tmp_13_reg_350)
);

line_buffer_mp_2_eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 16 ))
line_buffer_mp_2_eOg_U1(
    .din0(buffer_val_0_V_q0),
    .din1(buffer_val_1_V_q0),
    .din2(buffer_val_2_V_q0),
    .din3(ap_reg_pp1_iter1_hkern_mid2_reg_995),
    .dout(out_val_V_fu_862_p5)
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond3_fu_673_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_573_p2 == 1'd1))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_573_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (exitcond_flatten2_fu_812_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
            ap_enable_reg_pp1_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_116)) begin
        if ((out_of_bounds_reg_935 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_350 <= 16'd0;
        end else if ((out_of_bounds_reg_935 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_350 <= input_V_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_350 <= ap_phi_reg_pp0_iter0_tmp_13_reg_350;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_494_p2 == 1'd1))) begin
        exitcond1_reg_248 <= 1'd0;
    end else if (((exitcond_flatten1_fu_885_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        exitcond1_reg_248 <= exitcond2_fu_879_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond4_reg_422 <= exitcond_reg_1021;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
        exitcond4_reg_422 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten3_reg_411 <= exitcond_flatten_reg_1026;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
        exitcond_flatten3_reg_411 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hin_2_reg_318 <= hin_s_reg_271;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hin_2_reg_318 <= hin_3_reg_386;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_931 == 1'd1))) begin
        if (((tmp_15_fu_692_p2 == 1'd0) & (tmp_12_fu_679_p2 == 1'd0))) begin
            hin_3_reg_386 <= hin_fu_685_p2;
        end else if ((tmp_12_fu_679_p2 == 1'd1)) begin
            hin_3_reg_386 <= hin_2_reg_318;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_573_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hin_4_reg_362 <= hin_2_reg_318;
    end else if (((tmp_12_fu_679_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_15_fu_692_p2 == 1'd1) & (or_cond_reg_931 == 1'd1))) begin
        hin_4_reg_362 <= hin_fu_685_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_494_p2 == 1'd1))) begin
        hin_s_reg_271 <= 16'd0;
    end else if (((exitcond_flatten1_fu_885_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        hin_s_reg_271 <= hin_4_reg_362;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        hkern_reg_444 <= hkern_mid2_reg_995;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
        hkern_reg_444 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_494_p2 == 1'd1))) begin
        hout_reg_295 <= 7'd0;
    end else if (((exitcond_flatten1_fu_885_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        hout_reg_295 <= hout_mid2_reg_904;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten1_reg_455 <= indvar_flatten_next_reg_1011;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
        indvar_flatten1_reg_455 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten2_reg_477 <= indvar_flatten_next2_reg_1016;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
        indvar_flatten2_reg_477 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_494_p2 == 1'd1))) begin
        indvar_flatten_reg_306 <= 12'd0;
    end else if (((exitcond_flatten1_fu_885_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        indvar_flatten_reg_306 <= indvar_flatten_next1_reg_915;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_reg_966 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_reg_339 <= pin_1_reg_939;
    end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_573_p2 == 1'd1))) begin
        pin_reg_339 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        pout_reg_466 <= pout_mid2_reg_988;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
        pout_reg_466 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_494_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_237 <= tmp_1_fu_488_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_237 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        win_2_reg_329 <= win_138_cast_fu_500_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        win_2_reg_329 <= win_3_reg_398;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_931 == 1'd1))) begin
        if (((tmp_15_fu_692_p2 == 1'd0) & (tmp_12_fu_679_p2 == 1'd0))) begin
            win_3_reg_398 <= 16'd0;
        end else if ((tmp_12_fu_679_p2 == 1'd1)) begin
            win_3_reg_398 <= win_fu_697_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_573_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        win_4_reg_374 <= tmp_2_fu_534_p1;
    end else if (((tmp_12_fu_679_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_15_fu_692_p2 == 1'd1) & (or_cond_reg_931 == 1'd1))) begin
        win_4_reg_374 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_494_p2 == 1'd1))) begin
        win_s_reg_260 <= 15'd0;
    end else if (((exitcond_flatten1_fu_885_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        win_s_reg_260 <= win_4_reg_374;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        wkern_reg_433 <= wkern_1_reg_1006;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
        wkern_reg_433 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_494_p2 == 1'd1))) begin
        wout_reg_283 <= 7'd0;
    end else if (((exitcond_flatten1_fu_885_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        wout_reg_283 <= wout_1_fu_874_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        ap_reg_pp1_iter1_hkern_mid2_reg_995 <= hkern_mid2_reg_995;
        col_assign_reg_1001 <= col_assign_fu_769_p2;
        exitcond_flatten2_reg_1031 <= exitcond_flatten2_fu_812_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_1_V_addr_reg_954 <= tmp_24_cast_fu_667_p1;
        buffer_val_2_V_addr_reg_960 <= tmp_24_cast_fu_667_p1;
        exitcond3_reg_966 <= exitcond3_fu_673_p2;
        tmp_24_cast_reg_949[13 : 0] <= tmp_24_cast_fu_667_p1[13 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_1026 <= exitcond_flatten_fu_806_p2;
        exitcond_reg_1021 <= exitcond_fu_800_p2;
        hkern_mid2_reg_995 <= hkern_mid2_fu_757_p3;
        indvar_flatten_next2_reg_1016 <= indvar_flatten_next2_fu_794_p2;
        indvar_flatten_next_reg_1011 <= indvar_flatten_next_fu_786_p3;
        pout_mid2_reg_988 <= pout_mid2_fu_729_p3;
        wkern_1_reg_1006 <= wkern_1_fu_774_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hout_mid2_reg_904 <= hout_mid2_fu_510_p3;
        indvar_flatten_next1_reg_915 <= indvar_flatten_next1_fu_528_p2;
        tmp_4_cast_reg_909[6 : 0] <= tmp_4_cast_fu_524_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        or_cond_reg_931 <= or_cond_fu_573_p2;
        wout_mid_reg_925 <= wout_mid_fu_538_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_573_p2 == 1'd1))) begin
        out_of_bounds_reg_935 <= out_of_bounds_fu_615_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_1_reg_939 <= pin_1_fu_621_p2;
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
    if (((ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond4_phi_fu_426_p4 = exitcond_reg_1021;
    end else begin
        ap_phi_mux_exitcond4_phi_fu_426_p4 = exitcond4_reg_422;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond_flatten3_phi_fu_415_p4 = exitcond_flatten_reg_1026;
    end else begin
        ap_phi_mux_exitcond_flatten3_phi_fu_415_p4 = exitcond_flatten3_reg_411;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_hkern_phi_fu_448_p4 = hkern_mid2_reg_995;
    end else begin
        ap_phi_mux_hkern_phi_fu_448_p4 = hkern_reg_444;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten1_phi_fu_459_p4 = indvar_flatten_next_reg_1011;
    end else begin
        ap_phi_mux_indvar_flatten1_phi_fu_459_p4 = indvar_flatten1_reg_455;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten2_phi_fu_481_p4 = indvar_flatten_next2_reg_1016;
    end else begin
        ap_phi_mux_indvar_flatten2_phi_fu_481_p4 = indvar_flatten2_reg_477;
    end
end

always @ (*) begin
    if (((exitcond3_reg_966 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_pin_phi_fu_343_p4 = pin_1_reg_939;
    end else begin
        ap_phi_mux_pin_phi_fu_343_p4 = pin_reg_339;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_pout_phi_fu_470_p4 = pout_mid2_reg_988;
    end else begin
        ap_phi_mux_pout_phi_fu_470_p4 = pout_reg_466;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1031 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_wkern_phi_fu_437_p4 = wkern_1_reg_1006;
    end else begin
        ap_phi_mux_wkern_phi_fu_437_p4 = wkern_reg_433;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        buffer_val_0_V_address0 = tmp_29_cast_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_24_cast_reg_949;
    end else begin
        buffer_val_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
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
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        buffer_val_1_V_address0 = tmp_29_cast_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_1_V_address0 = tmp_24_cast_fu_667_p1;
    end else begin
        buffer_val_1_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
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
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        buffer_val_2_V_address0 = tmp_29_cast_fu_855_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_2_V_address0 = tmp_24_cast_fu_667_p1;
    end else begin
        buffer_val_2_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)))) begin
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
    if (((out_of_bounds_reg_935 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_of_bounds_reg_935 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        input_V_V_read = 1'b1;
    end else begin
        input_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_494_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_573_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_931 == 1'd0) | ((tmp_12_fu_679_p2 == 1'd0) & (tmp_15_fu_692_p2 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (exitcond_flatten1_fu_885_p2 == 1'd1))) begin
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

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((out_of_bounds_reg_935 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((out_of_bounds_reg_935 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((output_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((output_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((output_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b1));
end

assign ap_block_state10_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp1_stage0_iter2 = (output_V_V_full_n == 1'b0);
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter0 = ((out_of_bounds_reg_935 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_116 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_tmp_13_reg_350 = 'bx;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign col_assign_fu_769_p2 = (wout_mid_reg_925 + tmp_27_cast_fu_765_p1);

assign exitcond2_fu_879_p2 = ((wout_1_fu_874_p2 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond3_fu_673_p2 = ((ap_phi_mux_pin_phi_fu_343_p4 == 6'd63) ? 1'b1 : 1'b0);

assign exitcond_flatten1_fu_885_p2 = ((indvar_flatten_reg_306 == 12'd4095) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_812_p2 = ((ap_phi_mux_indvar_flatten2_phi_fu_481_p4 == 10'd575) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_806_p2 = ((indvar_flatten_next_fu_786_p3 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond_fu_800_p2 = ((wkern_1_fu_774_p2 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_mid_fu_723_p2 = (not_exitcond_flatten_fu_717_p2 & ap_phi_mux_exitcond4_phi_fu_426_p4);

assign hin_fu_685_p2 = (hin_2_reg_318 + 16'd1);

assign hkern_1_fu_737_p2 = (hkern_mid_fu_709_p3 + 2'd1);

assign hkern_mid2_fu_757_p3 = ((exitcond_mid_fu_723_p2[0:0] === 1'b1) ? hkern_1_fu_737_p2 : hkern_mid_fu_709_p3);

assign hkern_mid_fu_709_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_415_p4[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_hkern_phi_fu_448_p4);

assign hout_1_fu_504_p2 = (hout_reg_295 + 7'd1);

assign hout_mid2_fu_510_p3 = ((exitcond1_reg_248[0:0] === 1'b1) ? hout_1_fu_504_p2 : hout_reg_295);

assign indvar_flatten_next1_fu_528_p2 = (indvar_flatten_reg_306 + 12'd1);

assign indvar_flatten_next2_fu_794_p2 = (ap_phi_mux_indvar_flatten2_phi_fu_481_p4 + 10'd1);

assign indvar_flatten_next_fu_786_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_415_p4[0:0] === 1'b1) ? 4'd1 : indvar_flatten_op_fu_780_p2);

assign indvar_flatten_op_fu_780_p2 = (ap_phi_mux_indvar_flatten1_phi_fu_459_p4 + 4'd1);

assign not_exitcond_flatten_fu_717_p2 = (ap_phi_mux_exitcond_flatten3_phi_fu_415_p4 ^ 1'd1);

assign or_cond_fu_573_p2 = (tmp_5_fu_568_p2 | rev_fu_562_p2);

assign out_of_bounds_fu_615_p2 = (tmp2_fu_609_p2 | tmp1_fu_603_p2);

assign output_V_V_din = out_val_V_fu_862_p5;

assign p_shl2_cast_fu_635_p1 = tmp_14_fu_627_p3;

assign p_shl3_cast_fu_647_p1 = tmp_16_fu_639_p3;

assign p_shl4_cast_fu_825_p1 = tmp_22_fu_818_p3;

assign p_shl5_cast_fu_836_p1 = tmp_23_fu_829_p3;

assign pin_1_fu_621_p2 = (ap_phi_mux_pin_phi_fu_343_p4 + 6'd1);

assign pout_1_fu_703_p2 = (ap_phi_mux_pout_phi_fu_470_p4 + 7'd1);

assign pout_mid2_fu_729_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_415_p4[0:0] === 1'b1) ? pout_1_fu_703_p2 : ap_phi_mux_pout_phi_fu_470_p4);

assign rev_fu_562_p2 = (slt_fu_556_p2 ^ 1'd1);

assign slt_fu_556_p2 = (($signed(tmp_7_cast_fu_552_p1) < $signed(win_2_reg_329)) ? 1'b1 : 1'b0);

assign tmp1_fu_603_p2 = (tmp_9_fu_585_p2 | tmp_6_fu_579_p2);

assign tmp2_fu_609_p2 = (tmp_8_fu_591_p2 | tmp_10_fu_597_p2);

assign tmp_10_fu_597_p2 = (($signed(win_2_reg_329) > $signed(16'd64)) ? 1'b1 : 1'b0);

assign tmp_12_fu_679_p2 = (($signed(win_2_reg_329) < $signed(16'd65)) ? 1'b1 : 1'b0);

assign tmp_14_fu_627_p3 = {{ap_phi_mux_pin_phi_fu_343_p4}, {6'd0}};

assign tmp_15_fu_692_p2 = (($signed(hin_fu_685_p2) > $signed(tmp_4_cast_reg_909)) ? 1'b1 : 1'b0);

assign tmp_16_fu_639_p3 = {{ap_phi_mux_pin_phi_fu_343_p4}, {1'd0}};

assign tmp_17_fu_651_p2 = (p_shl3_cast_fu_647_p1 + p_shl2_cast_fu_635_p1);

assign tmp_18_fu_657_p1 = win_2_reg_329[13:0];

assign tmp_19_fu_661_p2 = (tmp_17_fu_651_p2 + tmp_18_fu_657_p1);

assign tmp_1_fu_488_p2 = (tmp_reg_237 + 6'd1);

assign tmp_21_fu_743_p2 = (exitcond_mid_fu_723_p2 | ap_phi_mux_exitcond_flatten3_phi_fu_415_p4);

assign tmp_22_cast_fu_846_p1 = col_assign_reg_1001;

assign tmp_22_fu_818_p3 = {{pout_mid2_reg_988}, {6'd0}};

assign tmp_23_fu_829_p3 = {{pout_mid2_reg_988}, {1'd0}};

assign tmp_24_cast_fu_667_p1 = tmp_19_fu_661_p2;

assign tmp_24_fu_840_p2 = (p_shl5_cast_fu_836_p1 + p_shl4_cast_fu_825_p1);

assign tmp_25_fu_849_p2 = (tmp_24_fu_840_p2 + tmp_22_cast_fu_846_p1);

assign tmp_27_cast_fu_765_p1 = wkern_mid2_fu_749_p3;

assign tmp_29_cast_fu_855_p1 = tmp_25_fu_849_p2;

assign tmp_2_fu_534_p1 = win_2_reg_329[14:0];

assign tmp_3_fu_494_p2 = ((tmp_reg_237 == 6'd63) ? 1'b1 : 1'b0);

assign tmp_4_cast_fu_524_p1 = tmp_4_fu_518_p2;

assign tmp_4_fu_518_p2 = (hout_mid2_fu_510_p3 + 7'd2);

assign tmp_5_fu_568_p2 = (($signed(hin_2_reg_318) < $signed(tmp_4_cast_reg_909)) ? 1'b1 : 1'b0);

assign tmp_6_fu_579_p2 = (($signed(hin_2_reg_318) < $signed(16'd1)) ? 1'b1 : 1'b0);

assign tmp_7_cast_fu_552_p1 = tmp_7_fu_546_p2;

assign tmp_7_fu_546_p2 = (7'd2 + wout_mid_fu_538_p3);

assign tmp_8_fu_591_p2 = (($signed(win_2_reg_329) < $signed(16'd1)) ? 1'b1 : 1'b0);

assign tmp_9_fu_585_p2 = (($signed(hin_2_reg_318) > $signed(16'd64)) ? 1'b1 : 1'b0);

assign win_138_cast_fu_500_p1 = win_s_reg_260;

assign win_fu_697_p2 = (win_2_reg_329 + 16'd1);

assign wkern_1_fu_774_p2 = (wkern_mid2_fu_749_p3 + 2'd1);

assign wkern_mid2_fu_749_p3 = ((tmp_21_fu_743_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_wkern_phi_fu_437_p4);

assign wout_1_fu_874_p2 = (wout_mid_reg_925 + 7'd1);

assign wout_mid_fu_538_p3 = ((exitcond1_reg_248[0:0] === 1'b1) ? 7'd0 : wout_reg_283);

always @ (posedge ap_clk) begin
    tmp_4_cast_reg_909[15:7] <= 9'b000000000;
    tmp_24_cast_reg_949[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end

endmodule //line_buffer_mp_2
