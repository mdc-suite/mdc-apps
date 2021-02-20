// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="line_buffer_mp_3,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.198000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=24,HLS_SYN_DSP=0,HLS_SYN_FF=393,HLS_SYN_LUT=1069}" *)

module line_buffer_mp_3 (
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
reg   [0:0] out_of_bounds_reg_959;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [6:0] pin_reg_345;
reg   [0:0] exitcond_flatten3_reg_418;
reg   [0:0] exitcond4_reg_429;
reg   [1:0] wkern_reg_440;
reg   [1:0] hkern_reg_451;
reg   [3:0] indvar_flatten1_reg_462;
reg   [7:0] pout_reg_473;
reg   [10:0] indvar_flatten2_reg_484;
wire   [6:0] tmp_1_fu_495_p2;
wire    ap_CS_fsm_state2;
wire   [4:0] hout_mid2_fu_513_p3;
reg   [4:0] hout_mid2_reg_929;
wire    ap_CS_fsm_state3;
wire  signed [15:0] tmp_10_cast_fu_549_p1;
reg  signed [15:0] tmp_10_cast_reg_934;
wire   [8:0] indvar_flatten_next1_fu_553_p2;
reg   [8:0] indvar_flatten_next1_reg_940;
wire   [4:0] wout_mid_fu_559_p3;
reg   [4:0] wout_mid_reg_945;
wire    ap_CS_fsm_state4;
wire   [7:0] tmp_7_fu_583_p2;
reg   [7:0] tmp_7_reg_950;
wire   [0:0] or_cond_fu_616_p2;
reg   [0:0] or_cond_reg_955;
wire   [0:0] out_of_bounds_fu_662_p2;
wire   [6:0] pin_1_fu_668_p2;
reg   [6:0] pin_1_reg_963;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire  signed [63:0] tmp_27_cast_fu_706_p1;
reg  signed [63:0] tmp_27_cast_reg_973;
reg   [12:0] buffer_val_1_V_addr_reg_978;
reg   [12:0] buffer_val_2_V_addr_reg_984;
wire   [0:0] exitcond3_fu_712_p2;
reg   [0:0] exitcond3_reg_990;
wire   [0:0] tmp_14_fu_718_p2;
wire    ap_CS_fsm_state7;
wire   [15:0] hin_fu_724_p2;
wire   [0:0] tmp_18_fu_731_p2;
wire   [15:0] win_fu_736_p2;
wire   [7:0] pout_mid2_fu_768_p3;
reg   [7:0] pout_mid2_reg_1012;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state9_pp1_stage0_iter0;
reg    ap_block_state10_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [1:0] hkern_mid2_fu_796_p3;
reg   [1:0] hkern_mid2_reg_1017;
wire   [1:0] wkern_1_fu_848_p2;
reg   [1:0] wkern_1_reg_1038;
wire   [3:0] indvar_flatten_next_fu_860_p3;
reg   [3:0] indvar_flatten_next_reg_1043;
wire   [10:0] indvar_flatten_next2_fu_868_p2;
reg   [10:0] indvar_flatten_next2_reg_1048;
wire   [0:0] exitcond_fu_874_p2;
reg   [0:0] exitcond_reg_1053;
wire   [0:0] exitcond_flatten_fu_880_p2;
reg   [0:0] exitcond_flatten_reg_1058;
wire   [0:0] exitcond_flatten2_fu_886_p2;
reg   [0:0] exitcond_flatten2_reg_1063;
wire   [4:0] wout_1_fu_904_p2;
wire    ap_CS_fsm_state11;
wire   [0:0] exitcond2_fu_909_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_pp1_stage0_subdone;
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
reg   [6:0] tmp_reg_241;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_3_fu_501_p2;
reg   [0:0] exitcond1_reg_252;
wire   [0:0] exitcond_flatten1_fu_915_p2;
reg   [15:0] win_4_reg_380;
reg   [15:0] win_s_reg_264;
reg   [15:0] hin_4_reg_368;
reg   [15:0] hin_s_reg_276;
reg   [4:0] wout_reg_288;
reg   [4:0] hout_reg_300;
reg   [8:0] indvar_flatten_reg_311;
reg   [15:0] hin_2_reg_323;
wire    ap_CS_fsm_state8;
reg   [15:0] win_2_reg_334;
reg   [6:0] ap_phi_mux_pin_phi_fu_349_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_tmp_13_reg_356;
reg   [15:0] ap_phi_reg_pp0_iter1_tmp_13_reg_356;
reg   [15:0] hin_3_reg_393;
reg   [15:0] win_3_reg_405;
reg   [0:0] ap_phi_mux_exitcond_flatten3_phi_fu_422_p4;
reg   [0:0] ap_phi_mux_exitcond4_phi_fu_433_p4;
reg   [1:0] ap_phi_mux_wkern_phi_fu_444_p4;
reg   [1:0] ap_phi_mux_hkern_phi_fu_455_p4;
reg   [3:0] ap_phi_mux_indvar_flatten1_phi_fu_466_p4;
reg   [7:0] ap_phi_mux_pout_phi_fu_477_p4;
reg   [10:0] ap_phi_mux_indvar_flatten2_phi_fu_488_p4;
wire  signed [63:0] tmp_31_cast_fu_841_p1;
wire   [15:0] out_val_V_fu_892_p5;
reg    ap_block_pp1_stage0_01001;
wire   [4:0] hout_1_fu_507_p2;
wire   [6:0] p_shl6_fu_525_p3;
wire   [7:0] p_shl6_cast_fu_533_p1;
wire   [7:0] tmp_4_cast8_fu_521_p1;
wire   [7:0] tmp_5_fu_537_p2;
wire   [7:0] tmp_s_fu_543_p2;
wire   [6:0] p_shl_fu_571_p3;
wire   [7:0] p_shl_cast_fu_579_p1;
wire   [7:0] tmp_6_cast9_fu_567_p1;
wire   [7:0] tmp_8_fu_589_p2;
wire  signed [15:0] tmp_8_cast_fu_595_p1;
wire   [0:0] slt_fu_599_p2;
wire   [0:0] rev_fu_605_p2;
wire   [0:0] tmp_4_fu_611_p2;
wire   [0:0] tmp_2_fu_622_p3;
wire   [0:0] tmp_9_fu_630_p2;
wire   [0:0] tmp_10_fu_636_p3;
wire   [0:0] tmp_11_fu_644_p2;
wire   [0:0] tmp2_fu_656_p2;
wire   [0:0] tmp1_fu_650_p2;
wire   [12:0] tmp_15_fu_678_p3;
wire   [13:0] tmp_16_fu_686_p1;
wire   [13:0] tmp_20_cast_fu_674_p1;
wire   [13:0] tmp_19_fu_696_p1;
wire   [13:0] tmp_17_fu_690_p2;
wire   [13:0] tmp_20_fu_700_p2;
wire   [0:0] not_exitcond_flatten_fu_756_p2;
wire   [7:0] pout_1_fu_742_p2;
wire   [1:0] hkern_mid_fu_748_p3;
wire   [0:0] exitcond_mid_fu_762_p2;
wire   [0:0] tmp_21_fu_782_p2;
wire   [1:0] hkern_1_fu_776_p2;
wire   [13:0] tmp_23_fu_808_p3;
wire   [13:0] tmp_24_cast_fu_804_p1;
wire   [1:0] wkern_mid2_fu_788_p3;
wire   [7:0] tmp_30_cast_fu_822_p1;
wire   [7:0] col_assign_fu_826_p2;
wire   [13:0] tmp_24_fu_816_p2;
wire   [13:0] tmp_25_cast_fu_831_p1;
wire   [13:0] tmp_25_fu_835_p2;
wire   [3:0] indvar_flatten_op_fu_854_p2;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_condition_118;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

line_buffer_mp_3_bkb #(
    .DataWidth( 16 ),
    .AddressRange( 8064 ),
    .AddressWidth( 13 ))
