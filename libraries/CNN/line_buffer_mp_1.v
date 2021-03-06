// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="line_buffer_mp_1,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.258000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=16,HLS_SYN_DSP=0,HLS_SYN_FF=336,HLS_SYN_LUT=954}" *)

module line_buffer_mp_1 (
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
parameter    ap_ST_fsm_state11 = 9'd256;

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
reg   [0:0] out_of_bounds_reg_896;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [5:0] pin_reg_313;
reg   [0:0] exitcond_flatten3_reg_385;
reg   [0:0] exitcond4_reg_396;
reg   [1:0] wkern_reg_407;
reg   [1:0] hkern_reg_418;
reg   [3:0] indvar_flatten1_reg_429;
reg   [6:0] pout_reg_440;
reg   [7:0] indvar_flatten2_reg_451;
wire   [5:0] tmp_1_fu_462_p2;
wire    ap_CS_fsm_state2;
wire   [15:0] win_133_cast_fu_474_p1;
wire    ap_CS_fsm_state3;
wire   [6:0] hout_mid2_fu_484_p3;
reg   [6:0] hout_mid2_reg_860;
wire   [15:0] tmp_10_cast_fu_504_p1;
reg   [15:0] tmp_10_cast_reg_865;
wire   [11:0] indvar_flatten_next1_fu_508_p2;
reg   [11:0] indvar_flatten_next1_reg_871;
wire   [14:0] tmp_5_fu_514_p1;
reg   [14:0] tmp_5_reg_876;
wire    ap_CS_fsm_state4;
wire   [6:0] wout_mid_fu_518_p3;
reg   [6:0] wout_mid_reg_882;
wire   [6:0] tmp_7_fu_526_p2;
reg   [6:0] tmp_7_reg_887;
wire   [0:0] or_cond_fu_559_p2;
reg   [0:0] or_cond_reg_892;
wire   [0:0] out_of_bounds_fu_625_p2;
wire   [5:0] pin_1_fu_631_p2;
reg   [5:0] pin_1_reg_900;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [63:0] tmp_25_cast_fu_654_p1;
reg   [63:0] tmp_25_cast_reg_910;
reg   [12:0] buffer_val_1_V_addr_reg_915;
wire   [0:0] exitcond3_fu_659_p2;
reg   [0:0] exitcond3_reg_921;
wire   [0:0] tmp_14_fu_665_p2;
wire    ap_CS_fsm_state7;
wire   [15:0] hin_fu_671_p2;
wire   [0:0] tmp_18_fu_678_p2;
wire   [15:0] win_fu_683_p2;
wire   [6:0] pout_mid2_fu_715_p3;
reg   [6:0] pout_mid2_reg_943;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state9_pp1_stage0_iter0;
reg    ap_block_state10_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [1:0] hkern_mid2_fu_743_p3;
reg   [1:0] hkern_mid2_reg_948;
wire   [0:0] tmp_23_fu_774_p1;
reg   [0:0] tmp_23_reg_963;
wire   [1:0] wkern_1_fu_778_p2;
reg   [1:0] wkern_1_reg_968;
wire   [3:0] indvar_flatten_next_fu_790_p3;
reg   [3:0] indvar_flatten_next_reg_973;
wire   [7:0] indvar_flatten_next2_fu_798_p2;
reg   [7:0] indvar_flatten_next2_reg_978;
wire   [0:0] exitcond_fu_804_p2;
reg   [0:0] exitcond_reg_983;
wire   [0:0] exitcond_flatten_fu_810_p2;
reg   [0:0] exitcond_flatten_reg_988;
wire   [0:0] exitcond_flatten2_fu_816_p2;
reg   [0:0] exitcond_flatten2_reg_993;
wire   [6:0] wout_1_fu_830_p2;
wire    ap_CS_fsm_state11;
wire   [0:0] exitcond2_fu_835_p2;
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
reg   [5:0] tmp_reg_211;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_3_fu_468_p2;
reg   [0:0] exitcond1_reg_222;
wire   [0:0] exitcond_flatten1_fu_841_p2;
reg   [14:0] win_4_reg_348;
reg   [14:0] win_s_reg_234;
reg   [15:0] hin_4_reg_336;
reg   [15:0] hin_s_reg_245;
reg   [6:0] wout_reg_257;
reg   [6:0] hout_reg_269;
reg   [11:0] indvar_flatten_reg_280;
reg   [15:0] hin_2_reg_292;
wire    ap_CS_fsm_state8;
reg   [15:0] win_2_reg_303;
reg   [5:0] ap_phi_mux_pin_phi_fu_317_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_tmp_15_reg_324;
reg   [15:0] ap_phi_reg_pp0_iter1_tmp_15_reg_324;
reg   [15:0] hin_3_reg_360;
reg   [15:0] win_3_reg_372;
reg   [0:0] ap_phi_mux_exitcond_flatten3_phi_fu_389_p4;
reg   [0:0] ap_phi_mux_exitcond4_phi_fu_400_p4;
reg   [1:0] ap_phi_mux_wkern_phi_fu_411_p4;
reg   [1:0] ap_phi_mux_hkern_phi_fu_422_p4;
reg   [3:0] ap_phi_mux_indvar_flatten1_phi_fu_433_p4;
reg   [6:0] ap_phi_mux_pout_phi_fu_444_p4;
reg   [7:0] ap_phi_mux_indvar_flatten2_phi_fu_455_p4;
wire   [63:0] tmp_22_fu_768_p1;
reg    ap_block_pp1_stage0_01001;
wire   [6:0] hout_1_fu_478_p2;
wire   [6:0] tmp_2_fu_492_p2;
wire   [6:0] tmp_s_fu_498_p2;
wire   [6:0] tmp_8_fu_532_p2;
wire   [15:0] tmp_8_cast_fu_538_p1;
wire   [0:0] slt_fu_542_p2;
wire   [0:0] rev_fu_548_p2;
wire   [0:0] tmp_4_fu_554_p2;
wire   [8:0] tmp_10_fu_573_p4;
wire   [8:0] tmp_12_fu_597_p4;
wire   [0:0] tmp_9_fu_565_p3;
wire   [0:0] icmp_fu_583_p2;
wire   [0:0] tmp_11_fu_589_p3;
wire   [0:0] icmp1_fu_607_p2;
wire   [0:0] tmp2_fu_619_p2;
wire   [0:0] tmp1_fu_613_p2;
wire   [12:0] tmp_16_fu_637_p3;
wire   [14:0] tmp_24_cast_fu_645_p1;
wire   [14:0] tmp_17_fu_649_p2;
wire   [0:0] not_exitcond_flatten_fu_703_p2;
wire   [6:0] pout_1_fu_689_p2;
wire   [1:0] hkern_mid_fu_695_p3;
wire   [0:0] exitcond_mid_fu_709_p2;
wire   [0:0] tmp_19_fu_729_p2;
wire   [1:0] hkern_1_fu_723_p2;
wire   [1:0] wkern_mid2_fu_735_p3;
wire   [6:0] tmp_28_cast_fu_751_p1;
wire   [6:0] col_assign_fu_755_p2;
wire   [13:0] tmp_21_fu_760_p3;
wire   [3:0] indvar_flatten_op_fu_784_p2;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_condition_124;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

line_buffer_mp_1_bkb #(
    .DataWidth( 16 ),
    .AddressRange( 8192 ),
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

line_buffer_mp_1_cud #(
    .DataWidth( 16 ),
    .AddressRange( 8192 ),
    .AddressWidth( 13 ))
