// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="line_buffer_20,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.573000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=6,HLS_SYN_DSP=1,HLS_SYN_FF=352,HLS_SYN_LUT=1077}" *)

module line_buffer_20 (
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
reg   [0:0] out_of_bounds_reg_925;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [5:0] pin_reg_348;
reg   [10:0] phi_mul1_reg_359;
reg   [0:0] exitcond_flatten3_reg_431;
reg   [0:0] exitcond4_reg_442;
reg   [6:0] pkern_reg_453;
reg   [1:0] wkern_reg_464;
reg   [8:0] indvar_flatten1_reg_475;
reg   [1:0] hkern_reg_486;
reg   [9:0] indvar_flatten2_reg_497;
wire   [5:0] tmp_1_fu_508_p2;
wire    ap_CS_fsm_state2;
wire   [10:0] next_mul_fu_514_p2;
wire   [15:0] win_133_cast_fu_526_p1;
wire    ap_CS_fsm_state3;
wire   [4:0] hout_mid2_fu_536_p3;
reg   [4:0] hout_mid2_reg_894;
wire   [15:0] tmp_4_cast_fu_550_p1;
reg   [15:0] tmp_4_cast_reg_899;
wire   [8:0] indvar_flatten_next1_fu_554_p2;
reg   [8:0] indvar_flatten_next1_reg_905;
wire   [14:0] tmp_2_fu_560_p1;
wire    ap_CS_fsm_state4;
wire   [4:0] wout_mid_fu_564_p3;
reg   [4:0] wout_mid_reg_915;
wire   [0:0] or_cond_fu_599_p2;
reg   [0:0] or_cond_reg_921;
wire   [0:0] out_of_bounds_fu_641_p2;
wire   [5:0] pin_1_fu_651_p2;
reg   [5:0] pin_1_reg_929;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] next_mul1_fu_657_p2;
reg   [10:0] next_mul1_reg_939;
wire   [63:0] tmp_23_cast_fu_673_p1;
reg   [63:0] tmp_23_cast_reg_944;
reg   [10:0] buffer_val_1_V_addr_reg_949;
reg   [10:0] buffer_val_2_V_addr_reg_955;
wire   [0:0] exitcond3_fu_679_p2;
reg   [0:0] exitcond3_reg_961;
wire   [0:0] tmp_12_fu_685_p2;
wire    ap_CS_fsm_state7;
wire   [15:0] hin_fu_691_p2;
wire   [0:0] tmp_15_fu_698_p2;
wire   [15:0] win_fu_703_p2;
wire   [1:0] hkern_mid2_fu_735_p3;
reg   [1:0] hkern_mid2_reg_983;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state9_pp1_stage0_iter0;
reg    ap_block_state10_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [1:0] wkern_mid2_fu_763_p3;
reg   [1:0] wkern_mid2_reg_989;
wire   [6:0] pkern_1_fu_794_p2;
reg   [6:0] pkern_1_reg_1009;
wire   [8:0] indvar_flatten_next_fu_806_p3;
reg   [8:0] indvar_flatten_next_reg_1014;
wire   [9:0] indvar_flatten_next2_fu_814_p2;
reg   [9:0] indvar_flatten_next2_reg_1019;
wire   [0:0] exitcond_fu_820_p2;
reg   [0:0] exitcond_reg_1024;
wire   [0:0] exitcond_flatten_fu_826_p2;
reg   [0:0] exitcond_flatten_reg_1029;
wire   [0:0] exitcond_flatten2_fu_832_p2;
reg   [0:0] exitcond_flatten2_reg_1034;
wire   [4:0] wout_1_fu_850_p2;
wire    ap_CS_fsm_state11;
wire   [0:0] exitcond2_fu_855_p2;
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
reg   [5:0] tmp_reg_235;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_3_fu_520_p2;
reg   [10:0] phi_mul_reg_246;
reg   [0:0] exitcond1_reg_257;
wire   [0:0] exitcond_flatten1_fu_861_p2;
reg   [14:0] win_4_reg_394;
reg   [14:0] win_s_reg_269;
reg   [15:0] hin_4_reg_382;
reg   [15:0] hin_s_reg_280;
reg   [4:0] wout_reg_292;
reg   [4:0] hout_reg_304;
reg   [8:0] indvar_flatten_reg_315;
reg   [15:0] hin_2_reg_327;
wire    ap_CS_fsm_state8;
reg   [15:0] win_2_reg_338;
reg   [5:0] ap_phi_mux_pin_phi_fu_352_p4;
reg   [10:0] ap_phi_mux_phi_mul1_phi_fu_363_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_tmp_13_reg_370;
reg   [15:0] ap_phi_reg_pp0_iter1_tmp_13_reg_370;
reg   [15:0] hin_3_reg_406;
reg   [15:0] win_3_reg_418;
reg   [0:0] ap_phi_mux_exitcond_flatten3_phi_fu_435_p4;
reg   [0:0] ap_phi_mux_exitcond4_phi_fu_446_p4;
reg   [6:0] ap_phi_mux_pkern_phi_fu_457_p4;
reg   [1:0] ap_phi_mux_wkern_phi_fu_468_p4;
reg   [8:0] ap_phi_mux_indvar_flatten1_phi_fu_479_p4;
reg   [1:0] ap_phi_mux_hkern_phi_fu_490_p4;
reg   [9:0] ap_phi_mux_indvar_flatten2_phi_fu_501_p4;
wire  signed [63:0] tmp_26_cast_fu_788_p1;
wire   [15:0] out_val_V_fu_838_p5;
reg    ap_block_pp1_stage0_01001;
wire   [4:0] hout_1_fu_530_p2;
wire   [4:0] tmp_4_fu_544_p2;
wire   [4:0] tmp_7_fu_572_p2;
wire   [15:0] tmp_7_cast_fu_578_p1;
wire   [0:0] slt_fu_582_p2;
wire   [0:0] rev_fu_588_p2;
wire   [0:0] tmp_5_fu_594_p2;
wire   [0:0] tmp_6_fu_605_p2;
wire   [0:0] tmp_9_fu_611_p2;
wire   [0:0] tmp_8_fu_617_p2;
wire   [0:0] tmp_10_fu_623_p2;
wire   [0:0] tmp2_fu_635_p2;
wire   [0:0] tmp1_fu_629_p2;
wire   [11:0] phi_mul35_cast_fu_647_p1;
wire   [11:0] tmp_14_fu_663_p1;
wire   [11:0] tmp_16_fu_667_p2;
wire   [0:0] not_exitcond_flatten_fu_723_p2;
wire   [1:0] hkern_1_fu_709_p2;
wire   [1:0] wkern_mid_fu_715_p3;
wire   [0:0] exitcond_mid_fu_729_p2;
wire   [0:0] tmp_17_fu_749_p2;
wire   [1:0] wkern_1_fu_743_p2;
wire   [6:0] pkern_mid2_fu_755_p3;
wire   [4:0] tmp_27_cast_fu_775_p1;
wire   [4:0] col_assign_fu_779_p2;
wire   [11:0] grp_fu_867_p3;
wire   [8:0] indvar_flatten_op_fu_800_p2;
wire   [6:0] grp_fu_867_p0;
wire   [5:0] grp_fu_867_p1;
wire   [4:0] grp_fu_867_p2;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
wire   [11:0] grp_fu_867_p00;
wire   [11:0] grp_fu_867_p20;
reg    ap_condition_124;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