buffer_val_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_0_V_address0),
    .ce0(buffer_val_0_V_ce0),
    .we0(buffer_val_0_V_we0),
    .d0(buffer_val_1_V_q0),
    .q0(buffer_val_0_V_q0)
);

line_buffer_mp_3_cud #(
    .DataWidth( 16 ),
    .AddressRange( 8064 ),
    .AddressWidth( 13 ))
buffer_val_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_1_V_address0),
    .ce0(buffer_val_1_V_ce0),
    .q0(buffer_val_1_V_q0),
    .address1(buffer_val_1_V_addr_reg_978),
    .ce1(buffer_val_1_V_ce1),
    .we1(buffer_val_1_V_we1),
    .d1(buffer_val_2_V_q0)
);

line_buffer_mp_3_cud #(
    .DataWidth( 16 ),
    .AddressRange( 8064 ),
    .AddressWidth( 13 ))
buffer_val_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_2_V_address0),
    .ce0(buffer_val_2_V_ce0),
    .q0(buffer_val_2_V_q0),
    .address1(buffer_val_2_V_addr_reg_984),
    .ce1(buffer_val_2_V_ce1),
    .we1(buffer_val_2_V_we1),
    .d1(ap_phi_reg_pp0_iter1_tmp_13_reg_356)
);