buffer_val_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(buffer_val_1_V_address0),
    .ce0(buffer_val_1_V_ce0),
    .q0(buffer_val_1_V_q0),
    .address1(buffer_val_1_V_addr_reg_915),
    .ce1(buffer_val_1_V_ce1),
    .we1(buffer_val_1_V_we1),
    .d1(ap_phi_reg_pp0_iter1_tmp_15_reg_324)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond3_fu_659_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_559_p2 == 1'd1))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_559_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (exitcond_flatten2_fu_816_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_124)) begin
        if ((out_of_bounds_reg_896 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_tmp_15_reg_324 <= 16'd0;
        end else if ((out_of_bounds_reg_896 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_tmp_15_reg_324 <= input_V_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_15_reg_324 <= ap_phi_reg_pp0_iter0_tmp_15_reg_324;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_468_p2 == 1'd1))) begin
        exitcond1_reg_222 <= 1'd0;
    end else if (((exitcond_flatten1_fu_841_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        exitcond1_reg_222 <= exitcond2_fu_835_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond4_reg_396 <= exitcond_reg_983;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
        exitcond4_reg_396 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten3_reg_385 <= exitcond_flatten_reg_988;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
        exitcond_flatten3_reg_385 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hin_2_reg_292 <= hin_s_reg_245;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hin_2_reg_292 <= hin_3_reg_360;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_892 == 1'd1))) begin
        if (((tmp_18_fu_678_p2 == 1'd0) & (tmp_14_fu_665_p2 == 1'd0))) begin
            hin_3_reg_360 <= hin_fu_671_p2;
        end else if ((tmp_14_fu_665_p2 == 1'd1)) begin
            hin_3_reg_360 <= hin_2_reg_292;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_559_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hin_4_reg_336 <= hin_2_reg_292;
    end else if (((tmp_14_fu_665_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_18_fu_678_p2 == 1'd1) & (or_cond_reg_892 == 1'd1))) begin
        hin_4_reg_336 <= hin_fu_671_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_468_p2 == 1'd1))) begin
        hin_s_reg_245 <= 16'd0;
    end else if (((exitcond_flatten1_fu_841_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        hin_s_reg_245 <= hin_4_reg_336;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        hkern_reg_418 <= hkern_mid2_reg_948;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
        hkern_reg_418 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_468_p2 == 1'd1))) begin
        hout_reg_269 <= 7'd0;
    end else if (((exitcond_flatten1_fu_841_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        hout_reg_269 <= hout_mid2_reg_860;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten1_reg_429 <= indvar_flatten_next_reg_973;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
        indvar_flatten1_reg_429 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten2_reg_451 <= indvar_flatten_next2_reg_978;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
        indvar_flatten2_reg_451 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_468_p2 == 1'd1))) begin
        indvar_flatten_reg_280 <= 12'd0;
    end else if (((exitcond_flatten1_fu_841_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        indvar_flatten_reg_280 <= indvar_flatten_next1_reg_871;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_reg_921 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_reg_313 <= pin_1_reg_900;
    end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_559_p2 == 1'd1))) begin
        pin_reg_313 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        pout_reg_440 <= pout_mid2_reg_943;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
        pout_reg_440 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_468_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_211 <= tmp_1_fu_462_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_211 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        win_2_reg_303 <= win_133_cast_fu_474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        win_2_reg_303 <= win_3_reg_372;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_892 == 1'd1))) begin
        if (((tmp_18_fu_678_p2 == 1'd0) & (tmp_14_fu_665_p2 == 1'd0))) begin
            win_3_reg_372 <= 16'd0;
        end else if ((tmp_14_fu_665_p2 == 1'd1)) begin
            win_3_reg_372 <= win_fu_683_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_559_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        win_4_reg_348 <= tmp_5_fu_514_p1;
    end else if (((tmp_14_fu_665_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_18_fu_678_p2 == 1'd1) & (or_cond_reg_892 == 1'd1))) begin
        win_4_reg_348 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_468_p2 == 1'd1))) begin
        win_s_reg_234 <= 15'd0;
    end else if (((exitcond_flatten1_fu_841_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        win_s_reg_234 <= win_4_reg_348;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        wkern_reg_407 <= wkern_1_reg_968;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
        wkern_reg_407 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_468_p2 == 1'd1))) begin
        wout_reg_257 <= 7'd0;
    end else if (((exitcond_flatten1_fu_841_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        wout_reg_257 <= wout_1_fu_830_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_1_V_addr_reg_915 <= tmp_25_cast_fu_654_p1;
        exitcond3_reg_921 <= exitcond3_fu_659_p2;
        tmp_25_cast_reg_910[14 : 0] <= tmp_25_cast_fu_654_p1[14 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten2_reg_993 <= exitcond_flatten2_fu_816_p2;
        tmp_23_reg_963 <= tmp_23_fu_774_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_988 <= exitcond_flatten_fu_810_p2;
        exitcond_reg_983 <= exitcond_fu_804_p2;
        hkern_mid2_reg_948 <= hkern_mid2_fu_743_p3;
        indvar_flatten_next2_reg_978 <= indvar_flatten_next2_fu_798_p2;
        indvar_flatten_next_reg_973 <= indvar_flatten_next_fu_790_p3;
        pout_mid2_reg_943 <= pout_mid2_fu_715_p3;
        wkern_1_reg_968 <= wkern_1_fu_778_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hout_mid2_reg_860 <= hout_mid2_fu_484_p3;
        indvar_flatten_next1_reg_871 <= indvar_flatten_next1_fu_508_p2;
        tmp_10_cast_reg_865[6 : 1] <= tmp_10_cast_fu_504_p1[6 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        or_cond_reg_892 <= or_cond_fu_559_p2;
        tmp_5_reg_876 <= tmp_5_fu_514_p1;
        tmp_7_reg_887[6 : 1] <= tmp_7_fu_526_p2[6 : 1];
        wout_mid_reg_882 <= wout_mid_fu_518_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_559_p2 == 1'd1))) begin
        out_of_bounds_reg_896 <= out_of_bounds_fu_625_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_1_reg_900 <= pin_1_fu_631_p2;
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
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond4_phi_fu_400_p4 = exitcond_reg_983;
    end else begin
        ap_phi_mux_exitcond4_phi_fu_400_p4 = exitcond4_reg_396;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond_flatten3_phi_fu_389_p4 = exitcond_flatten_reg_988;
    end else begin
        ap_phi_mux_exitcond_flatten3_phi_fu_389_p4 = exitcond_flatten3_reg_385;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_hkern_phi_fu_422_p4 = hkern_mid2_reg_948;
    end else begin
        ap_phi_mux_hkern_phi_fu_422_p4 = hkern_reg_418;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten1_phi_fu_433_p4 = indvar_flatten_next_reg_973;
    end else begin
        ap_phi_mux_indvar_flatten1_phi_fu_433_p4 = indvar_flatten1_reg_429;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten2_phi_fu_455_p4 = indvar_flatten_next2_reg_978;
    end else begin
        ap_phi_mux_indvar_flatten2_phi_fu_455_p4 = indvar_flatten2_reg_451;
    end
end

always @ (*) begin
    if (((exitcond3_reg_921 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_pin_phi_fu_317_p4 = pin_1_reg_900;
    end else begin
        ap_phi_mux_pin_phi_fu_317_p4 = pin_reg_313;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_pout_phi_fu_444_p4 = pout_mid2_reg_943;
    end else begin
        ap_phi_mux_pout_phi_fu_444_p4 = pout_reg_440;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_993 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_wkern_phi_fu_411_p4 = wkern_1_reg_968;
    end else begin
        ap_phi_mux_wkern_phi_fu_411_p4 = wkern_reg_407;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_22_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_25_cast_reg_910;
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
        buffer_val_1_V_address0 = tmp_22_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_1_V_address0 = tmp_25_cast_fu_654_p1;
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
    if (((out_of_bounds_reg_896 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_of_bounds_reg_896 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_468_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_559_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_892 == 1'd0) | ((tmp_14_fu_665_p2 == 1'd0) & (tmp_18_fu_678_p2 == 1'd1))))) begin
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
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond_flatten1_fu_841_p2 == 1'd1))) begin
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
    ap_block_pp0_stage0_11001 = ((out_of_bounds_reg_896 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((out_of_bounds_reg_896 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
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
    ap_block_state5_pp0_stage0_iter0 = ((out_of_bounds_reg_896 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_124 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_tmp_15_reg_324 = 'bx;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign col_assign_fu_755_p2 = (tmp_7_reg_887 + tmp_28_cast_fu_751_p1);

assign exitcond2_fu_835_p2 = ((wout_1_fu_830_p2 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond3_fu_659_p2 = ((ap_phi_mux_pin_phi_fu_317_p4 == 6'd63) ? 1'b1 : 1'b0);

assign exitcond_flatten1_fu_841_p2 = ((indvar_flatten_reg_280 == 12'd4095) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_816_p2 = ((ap_phi_mux_indvar_flatten2_phi_fu_455_p4 == 8'd255) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_810_p2 = ((indvar_flatten_next_fu_790_p3 == 4'd4) ? 1'b1 : 1'b0);

assign exitcond_fu_804_p2 = ((wkern_1_fu_778_p2 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_mid_fu_709_p2 = (not_exitcond_flatten_fu_703_p2 & ap_phi_mux_exitcond4_phi_fu_400_p4);

assign hin_fu_671_p2 = (hin_2_reg_292 + 16'd1);

assign hkern_1_fu_723_p2 = (2'd1 + hkern_mid_fu_695_p3);

assign hkern_mid2_fu_743_p3 = ((exitcond_mid_fu_709_p2[0:0] === 1'b1) ? hkern_1_fu_723_p2 : hkern_mid_fu_695_p3);

assign hkern_mid_fu_695_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_389_p4[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_hkern_phi_fu_422_p4);

assign hout_1_fu_478_p2 = (7'd1 + hout_reg_269);

assign hout_mid2_fu_484_p3 = ((exitcond1_reg_222[0:0] === 1'b1) ? hout_1_fu_478_p2 : hout_reg_269);

assign icmp1_fu_607_p2 = (($signed(tmp_12_fu_597_p4) > $signed(9'd0)) ? 1'b1 : 1'b0);

assign icmp_fu_583_p2 = (($signed(tmp_10_fu_573_p4) > $signed(9'd0)) ? 1'b1 : 1'b0);

assign indvar_flatten_next1_fu_508_p2 = (12'd1 + indvar_flatten_reg_280);

assign indvar_flatten_next2_fu_798_p2 = (8'd1 + ap_phi_mux_indvar_flatten2_phi_fu_455_p4);

assign indvar_flatten_next_fu_790_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_389_p4[0:0] === 1'b1) ? 4'd1 : indvar_flatten_op_fu_784_p2);

assign indvar_flatten_op_fu_784_p2 = (4'd1 + ap_phi_mux_indvar_flatten1_phi_fu_433_p4);

assign not_exitcond_flatten_fu_703_p2 = (ap_phi_mux_exitcond_flatten3_phi_fu_389_p4 ^ 1'd1);

assign or_cond_fu_559_p2 = (tmp_4_fu_554_p2 | rev_fu_548_p2);

assign out_of_bounds_fu_625_p2 = (tmp2_fu_619_p2 | tmp1_fu_613_p2);

assign output_V_V_din = ((tmp_23_reg_963[0:0] === 1'b1) ? buffer_val_1_V_q0 : buffer_val_0_V_q0);

assign pin_1_fu_631_p2 = (ap_phi_mux_pin_phi_fu_317_p4 + 6'd1);

assign pout_1_fu_689_p2 = (7'd1 + ap_phi_mux_pout_phi_fu_444_p4);

assign pout_mid2_fu_715_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_389_p4[0:0] === 1'b1) ? pout_1_fu_689_p2 : ap_phi_mux_pout_phi_fu_444_p4);

assign rev_fu_548_p2 = (slt_fu_542_p2 ^ 1'd1);

assign slt_fu_542_p2 = (($signed(tmp_8_cast_fu_538_p1) < $signed(win_2_reg_303)) ? 1'b1 : 1'b0);

assign tmp1_fu_613_p2 = (tmp_9_fu_565_p3 | icmp_fu_583_p2);

assign tmp2_fu_619_p2 = (tmp_11_fu_589_p3 | icmp1_fu_607_p2);

assign tmp_10_cast_fu_504_p1 = tmp_s_fu_498_p2;

assign tmp_10_fu_573_p4 = {{hin_2_reg_292[15:7]}};

assign tmp_11_fu_589_p3 = win_2_reg_303[32'd15];

assign tmp_12_fu_597_p4 = {{win_2_reg_303[15:7]}};

assign tmp_14_fu_665_p2 = (($signed(win_2_reg_303) < $signed(16'd127)) ? 1'b1 : 1'b0);

assign tmp_16_fu_637_p3 = {{ap_phi_mux_pin_phi_fu_317_p4}, {7'd0}};

assign tmp_17_fu_649_p2 = (tmp_24_cast_fu_645_p1 + tmp_5_reg_876);

assign tmp_18_fu_678_p2 = (($signed(hin_fu_671_p2) > $signed(tmp_10_cast_reg_865)) ? 1'b1 : 1'b0);

assign tmp_19_fu_729_p2 = (exitcond_mid_fu_709_p2 | ap_phi_mux_exitcond_flatten3_phi_fu_389_p4);

assign tmp_1_fu_462_p2 = (tmp_reg_211 + 6'd1);

assign tmp_21_fu_760_p3 = {{pout_mid2_fu_715_p3}, {col_assign_fu_755_p2}};

assign tmp_22_fu_768_p1 = tmp_21_fu_760_p3;

assign tmp_23_fu_774_p1 = hkern_mid2_fu_743_p3[0:0];

assign tmp_24_cast_fu_645_p1 = tmp_16_fu_637_p3;

assign tmp_25_cast_fu_654_p1 = tmp_17_fu_649_p2;

assign tmp_28_cast_fu_751_p1 = wkern_mid2_fu_735_p3;

assign tmp_2_fu_492_p2 = hout_mid2_fu_484_p3 << 7'd1;

assign tmp_3_fu_468_p2 = ((tmp_reg_211 == 6'd63) ? 1'b1 : 1'b0);

assign tmp_4_fu_554_p2 = (($signed(hin_2_reg_292) < $signed(tmp_10_cast_reg_865)) ? 1'b1 : 1'b0);

assign tmp_5_fu_514_p1 = win_2_reg_303[14:0];

assign tmp_7_fu_526_p2 = wout_mid_fu_518_p3 << 7'd1;

assign tmp_8_cast_fu_538_p1 = tmp_8_fu_532_p2;

assign tmp_8_fu_532_p2 = (tmp_7_fu_526_p2 | 7'd1);

assign tmp_9_fu_565_p3 = hin_2_reg_292[32'd15];

assign tmp_s_fu_498_p2 = (tmp_2_fu_492_p2 | 7'd1);

assign win_133_cast_fu_474_p1 = win_s_reg_234;

assign win_fu_683_p2 = (win_2_reg_303 + 16'd1);

assign wkern_1_fu_778_p2 = (2'd1 + wkern_mid2_fu_735_p3);

assign wkern_mid2_fu_735_p3 = ((tmp_19_fu_729_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_wkern_phi_fu_411_p4);

assign wout_1_fu_830_p2 = (wout_mid_reg_882 + 7'd1);

assign wout_mid_fu_518_p3 = ((exitcond1_reg_222[0:0] === 1'b1) ? 7'd0 : wout_reg_257);

always @ (posedge ap_clk) begin
    tmp_10_cast_reg_865[0] <= 1'b1;
    tmp_10_cast_reg_865[15:7] <= 9'b000000000;
    tmp_7_reg_887[0] <= 1'b0;
    tmp_25_cast_reg_910[63:15] <= 49'b0000000000000000000000000000000000000000000000000;
end

endmodule //line_buffer_mp_1