line_buffer_20_bubkb #(
    .DataWidth( 16 ),
    .AddressRange( 1472 ),
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

line_buffer_20_bucud #(
    .DataWidth( 16 ),
    .AddressRange( 1472 ),
    .AddressWidth( 11 ))
buffer_val_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_1_V_address0),
    .ce0(buffer_val_1_V_ce0),
    .q0(buffer_val_1_V_q0),
    .address1(buffer_val_1_V_addr_reg_949),
    .ce1(buffer_val_1_V_ce1),
    .we1(buffer_val_1_V_we1),
    .d1(buffer_val_2_V_q0)
);

line_buffer_20_bucud #(
    .DataWidth( 16 ),
    .AddressRange( 1472 ),
    .AddressWidth( 11 ))
buffer_val_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_2_V_address0),
    .ce0(buffer_val_2_V_ce0),
    .q0(buffer_val_2_V_q0),
    .address1(buffer_val_2_V_addr_reg_955),
    .ce1(buffer_val_2_V_ce1),
    .we1(buffer_val_2_V_we1),
    .d1(ap_phi_reg_pp0_iter1_tmp_13_reg_370)
);

line_buffer_20_mueOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 16 ))
line_buffer_20_mueOg_U1(
    .din0(buffer_val_0_V_q0),
    .din1(buffer_val_1_V_q0),
    .din2(buffer_val_2_V_q0),
    .din3(hkern_mid2_reg_983),
    .dout(out_val_V_fu_838_p5)
);