line_buffer_mp_3_eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 16 ))
line_buffer_mp_3_eOg_U1(
    .din0(buffer_val_0_V_q0),
    .din1(buffer_val_1_V_q0),
    .din2(buffer_val_2_V_q0),
    .din3(hkern_mid2_reg_1017),
    .dout(out_val_V_fu_892_p5)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond3_fu_712_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_616_p2 == 1'd1))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_616_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (exitcond_flatten2_fu_886_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_118)) begin
        if ((out_of_bounds_reg_959 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_356 <= 16'd0;
        end else if ((out_of_bounds_reg_959 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_356 <= input_V_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_356 <= ap_phi_reg_pp0_iter0_tmp_13_reg_356;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_501_p2 == 1'd1))) begin
        exitcond1_reg_252 <= 1'd0;
    end else if (((exitcond_flatten1_fu_915_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        exitcond1_reg_252 <= exitcond2_fu_909_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond4_reg_429 <= exitcond_reg_1053;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
        exitcond4_reg_429 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten3_reg_418 <= exitcond_flatten_reg_1058;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
        exitcond_flatten3_reg_418 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hin_2_reg_323 <= hin_s_reg_276;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hin_2_reg_323 <= hin_3_reg_393;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_955 == 1'd1))) begin
        if (((tmp_18_fu_731_p2 == 1'd0) & (tmp_14_fu_718_p2 == 1'd0))) begin
            hin_3_reg_393 <= hin_fu_724_p2;
        end else if ((tmp_14_fu_718_p2 == 1'd1)) begin
            hin_3_reg_393 <= hin_2_reg_323;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_616_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hin_4_reg_368 <= hin_2_reg_323;
    end else if (((tmp_14_fu_718_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_18_fu_731_p2 == 1'd1) & (or_cond_reg_955 == 1'd1))) begin
        hin_4_reg_368 <= hin_fu_724_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_501_p2 == 1'd1))) begin
        hin_s_reg_276 <= 16'd0;
    end else if (((exitcond_flatten1_fu_915_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        hin_s_reg_276 <= hin_4_reg_368;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        hkern_reg_451 <= hkern_mid2_reg_1017;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
        hkern_reg_451 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_501_p2 == 1'd1))) begin
        hout_reg_300 <= 5'd0;
    end else if (((exitcond_flatten1_fu_915_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        hout_reg_300 <= hout_mid2_reg_929;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten1_reg_462 <= indvar_flatten_next_reg_1043;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
        indvar_flatten1_reg_462 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten2_reg_484 <= indvar_flatten_next2_reg_1048;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
        indvar_flatten2_reg_484 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_501_p2 == 1'd1))) begin
        indvar_flatten_reg_311 <= 9'd0;
    end else if (((exitcond_flatten1_fu_915_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        indvar_flatten_reg_311 <= indvar_flatten_next1_reg_940;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_reg_990 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_reg_345 <= pin_1_reg_963;
    end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_616_p2 == 1'd1))) begin
        pin_reg_345 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        pout_reg_473 <= pout_mid2_reg_1012;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
        pout_reg_473 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_501_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_241 <= tmp_1_fu_495_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_241 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        win_2_reg_334 <= win_s_reg_264;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        win_2_reg_334 <= win_3_reg_405;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_955 == 1'd1))) begin
        if (((tmp_18_fu_731_p2 == 1'd0) & (tmp_14_fu_718_p2 == 1'd0))) begin
            win_3_reg_405 <= 16'd0;
        end else if ((tmp_14_fu_718_p2 == 1'd1)) begin
            win_3_reg_405 <= win_fu_736_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_616_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        win_4_reg_380 <= win_2_reg_334;
    end else if (((tmp_14_fu_718_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_18_fu_731_p2 == 1'd1) & (or_cond_reg_955 == 1'd1))) begin
        win_4_reg_380 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_501_p2 == 1'd1))) begin
        win_s_reg_264 <= 16'd0;
    end else if (((exitcond_flatten1_fu_915_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        win_s_reg_264 <= win_4_reg_380;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        wkern_reg_440 <= wkern_1_reg_1038;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
        wkern_reg_440 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_501_p2 == 1'd1))) begin
        wout_reg_288 <= 5'd0;
    end else if (((exitcond_flatten1_fu_915_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        wout_reg_288 <= wout_1_fu_904_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_1_V_addr_reg_978 <= tmp_27_cast_fu_706_p1;
        buffer_val_2_V_addr_reg_984 <= tmp_27_cast_fu_706_p1;
        exitcond3_reg_990 <= exitcond3_fu_712_p2;
        tmp_27_cast_reg_973 <= tmp_27_cast_fu_706_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten2_reg_1063 <= exitcond_flatten2_fu_886_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_1058 <= exitcond_flatten_fu_880_p2;
        exitcond_reg_1053 <= exitcond_fu_874_p2;
        hkern_mid2_reg_1017 <= hkern_mid2_fu_796_p3;
        indvar_flatten_next2_reg_1048 <= indvar_flatten_next2_fu_868_p2;
        indvar_flatten_next_reg_1043 <= indvar_flatten_next_fu_860_p3;
        pout_mid2_reg_1012 <= pout_mid2_fu_768_p3;
        wkern_1_reg_1038 <= wkern_1_fu_848_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hout_mid2_reg_929 <= hout_mid2_fu_513_p3;
        indvar_flatten_next1_reg_940 <= indvar_flatten_next1_fu_553_p2;
        tmp_10_cast_reg_934 <= tmp_10_cast_fu_549_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        or_cond_reg_955 <= or_cond_fu_616_p2;
        tmp_7_reg_950 <= tmp_7_fu_583_p2;
        wout_mid_reg_945 <= wout_mid_fu_559_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_616_p2 == 1'd1))) begin
        out_of_bounds_reg_959 <= out_of_bounds_fu_662_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_1_reg_963 <= pin_1_fu_668_p2;
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
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond4_phi_fu_433_p4 = exitcond_reg_1053;
    end else begin
        ap_phi_mux_exitcond4_phi_fu_433_p4 = exitcond4_reg_429;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond_flatten3_phi_fu_422_p4 = exitcond_flatten_reg_1058;
    end else begin
        ap_phi_mux_exitcond_flatten3_phi_fu_422_p4 = exitcond_flatten3_reg_418;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_hkern_phi_fu_455_p4 = hkern_mid2_reg_1017;
    end else begin
        ap_phi_mux_hkern_phi_fu_455_p4 = hkern_reg_451;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten1_phi_fu_466_p4 = indvar_flatten_next_reg_1043;
    end else begin
        ap_phi_mux_indvar_flatten1_phi_fu_466_p4 = indvar_flatten1_reg_462;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten2_phi_fu_488_p4 = indvar_flatten_next2_reg_1048;
    end else begin
        ap_phi_mux_indvar_flatten2_phi_fu_488_p4 = indvar_flatten2_reg_484;
    end
end

always @ (*) begin
    if (((exitcond3_reg_990 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_pin_phi_fu_349_p4 = pin_1_reg_963;
    end else begin
        ap_phi_mux_pin_phi_fu_349_p4 = pin_reg_345;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_pout_phi_fu_477_p4 = pout_mid2_reg_1012;
    end else begin
        ap_phi_mux_pout_phi_fu_477_p4 = pout_reg_473;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1063 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_wkern_phi_fu_444_p4 = wkern_1_reg_1038;
    end else begin
        ap_phi_mux_wkern_phi_fu_444_p4 = wkern_reg_440;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_31_cast_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_27_cast_reg_973;
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
        buffer_val_1_V_address0 = tmp_31_cast_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_1_V_address0 = tmp_27_cast_fu_706_p1;
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
        buffer_val_2_V_address0 = tmp_31_cast_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_2_V_address0 = tmp_27_cast_fu_706_p1;
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
    if (((out_of_bounds_reg_959 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_of_bounds_reg_959 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_501_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_616_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_955 == 1'd0) | ((tmp_14_fu_718_p2 == 1'd0) & (tmp_18_fu_731_p2 == 1'd1))))) begin
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
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond_flatten1_fu_915_p2 == 1'd1))) begin
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
    ap_block_pp0_stage0_11001 = ((out_of_bounds_reg_959 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((out_of_bounds_reg_959 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
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
    ap_block_state5_pp0_stage0_iter0 = ((out_of_bounds_reg_959 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_118 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_tmp_13_reg_356 = 'bx;

assign col_assign_fu_826_p2 = (tmp_30_cast_fu_822_p1 + tmp_7_reg_950);

assign exitcond2_fu_909_p2 = ((wout_1_fu_904_p2 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond3_fu_712_p2 = ((ap_phi_mux_pin_phi_fu_349_p4 == 7'd127) ? 1'b1 : 1'b0);

assign exitcond_flatten1_fu_915_p2 = ((indvar_flatten_reg_311 == 9'd440) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_886_p2 = ((ap_phi_mux_indvar_flatten2_phi_fu_488_p4 == 11'd1151) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_880_p2 = ((indvar_flatten_next_fu_860_p3 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond_fu_874_p2 = ((wkern_1_fu_848_p2 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_mid_fu_762_p2 = (not_exitcond_flatten_fu_756_p2 & ap_phi_mux_exitcond4_phi_fu_433_p4);

assign hin_fu_724_p2 = (hin_2_reg_323 + 16'd1);

assign hkern_1_fu_776_p2 = (hkern_mid_fu_748_p3 + 2'd1);

assign hkern_mid2_fu_796_p3 = ((exitcond_mid_fu_762_p2[0:0] === 1'b1) ? hkern_1_fu_776_p2 : hkern_mid_fu_748_p3);

assign hkern_mid_fu_748_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_422_p4[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_hkern_phi_fu_455_p4);

assign hout_1_fu_507_p2 = (hout_reg_300 + 5'd1);

assign hout_mid2_fu_513_p3 = ((exitcond1_reg_252[0:0] === 1'b1) ? hout_1_fu_507_p2 : hout_reg_300);

assign indvar_flatten_next1_fu_553_p2 = (indvar_flatten_reg_311 + 9'd1);

assign indvar_flatten_next2_fu_868_p2 = (ap_phi_mux_indvar_flatten2_phi_fu_488_p4 + 11'd1);

assign indvar_flatten_next_fu_860_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_422_p4[0:0] === 1'b1) ? 4'd1 : indvar_flatten_op_fu_854_p2);

assign indvar_flatten_op_fu_854_p2 = (ap_phi_mux_indvar_flatten1_phi_fu_466_p4 + 4'd1);

assign not_exitcond_flatten_fu_756_p2 = (ap_phi_mux_exitcond_flatten3_phi_fu_422_p4 ^ 1'd1);

assign or_cond_fu_616_p2 = (tmp_4_fu_611_p2 | rev_fu_605_p2);

assign out_of_bounds_fu_662_p2 = (tmp2_fu_656_p2 | tmp1_fu_650_p2);

assign output_V_V_din = out_val_V_fu_892_p5;

assign p_shl6_cast_fu_533_p1 = p_shl6_fu_525_p3;

assign p_shl6_fu_525_p3 = {{hout_mid2_fu_513_p3}, {2'd0}};

assign p_shl_cast_fu_579_p1 = p_shl_fu_571_p3;

assign p_shl_fu_571_p3 = {{wout_mid_fu_559_p3}, {2'd0}};

assign pin_1_fu_668_p2 = (ap_phi_mux_pin_phi_fu_349_p4 + 7'd1);

assign pout_1_fu_742_p2 = (ap_phi_mux_pout_phi_fu_477_p4 + 8'd1);

assign pout_mid2_fu_768_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_422_p4[0:0] === 1'b1) ? pout_1_fu_742_p2 : ap_phi_mux_pout_phi_fu_477_p4);

assign rev_fu_605_p2 = (slt_fu_599_p2 ^ 1'd1);

assign slt_fu_599_p2 = (($signed(tmp_8_cast_fu_595_p1) < $signed(win_2_reg_334)) ? 1'b1 : 1'b0);

assign tmp1_fu_650_p2 = (tmp_9_fu_630_p2 | tmp_2_fu_622_p3);

assign tmp2_fu_656_p2 = (tmp_11_fu_644_p2 | tmp_10_fu_636_p3);

assign tmp_10_cast_fu_549_p1 = $signed(tmp_s_fu_543_p2);

assign tmp_10_fu_636_p3 = win_2_reg_334[32'd15];

assign tmp_11_fu_644_p2 = (($signed(win_2_reg_334) > $signed(16'd62)) ? 1'b1 : 1'b0);

assign tmp_14_fu_718_p2 = (($signed(win_2_reg_334) < $signed(16'd62)) ? 1'b1 : 1'b0);

assign tmp_15_fu_678_p3 = {{ap_phi_mux_pin_phi_fu_349_p4}, {6'd0}};

assign tmp_16_fu_686_p1 = tmp_15_fu_678_p3;

assign tmp_17_fu_690_p2 = (tmp_16_fu_686_p1 - tmp_20_cast_fu_674_p1);

assign tmp_18_fu_731_p2 = (($signed(hin_fu_724_p2) > $signed(tmp_10_cast_reg_934)) ? 1'b1 : 1'b0);

assign tmp_19_fu_696_p1 = win_2_reg_334[13:0];

assign tmp_1_fu_495_p2 = (tmp_reg_241 + 7'd1);

assign tmp_20_cast_fu_674_p1 = ap_phi_mux_pin_phi_fu_349_p4;

assign tmp_20_fu_700_p2 = (tmp_19_fu_696_p1 + tmp_17_fu_690_p2);

assign tmp_21_fu_782_p2 = (exitcond_mid_fu_762_p2 | ap_phi_mux_exitcond_flatten3_phi_fu_422_p4);

assign tmp_23_fu_808_p3 = {{pout_mid2_fu_768_p3}, {6'd0}};

assign tmp_24_cast_fu_804_p1 = pout_mid2_fu_768_p3;

assign tmp_24_fu_816_p2 = (tmp_23_fu_808_p3 - tmp_24_cast_fu_804_p1);

assign tmp_25_cast_fu_831_p1 = col_assign_fu_826_p2;

assign tmp_25_fu_835_p2 = (tmp_24_fu_816_p2 + tmp_25_cast_fu_831_p1);

assign tmp_27_cast_fu_706_p1 = $signed(tmp_20_fu_700_p2);

assign tmp_2_fu_622_p3 = hin_2_reg_323[32'd15];

assign tmp_30_cast_fu_822_p1 = wkern_mid2_fu_788_p3;

assign tmp_31_cast_fu_841_p1 = $signed(tmp_25_fu_835_p2);

assign tmp_3_fu_501_p2 = ((tmp_reg_241 == 7'd127) ? 1'b1 : 1'b0);

assign tmp_4_cast8_fu_521_p1 = hout_mid2_fu_513_p3;

assign tmp_4_fu_611_p2 = (($signed(hin_2_reg_323) < $signed(tmp_10_cast_reg_934)) ? 1'b1 : 1'b0);

assign tmp_5_fu_537_p2 = (p_shl6_cast_fu_533_p1 - tmp_4_cast8_fu_521_p1);

assign tmp_6_cast9_fu_567_p1 = wout_mid_fu_559_p3;

assign tmp_7_fu_583_p2 = (p_shl_cast_fu_579_p1 - tmp_6_cast9_fu_567_p1);

assign tmp_8_cast_fu_595_p1 = $signed(tmp_8_fu_589_p2);

assign tmp_8_fu_589_p2 = (tmp_7_fu_583_p2 + 8'd2);

assign tmp_9_fu_630_p2 = (($signed(hin_2_reg_323) > $signed(16'd62)) ? 1'b1 : 1'b0);

assign tmp_s_fu_543_p2 = (tmp_5_fu_537_p2 + 8'd2);

assign win_fu_736_p2 = (win_2_reg_334 + 16'd1);

assign wkern_1_fu_848_p2 = (wkern_mid2_fu_788_p3 + 2'd1);

assign wkern_mid2_fu_788_p3 = ((tmp_21_fu_782_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_wkern_phi_fu_444_p4);

assign wout_1_fu_904_p2 = (wout_mid_reg_945 + 5'd1);

assign wout_mid_fu_559_p3 = ((exitcond1_reg_252[0:0] === 1'b1) ? 5'd0 : wout_reg_288);

endmodule //line_buffer_mp_3
