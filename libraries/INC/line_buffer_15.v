// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="line_buffer_15,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.545000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=1,HLS_SYN_FF=261,HLS_SYN_LUT=794}" *)

module line_buffer_15 (
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
reg   [0:0] out_of_bounds_reg_744;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] exitcond4_reg_362;
reg   [7:0] pkern_reg_373;
reg   [0:0] wkern_reg_384;
reg   [6:0] indvar_flatten9_reg_395;
wire   [6:0] tmp_1_fu_406_p2;
wire    ap_CS_fsm_state2;
wire   [11:0] next_mul_fu_412_p2;
wire   [15:0] win_118_cast_fu_424_p1;
wire    ap_CS_fsm_state3;
wire   [4:0] wout_mid2_fu_434_p3;
reg   [4:0] wout_mid2_reg_708;
wire   [4:0] hout_cast7_mid2_v_fu_442_p3;
reg   [4:0] hout_cast7_mid2_v_reg_714;
wire   [15:0] hout_cast7_mid2_fu_450_p1;
reg   [15:0] hout_cast7_mid2_reg_719;
wire   [15:0] wout_cast6_fu_454_p1;
reg   [15:0] wout_cast6_reg_725;
wire   [8:0] indvar_flatten_next7_fu_458_p2;
reg   [8:0] indvar_flatten_next7_reg_730;
wire   [14:0] tmp_2_fu_464_p1;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_6_fu_484_p2;
reg   [0:0] tmp_6_reg_740;
wire   [0:0] out_of_bounds_fu_530_p2;
wire   [6:0] pin_1_fu_540_p2;
reg    ap_block_state5;
wire   [11:0] next_mul1_fu_546_p2;
wire   [0:0] tmp_4_fu_573_p2;
wire    ap_CS_fsm_state6;
wire   [15:0] hin_fu_579_p2;
wire   [0:0] tmp_10_fu_586_p2;
wire   [15:0] win_fu_591_p2;
wire   [0:0] wkern_mid2_fu_611_p3;
reg   [0:0] wkern_mid2_reg_779;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_state8_pp1_stage0_iter0;
reg    ap_block_state9_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [7:0] pkern_1_fu_640_p2;
reg   [7:0] pkern_1_reg_789;
wire   [6:0] indvar_flatten_next_fu_646_p2;
reg   [6:0] indvar_flatten_next_reg_794;
wire   [0:0] exitcond_fu_652_p2;
reg   [0:0] exitcond_reg_799;
wire   [0:0] exitcond_flatten_fu_658_p2;
reg   [0:0] exitcond_flatten_reg_804;
wire   [4:0] wout_1_fu_664_p2;
wire    ap_CS_fsm_state10;
wire   [0:0] exitcond2_fu_669_p2;
reg    ap_block_pp1_stage0_subdone;
reg   [11:0] buffer_val_0_V_address0;
reg    buffer_val_0_V_ce0;
reg    buffer_val_0_V_we0;
wire   [15:0] buffer_val_0_V_q0;
reg   [6:0] tmp_reg_168;
wire    ap_CS_fsm_state1;
wire   [0:0] tmp_3_fu_418_p2;
reg   [11:0] phi_mul_reg_179;
reg   [0:0] exitcond1_reg_190;
wire   [0:0] exitcond_flatten8_fu_675_p2;
reg   [14:0] win_4_reg_325;
reg   [14:0] win_s_reg_201;
reg   [15:0] hin_4_reg_313;
reg   [15:0] hin_s_reg_212;
reg   [4:0] wout_reg_224;
reg   [4:0] hout_reg_235;
reg   [8:0] indvar_flatten_reg_246;
reg   [15:0] hin_2_reg_258;
wire    ap_CS_fsm_state7;
reg   [15:0] win_2_reg_269;
reg   [6:0] pin_reg_279;
wire   [0:0] exitcond3_fu_567_p2;
reg   [11:0] phi_mul1_reg_290;
reg   [15:0] ap_phi_mux_tmp_11_phi_fu_304_p4;
reg   [15:0] hin_3_reg_337;
reg   [15:0] win_3_reg_349;
reg   [0:0] ap_phi_mux_exitcond4_phi_fu_366_p4;
reg   [7:0] ap_phi_mux_pkern_phi_fu_377_p4;
reg   [0:0] ap_phi_mux_wkern_phi_fu_388_p4;
reg   [6:0] ap_phi_mux_indvar_flatten9_phi_fu_399_p4;
wire   [63:0] tmp_22_cast_fu_562_p1;
wire  signed [63:0] tmp_24_cast_fu_636_p1;
reg    ap_block_pp1_stage0_01001;
wire   [4:0] hout_1_fu_428_p2;
wire   [0:0] slt_fu_473_p2;
wire   [0:0] tmp_5_fu_468_p2;
wire   [0:0] rev_fu_478_p2;
wire   [0:0] tmp_9_fu_490_p3;
wire   [0:0] tmp_8_fu_498_p2;
wire   [0:0] tmp_12_fu_504_p3;
wire   [0:0] tmp_s_fu_512_p2;
wire   [0:0] tmp2_fu_524_p2;
wire   [0:0] tmp1_fu_518_p2;
wire   [12:0] phi_mul20_cast_fu_536_p1;
wire   [12:0] tmp_14_fu_552_p1;
wire   [12:0] tmp_15_fu_556_p2;
wire   [0:0] wkern_1_fu_597_p2;
wire   [7:0] pkern_mid2_fu_603_p3;
wire   [4:0] tmp_18_cast_fu_623_p1;
wire   [4:0] col_assign_fu_627_p2;
wire   [12:0] grp_fu_681_p3;
wire   [7:0] grp_fu_681_p0;
wire   [5:0] grp_fu_681_p1;
wire   [4:0] grp_fu_681_p2;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
wire   [12:0] grp_fu_681_p00;
wire   [12:0] grp_fu_681_p20;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
end