line_buffer_20_mafYi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 6 ),
    .din2_WIDTH( 5 ),
    .dout_WIDTH( 12 ))
line_buffer_20_mafYi_U2(
    .din0(grp_fu_867_p0),
    .din1(grp_fu_867_p1),
    .din2(grp_fu_867_p2),
    .dout(grp_fu_867_p3)
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond3_fu_679_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_599_p2 == 1'd1))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_599_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_CS_fsm_pp1_stage0) & (exitcond_flatten2_fu_832_p2 == 1'd1))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_124)) begin
        if ((out_of_bounds_reg_925 == 1'd1)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_370 <= 16'd0;
        end else if ((out_of_bounds_reg_925 == 1'd0)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_370 <= input_V_V_dout;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_13_reg_370 <= ap_phi_reg_pp0_iter0_tmp_13_reg_370;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_520_p2 == 1'd1))) begin
        exitcond1_reg_257 <= 1'd0;
    end else if (((exitcond_flatten1_fu_861_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        exitcond1_reg_257 <= exitcond2_fu_855_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond4_reg_442 <= exitcond_reg_1024;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
        exitcond4_reg_442 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten3_reg_431 <= exitcond_flatten_reg_1029;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
        exitcond_flatten3_reg_431 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hin_2_reg_327 <= hin_s_reg_280;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        hin_2_reg_327 <= hin_3_reg_406;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_921 == 1'd1))) begin
        if (((tmp_15_fu_698_p2 == 1'd0) & (tmp_12_fu_685_p2 == 1'd0))) begin
            hin_3_reg_406 <= hin_fu_691_p2;
        end else if ((tmp_12_fu_685_p2 == 1'd1)) begin
            hin_3_reg_406 <= hin_2_reg_327;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_599_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hin_4_reg_382 <= hin_2_reg_327;
    end else if (((tmp_12_fu_685_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_15_fu_698_p2 == 1'd1) & (or_cond_reg_921 == 1'd1))) begin
        hin_4_reg_382 <= hin_fu_691_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_520_p2 == 1'd1))) begin
        hin_s_reg_280 <= 16'd0;
    end else if (((exitcond_flatten1_fu_861_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        hin_s_reg_280 <= hin_4_reg_382;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        hkern_reg_486 <= hkern_mid2_reg_983;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
        hkern_reg_486 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_520_p2 == 1'd1))) begin
        hout_reg_304 <= 5'd0;
    end else if (((exitcond_flatten1_fu_861_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        hout_reg_304 <= hout_mid2_reg_894;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten1_reg_475 <= indvar_flatten_next_reg_1014;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
        indvar_flatten1_reg_475 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten2_reg_497 <= indvar_flatten_next2_reg_1019;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
        indvar_flatten2_reg_497 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_520_p2 == 1'd1))) begin
        indvar_flatten_reg_315 <= 9'd0;
    end else if (((exitcond_flatten1_fu_861_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        indvar_flatten_reg_315 <= indvar_flatten_next1_reg_905;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_reg_961 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        phi_mul1_reg_359 <= next_mul1_reg_939;
    end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_599_p2 == 1'd1))) begin
        phi_mul1_reg_359 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_520_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_mul_reg_246 <= next_mul_fu_514_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        phi_mul_reg_246 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_reg_961 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        pin_reg_348 <= pin_1_reg_929;
    end else if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_599_p2 == 1'd1))) begin
        pin_reg_348 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        pkern_reg_453 <= pkern_1_reg_1009;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
        pkern_reg_453 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_520_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_235 <= tmp_1_fu_508_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_235 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        win_2_reg_338 <= win_133_cast_fu_526_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        win_2_reg_338 <= win_3_reg_418;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (or_cond_reg_921 == 1'd1))) begin
        if (((tmp_15_fu_698_p2 == 1'd0) & (tmp_12_fu_685_p2 == 1'd0))) begin
            win_3_reg_418 <= 16'd0;
        end else if ((tmp_12_fu_685_p2 == 1'd1)) begin
            win_3_reg_418 <= win_fu_703_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((or_cond_fu_599_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        win_4_reg_394 <= tmp_2_fu_560_p1;
    end else if (((tmp_12_fu_685_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7) & (tmp_15_fu_698_p2 == 1'd1) & (or_cond_reg_921 == 1'd1))) begin
        win_4_reg_394 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_520_p2 == 1'd1))) begin
        win_s_reg_269 <= 15'd0;
    end else if (((exitcond_flatten1_fu_861_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        win_s_reg_269 <= win_4_reg_394;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        wkern_reg_464 <= wkern_mid2_reg_989;
    end else if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
        wkern_reg_464 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_520_p2 == 1'd1))) begin
        wout_reg_292 <= 5'd0;
    end else if (((exitcond_flatten1_fu_861_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        wout_reg_292 <= wout_1_fu_850_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        buffer_val_1_V_addr_reg_949 <= tmp_23_cast_fu_673_p1;
        buffer_val_2_V_addr_reg_955 <= tmp_23_cast_fu_673_p1;
        exitcond3_reg_961 <= exitcond3_fu_679_p2;
        tmp_23_cast_reg_944[11 : 0] <= tmp_23_cast_fu_673_p1[11 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten2_reg_1034 <= exitcond_flatten2_fu_832_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_1029 <= exitcond_flatten_fu_826_p2;
        exitcond_reg_1024 <= exitcond_fu_820_p2;
        hkern_mid2_reg_983 <= hkern_mid2_fu_735_p3;
        indvar_flatten_next2_reg_1019 <= indvar_flatten_next2_fu_814_p2;
        indvar_flatten_next_reg_1014 <= indvar_flatten_next_fu_806_p3;
        pkern_1_reg_1009 <= pkern_1_fu_794_p2;
        wkern_mid2_reg_989 <= wkern_mid2_fu_763_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hout_mid2_reg_894 <= hout_mid2_fu_536_p3;
        indvar_flatten_next1_reg_905 <= indvar_flatten_next1_fu_554_p2;
        tmp_4_cast_reg_899[4 : 0] <= tmp_4_cast_fu_550_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        next_mul1_reg_939 <= next_mul1_fu_657_p2;
        pin_1_reg_929 <= pin_1_fu_651_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        or_cond_reg_921 <= or_cond_fu_599_p2;
        wout_mid_reg_915 <= wout_mid_fu_564_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_599_p2 == 1'd1))) begin
        out_of_bounds_reg_925 <= out_of_bounds_fu_641_p2;
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
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond4_phi_fu_446_p4 = exitcond_reg_1024;
    end else begin
        ap_phi_mux_exitcond4_phi_fu_446_p4 = exitcond4_reg_442;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond_flatten3_phi_fu_435_p4 = exitcond_flatten_reg_1029;
    end else begin
        ap_phi_mux_exitcond_flatten3_phi_fu_435_p4 = exitcond_flatten3_reg_431;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_hkern_phi_fu_490_p4 = hkern_mid2_reg_983;
    end else begin
        ap_phi_mux_hkern_phi_fu_490_p4 = hkern_reg_486;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten1_phi_fu_479_p4 = indvar_flatten_next_reg_1014;
    end else begin
        ap_phi_mux_indvar_flatten1_phi_fu_479_p4 = indvar_flatten1_reg_475;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten2_phi_fu_501_p4 = indvar_flatten_next2_reg_1019;
    end else begin
        ap_phi_mux_indvar_flatten2_phi_fu_501_p4 = indvar_flatten2_reg_497;
    end
end

always @ (*) begin
    if (((exitcond3_reg_961 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_phi_mul1_phi_fu_363_p4 = next_mul1_reg_939;
    end else begin
        ap_phi_mux_phi_mul1_phi_fu_363_p4 = phi_mul1_reg_359;
    end
end

always @ (*) begin
    if (((exitcond3_reg_961 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_pin_phi_fu_352_p4 = pin_1_reg_929;
    end else begin
        ap_phi_mux_pin_phi_fu_352_p4 = pin_reg_348;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_pkern_phi_fu_457_p4 = pkern_1_reg_1009;
    end else begin
        ap_phi_mux_pkern_phi_fu_457_p4 = pkern_reg_453;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten2_reg_1034 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_wkern_phi_fu_468_p4 = wkern_mid2_reg_989;
    end else begin
        ap_phi_mux_wkern_phi_fu_468_p4 = wkern_reg_464;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_26_cast_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_23_cast_reg_944;
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
        buffer_val_1_V_address0 = tmp_26_cast_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_1_V_address0 = tmp_23_cast_fu_673_p1;
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
        buffer_val_2_V_address0 = tmp_26_cast_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buffer_val_2_V_address0 = tmp_23_cast_fu_673_p1;
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
    if (((out_of_bounds_reg_925 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_of_bounds_reg_925 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_3_fu_520_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_599_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state7) & ((or_cond_reg_921 == 1'd0) | ((tmp_12_fu_685_p2 == 1'd0) & (tmp_15_fu_698_p2 == 1'd1))))) begin
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
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond_flatten1_fu_861_p2 == 1'd1))) begin
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
    ap_block_pp0_stage0_11001 = ((out_of_bounds_reg_925 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((out_of_bounds_reg_925 == 1'd0) & (input_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
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
    ap_block_state5_pp0_stage0_iter0 = ((out_of_bounds_reg_925 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_124 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_tmp_13_reg_370 = 'bx;

assign col_assign_fu_779_p2 = (tmp_27_cast_fu_775_p1 + wout_mid_reg_915);

assign exitcond2_fu_855_p2 = ((wout_1_fu_850_p2 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond3_fu_679_p2 = ((ap_phi_mux_pin_phi_fu_352_p4 == 6'd63) ? 1'b1 : 1'b0);

assign exitcond_flatten1_fu_861_p2 = ((indvar_flatten_reg_315 == 9'd440) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_832_p2 = ((ap_phi_mux_indvar_flatten2_phi_fu_501_p4 == 10'd575) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_826_p2 = ((indvar_flatten_next_fu_806_p3 == 9'd192) ? 1'b1 : 1'b0);

assign exitcond_fu_820_p2 = ((pkern_1_fu_794_p2 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_mid_fu_729_p2 = (not_exitcond_flatten_fu_723_p2 & ap_phi_mux_exitcond4_phi_fu_446_p4);

assign grp_fu_867_p0 = grp_fu_867_p00;

assign grp_fu_867_p00 = pkern_mid2_fu_755_p3;

assign grp_fu_867_p1 = 12'd23;

assign grp_fu_867_p2 = grp_fu_867_p20;

assign grp_fu_867_p20 = col_assign_fu_779_p2;

assign hin_fu_691_p2 = (hin_2_reg_327 + 16'd1);

assign hkern_1_fu_709_p2 = (ap_phi_mux_hkern_phi_fu_490_p4 + 2'd1);

assign hkern_mid2_fu_735_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_435_p4[0:0] === 1'b1) ? hkern_1_fu_709_p2 : ap_phi_mux_hkern_phi_fu_490_p4);

assign hout_1_fu_530_p2 = (hout_reg_304 + 5'd1);

assign hout_mid2_fu_536_p3 = ((exitcond1_reg_257[0:0] === 1'b1) ? hout_1_fu_530_p2 : hout_reg_304);

assign indvar_flatten_next1_fu_554_p2 = (indvar_flatten_reg_315 + 9'd1);

assign indvar_flatten_next2_fu_814_p2 = (ap_phi_mux_indvar_flatten2_phi_fu_501_p4 + 10'd1);

assign indvar_flatten_next_fu_806_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_435_p4[0:0] === 1'b1) ? 9'd1 : indvar_flatten_op_fu_800_p2);

assign indvar_flatten_op_fu_800_p2 = (ap_phi_mux_indvar_flatten1_phi_fu_479_p4 + 9'd1);

assign next_mul1_fu_657_p2 = (11'd23 + ap_phi_mux_phi_mul1_phi_fu_363_p4);

assign next_mul_fu_514_p2 = (phi_mul_reg_246 + 11'd23);

assign not_exitcond_flatten_fu_723_p2 = (ap_phi_mux_exitcond_flatten3_phi_fu_435_p4 ^ 1'd1);

assign or_cond_fu_599_p2 = (tmp_5_fu_594_p2 | rev_fu_588_p2);

assign out_of_bounds_fu_641_p2 = (tmp2_fu_635_p2 | tmp1_fu_629_p2);

assign output_V_V_din = out_val_V_fu_838_p5;

assign phi_mul35_cast_fu_647_p1 = ap_phi_mux_phi_mul1_phi_fu_363_p4;

assign pin_1_fu_651_p2 = (ap_phi_mux_pin_phi_fu_352_p4 + 6'd1);

assign pkern_1_fu_794_p2 = (pkern_mid2_fu_755_p3 + 7'd1);

assign pkern_mid2_fu_755_p3 = ((tmp_17_fu_749_p2[0:0] === 1'b1) ? 7'd0 : ap_phi_mux_pkern_phi_fu_457_p4);

assign rev_fu_588_p2 = (slt_fu_582_p2 ^ 1'd1);

assign slt_fu_582_p2 = (($signed(tmp_7_cast_fu_578_p1) < $signed(win_2_reg_338)) ? 1'b1 : 1'b0);

assign tmp1_fu_629_p2 = (tmp_9_fu_611_p2 | tmp_6_fu_605_p2);

assign tmp2_fu_635_p2 = (tmp_8_fu_617_p2 | tmp_10_fu_623_p2);

assign tmp_10_fu_623_p2 = (($signed(win_2_reg_338) > $signed(16'd21)) ? 1'b1 : 1'b0);

assign tmp_12_fu_685_p2 = (($signed(win_2_reg_338) < $signed(16'd22)) ? 1'b1 : 1'b0);

assign tmp_14_fu_663_p1 = win_2_reg_338[11:0];

assign tmp_15_fu_698_p2 = (($signed(hin_fu_691_p2) > $signed(tmp_4_cast_reg_899)) ? 1'b1 : 1'b0);

assign tmp_16_fu_667_p2 = (phi_mul35_cast_fu_647_p1 + tmp_14_fu_663_p1);

assign tmp_17_fu_749_p2 = (exitcond_mid_fu_729_p2 | ap_phi_mux_exitcond_flatten3_phi_fu_435_p4);

assign tmp_1_fu_508_p2 = (tmp_reg_235 + 6'd1);

assign tmp_23_cast_fu_673_p1 = tmp_16_fu_667_p2;

assign tmp_26_cast_fu_788_p1 = $signed(grp_fu_867_p3);

assign tmp_27_cast_fu_775_p1 = wkern_mid2_fu_763_p3;

assign tmp_2_fu_560_p1 = win_2_reg_338[14:0];

assign tmp_3_fu_520_p2 = ((tmp_reg_235 == 6'd63) ? 1'b1 : 1'b0);

assign tmp_4_cast_fu_550_p1 = tmp_4_fu_544_p2;

assign tmp_4_fu_544_p2 = (hout_mid2_fu_536_p3 + 5'd2);

assign tmp_5_fu_594_p2 = (($signed(hin_2_reg_327) < $signed(tmp_4_cast_reg_899)) ? 1'b1 : 1'b0);

assign tmp_6_fu_605_p2 = (($signed(hin_2_reg_327) < $signed(16'd1)) ? 1'b1 : 1'b0);

assign tmp_7_cast_fu_578_p1 = tmp_7_fu_572_p2;

assign tmp_7_fu_572_p2 = (5'd2 + wout_mid_fu_564_p3);

assign tmp_8_fu_617_p2 = (($signed(win_2_reg_338) < $signed(16'd1)) ? 1'b1 : 1'b0);

assign tmp_9_fu_611_p2 = (($signed(hin_2_reg_327) > $signed(16'd21)) ? 1'b1 : 1'b0);

assign win_133_cast_fu_526_p1 = win_s_reg_269;

assign win_fu_703_p2 = (win_2_reg_338 + 16'd1);

assign wkern_1_fu_743_p2 = (wkern_mid_fu_715_p3 + 2'd1);

assign wkern_mid2_fu_763_p3 = ((exitcond_mid_fu_729_p2[0:0] === 1'b1) ? wkern_1_fu_743_p2 : wkern_mid_fu_715_p3);

assign wkern_mid_fu_715_p3 = ((ap_phi_mux_exitcond_flatten3_phi_fu_435_p4[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_wkern_phi_fu_468_p4);

assign wout_1_fu_850_p2 = (wout_mid_reg_915 + 5'd1);

assign wout_mid_fu_564_p3 = ((exitcond1_reg_257[0:0] === 1'b1) ? 5'd0 : wout_reg_292);

always @ (posedge ap_clk) begin
    tmp_4_cast_reg_899[15:5] <= 11'b00000000000;
    tmp_23_cast_reg_944[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end

endmodule //line_buffer_20