line_buffer_15_bubkb #(
    .DataWidth( 16 ),
    .AddressRange( 2688 ),
    .AddressWidth( 12 ))
buffer_val_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buffer_val_0_V_address0),
    .ce0(buffer_val_0_V_ce0),
    .we0(buffer_val_0_V_we0),
    .d0(ap_phi_mux_tmp_11_phi_fu_304_p4),
    .q0(buffer_val_0_V_q0)
);

line_buffer_15_macud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 6 ),
    .din2_WIDTH( 5 ),
    .dout_WIDTH( 13 ))
line_buffer_15_macud_U1(
    .din0(grp_fu_681_p0),
    .din1(grp_fu_681_p1),
    .din2(grp_fu_681_p2),
    .dout(grp_fu_681_p3)
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
        if (((exitcond_flatten_fu_658_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_subdone))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_740 == 1'd0) | ((tmp_10_fu_586_p2 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0))))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_740 == 1'd0) | ((tmp_10_fu_586_p2 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0))))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_418_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        exitcond1_reg_190 <= 1'd0;
    end else if (((exitcond_flatten8_fu_675_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        exitcond1_reg_190 <= exitcond2_fu_669_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_804 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond4_reg_362 <= exitcond_reg_799;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_740 == 1'd0) | ((tmp_10_fu_586_p2 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0))))) begin
        exitcond4_reg_362 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hin_2_reg_258 <= hin_s_reg_212;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        hin_2_reg_258 <= hin_3_reg_337;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_6_reg_740 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        if (((tmp_10_fu_586_p2 == 1'd0) & (tmp_4_fu_573_p2 == 1'd0))) begin
            hin_3_reg_337 <= hin_fu_579_p2;
        end else if ((tmp_4_fu_573_p2 == 1'd1)) begin
            hin_3_reg_337 <= hin_2_reg_258;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_10_fu_586_p2 == 1'd1) & (tmp_6_reg_740 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        hin_4_reg_313 <= hin_fu_579_p2;
    end else if (((tmp_6_fu_484_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hin_4_reg_313 <= hin_2_reg_258;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_418_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        hin_s_reg_212 <= 16'd0;
    end else if (((exitcond_flatten8_fu_675_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        hin_s_reg_212 <= hin_4_reg_313;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_418_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        hout_reg_235 <= 5'd0;
    end else if (((exitcond_flatten8_fu_675_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        hout_reg_235 <= hout_cast7_mid2_v_reg_714;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_804 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        indvar_flatten9_reg_395 <= indvar_flatten_next_reg_794;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_740 == 1'd0) | ((tmp_10_fu_586_p2 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0))))) begin
        indvar_flatten9_reg_395 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_418_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_reg_246 <= 9'd0;
    end else if (((exitcond_flatten8_fu_675_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        indvar_flatten_reg_246 <= indvar_flatten_next7_reg_730;
    end
end

always @ (posedge ap_clk) begin
    if ((~((out_of_bounds_reg_744 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond3_fu_567_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        phi_mul1_reg_290 <= next_mul1_fu_546_p2;
    end else if (((tmp_6_fu_484_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        phi_mul1_reg_290 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_418_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_mul_reg_179 <= next_mul_fu_412_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        phi_mul_reg_179 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((out_of_bounds_reg_744 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond3_fu_567_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        pin_reg_279 <= pin_1_fu_540_p2;
    end else if (((tmp_6_fu_484_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        pin_reg_279 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_804 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        pkern_reg_373 <= pkern_1_reg_789;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_740 == 1'd0) | ((tmp_10_fu_586_p2 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0))))) begin
        pkern_reg_373 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_418_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_reg_168 <= tmp_1_fu_406_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_168 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        win_2_reg_269 <= win_118_cast_fu_424_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        win_2_reg_269 <= win_3_reg_349;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_6_reg_740 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        if (((tmp_10_fu_586_p2 == 1'd0) & (tmp_4_fu_573_p2 == 1'd0))) begin
            win_3_reg_349 <= 16'd0;
        end else if ((tmp_4_fu_573_p2 == 1'd1)) begin
            win_3_reg_349 <= win_fu_591_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_10_fu_586_p2 == 1'd1) & (tmp_6_reg_740 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        win_4_reg_325 <= 15'd0;
    end else if (((tmp_6_fu_484_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        win_4_reg_325 <= tmp_2_fu_464_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_418_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        win_s_reg_201 <= 15'd0;
    end else if (((exitcond_flatten8_fu_675_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        win_s_reg_201 <= win_4_reg_325;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_804 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        wkern_reg_384 <= wkern_mid2_reg_779;
    end else if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_740 == 1'd0) | ((tmp_10_fu_586_p2 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0))))) begin
        wkern_reg_384 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_418_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_224 <= 5'd0;
    end else if (((exitcond_flatten8_fu_675_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        wout_reg_224 <= wout_1_fu_664_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_flatten_reg_804 <= exitcond_flatten_fu_658_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_reg_799 <= exitcond_fu_652_p2;
        indvar_flatten_next_reg_794 <= indvar_flatten_next_fu_646_p2;
        pkern_1_reg_789 <= pkern_1_fu_640_p2;
        wkern_mid2_reg_779 <= wkern_mid2_fu_611_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hout_cast7_mid2_reg_719[4 : 0] <= hout_cast7_mid2_fu_450_p1[4 : 0];
        hout_cast7_mid2_v_reg_714 <= hout_cast7_mid2_v_fu_442_p3;
        indvar_flatten_next7_reg_730 <= indvar_flatten_next7_fu_458_p2;
        wout_cast6_reg_725[4 : 0] <= wout_cast6_fu_454_p1[4 : 0];
        wout_mid2_reg_708 <= wout_mid2_fu_434_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_6_fu_484_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        out_of_bounds_reg_744 <= out_of_bounds_fu_530_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_6_reg_740 <= tmp_6_fu_484_p2;
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
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_804 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_exitcond4_phi_fu_366_p4 = exitcond_reg_799;
    end else begin
        ap_phi_mux_exitcond4_phi_fu_366_p4 = exitcond4_reg_362;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_804 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_indvar_flatten9_phi_fu_399_p4 = indvar_flatten_next_reg_794;
    end else begin
        ap_phi_mux_indvar_flatten9_phi_fu_399_p4 = indvar_flatten9_reg_395;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_804 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_pkern_phi_fu_377_p4 = pkern_1_reg_789;
    end else begin
        ap_phi_mux_pkern_phi_fu_377_p4 = pkern_reg_373;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((out_of_bounds_reg_744 == 1'd1)) begin
            ap_phi_mux_tmp_11_phi_fu_304_p4 = 16'd0;
        end else if ((out_of_bounds_reg_744 == 1'd0)) begin
            ap_phi_mux_tmp_11_phi_fu_304_p4 = input_V_V_dout;
        end else begin
            ap_phi_mux_tmp_11_phi_fu_304_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_tmp_11_phi_fu_304_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_flatten_reg_804 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_wkern_phi_fu_388_p4 = wkern_mid2_reg_779;
    end else begin
        ap_phi_mux_wkern_phi_fu_388_p4 = wkern_reg_384;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        buffer_val_0_V_address0 = tmp_24_cast_fu_636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buffer_val_0_V_address0 = tmp_22_cast_fu_562_p1;
    end else begin
        buffer_val_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001)) | (~((out_of_bounds_reg_744 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5)))) begin
        buffer_val_0_V_ce0 = 1'b1;
    end else begin
        buffer_val_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((out_of_bounds_reg_744 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        buffer_val_0_V_we0 = 1'b1;
    end else begin
        buffer_val_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((out_of_bounds_reg_744 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((out_of_bounds_reg_744 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (out_of_bounds_reg_744 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((tmp_3_fu_418_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_6_fu_484_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((out_of_bounds_reg_744 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond3_fu_567_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((out_of_bounds_reg_744 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond3_fu_567_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & ((tmp_6_reg_740 == 1'd0) | ((tmp_10_fu_586_p2 == 1'd1) & (tmp_4_fu_573_p2 == 1'd0))))) begin
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
            if (((exitcond_flatten8_fu_675_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
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
    ap_block_state5 = ((out_of_bounds_reg_744 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

assign ap_block_state8_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp1_stage0_iter1 = (output_V_V_full_n == 1'b0);
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign col_assign_fu_627_p2 = (wout_mid2_reg_708 + tmp_18_cast_fu_623_p1);

assign exitcond2_fu_669_p2 = ((wout_1_fu_664_p2 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond3_fu_567_p2 = ((pin_reg_279 == 7'd127) ? 1'b1 : 1'b0);

assign exitcond_flatten8_fu_675_p2 = ((indvar_flatten_reg_246 == 9'd440) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_658_p2 = ((ap_phi_mux_indvar_flatten9_phi_fu_399_p4 == 7'd127) ? 1'b1 : 1'b0);

assign exitcond_fu_652_p2 = ((pkern_1_fu_640_p2 == 8'd128) ? 1'b1 : 1'b0);

assign grp_fu_681_p0 = grp_fu_681_p00;

assign grp_fu_681_p00 = pkern_mid2_fu_603_p3;

assign grp_fu_681_p1 = 13'd21;

assign grp_fu_681_p2 = grp_fu_681_p20;

assign grp_fu_681_p20 = col_assign_fu_627_p2;

assign hin_fu_579_p2 = (hin_2_reg_258 + 16'd1);

assign hout_1_fu_428_p2 = (hout_reg_235 + 5'd1);

assign hout_cast7_mid2_fu_450_p1 = hout_cast7_mid2_v_fu_442_p3;

assign hout_cast7_mid2_v_fu_442_p3 = ((exitcond1_reg_190[0:0] === 1'b1) ? hout_1_fu_428_p2 : hout_reg_235);

assign indvar_flatten_next7_fu_458_p2 = (indvar_flatten_reg_246 + 9'd1);

assign indvar_flatten_next_fu_646_p2 = (ap_phi_mux_indvar_flatten9_phi_fu_399_p4 + 7'd1);

assign next_mul1_fu_546_p2 = (12'd21 + phi_mul1_reg_290);

assign next_mul_fu_412_p2 = (phi_mul_reg_179 + 12'd21);

assign out_of_bounds_fu_530_p2 = (tmp2_fu_524_p2 | tmp1_fu_518_p2);

assign output_V_V_din = buffer_val_0_V_q0;

assign phi_mul20_cast_fu_536_p1 = phi_mul1_reg_290;

assign pin_1_fu_540_p2 = (pin_reg_279 + 7'd1);

assign pkern_1_fu_640_p2 = (pkern_mid2_fu_603_p3 + 8'd1);

assign pkern_mid2_fu_603_p3 = ((ap_phi_mux_exitcond4_phi_fu_366_p4[0:0] === 1'b1) ? 8'd0 : ap_phi_mux_pkern_phi_fu_377_p4);

assign rev_fu_478_p2 = (slt_fu_473_p2 ^ 1'd1);

assign slt_fu_473_p2 = (($signed(wout_cast6_reg_725) < $signed(win_2_reg_269)) ? 1'b1 : 1'b0);

assign tmp1_fu_518_p2 = (tmp_9_fu_490_p3 | tmp_8_fu_498_p2);

assign tmp2_fu_524_p2 = (tmp_s_fu_512_p2 | tmp_12_fu_504_p3);

assign tmp_10_fu_586_p2 = (($signed(hin_fu_579_p2) > $signed(hout_cast7_mid2_reg_719)) ? 1'b1 : 1'b0);

assign tmp_12_fu_504_p3 = win_2_reg_269[32'd15];

assign tmp_14_fu_552_p1 = win_2_reg_269[12:0];

assign tmp_15_fu_556_p2 = (phi_mul20_cast_fu_536_p1 + tmp_14_fu_552_p1);

assign tmp_18_cast_fu_623_p1 = wkern_mid2_fu_611_p3;

assign tmp_1_fu_406_p2 = (tmp_reg_168 + 7'd1);

assign tmp_22_cast_fu_562_p1 = tmp_15_fu_556_p2;

assign tmp_24_cast_fu_636_p1 = $signed(grp_fu_681_p3);

assign tmp_2_fu_464_p1 = win_2_reg_269[14:0];

assign tmp_3_fu_418_p2 = ((tmp_reg_168 == 7'd127) ? 1'b1 : 1'b0);

assign tmp_4_fu_573_p2 = (($signed(win_2_reg_269) < $signed(16'd20)) ? 1'b1 : 1'b0);

assign tmp_5_fu_468_p2 = (($signed(hin_2_reg_258) < $signed(hout_cast7_mid2_reg_719)) ? 1'b1 : 1'b0);

assign tmp_6_fu_484_p2 = (tmp_5_fu_468_p2 | rev_fu_478_p2);

assign tmp_8_fu_498_p2 = (($signed(hin_2_reg_258) > $signed(16'd20)) ? 1'b1 : 1'b0);

assign tmp_9_fu_490_p3 = hin_2_reg_258[32'd15];

assign tmp_s_fu_512_p2 = (($signed(win_2_reg_269) > $signed(16'd20)) ? 1'b1 : 1'b0);

assign win_118_cast_fu_424_p1 = win_s_reg_201;

assign win_fu_591_p2 = (win_2_reg_269 + 16'd1);

assign wkern_1_fu_597_p2 = (ap_phi_mux_wkern_phi_fu_388_p4 ^ 1'd1);

assign wkern_mid2_fu_611_p3 = ((ap_phi_mux_exitcond4_phi_fu_366_p4[0:0] === 1'b1) ? wkern_1_fu_597_p2 : ap_phi_mux_wkern_phi_fu_388_p4);

assign wout_1_fu_664_p2 = (wout_mid2_reg_708 + 5'd1);

assign wout_cast6_fu_454_p1 = wout_mid2_fu_434_p3;

assign wout_mid2_fu_434_p3 = ((exitcond1_reg_190[0:0] === 1'b1) ? 5'd0 : wout_reg_224);

always @ (posedge ap_clk) begin
    hout_cast7_mid2_reg_719[15:5] <= 11'b00000000000;
    wout_cast6_reg_725[15:5] <= 11'b00000000000;
end

endmodule //line_buffer_15
