// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="batch_3,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.675000,HLS_SYN_LAT=26769,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=509,HLS_SYN_LUT=755}" *)

module batch_3 (
        ap_clk,
        ap_rst_n,
        input_V_V_dout,
        input_V_V_empty_n,
        input_V_V_read,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write
);

parameter    ap_ST_fsm_state1 = 37'd1;
parameter    ap_ST_fsm_state2 = 37'd2;
parameter    ap_ST_fsm_state3 = 37'd4;
parameter    ap_ST_fsm_state4 = 37'd8;
parameter    ap_ST_fsm_state5 = 37'd16;
parameter    ap_ST_fsm_state6 = 37'd32;
parameter    ap_ST_fsm_state7 = 37'd64;
parameter    ap_ST_fsm_state8 = 37'd128;
parameter    ap_ST_fsm_state9 = 37'd256;
parameter    ap_ST_fsm_state10 = 37'd512;
parameter    ap_ST_fsm_state11 = 37'd1024;
parameter    ap_ST_fsm_state12 = 37'd2048;
parameter    ap_ST_fsm_state13 = 37'd4096;
parameter    ap_ST_fsm_state14 = 37'd8192;
parameter    ap_ST_fsm_state15 = 37'd16384;
parameter    ap_ST_fsm_state16 = 37'd32768;
parameter    ap_ST_fsm_state17 = 37'd65536;
parameter    ap_ST_fsm_state18 = 37'd131072;
parameter    ap_ST_fsm_state19 = 37'd262144;
parameter    ap_ST_fsm_state20 = 37'd524288;
parameter    ap_ST_fsm_state21 = 37'd1048576;
parameter    ap_ST_fsm_state22 = 37'd2097152;
parameter    ap_ST_fsm_state23 = 37'd4194304;
parameter    ap_ST_fsm_state24 = 37'd8388608;
parameter    ap_ST_fsm_state25 = 37'd16777216;
parameter    ap_ST_fsm_state26 = 37'd33554432;
parameter    ap_ST_fsm_state27 = 37'd67108864;
parameter    ap_ST_fsm_state28 = 37'd134217728;
parameter    ap_ST_fsm_state29 = 37'd268435456;
parameter    ap_ST_fsm_state30 = 37'd536870912;
parameter    ap_ST_fsm_state31 = 37'd1073741824;
parameter    ap_ST_fsm_state32 = 37'd2147483648;
parameter    ap_ST_fsm_state33 = 37'd4294967296;
parameter    ap_ST_fsm_state34 = 37'd8589934592;
parameter    ap_ST_fsm_state35 = 37'd17179869184;
parameter    ap_ST_fsm_state36 = 37'd34359738368;
parameter    ap_ST_fsm_state37 = 37'd68719476736;

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
wire   [3:0] running_mean_address0;
reg    running_mean_ce0;
wire   [6:0] running_mean_q0;
wire   [3:0] running_std_address0;
reg    running_std_ce0;
wire   [6:0] running_std_q0;
wire   [3:0] weight_address0;
reg    weight_ce0;
wire   [8:0] weight_q0;
wire   [3:0] bias_address0;
reg    bias_ce0;
wire   [3:0] bias_q0;
reg    input_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [36:0] ap_CS_fsm;
wire    ap_CS_fsm_state5;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_state37;
wire   [2:0] hin_1_fu_218_p2;
reg   [2:0] hin_1_reg_527;
wire    ap_CS_fsm_state2;
wire   [2:0] win_1_fu_230_p2;
reg   [2:0] win_1_reg_535;
wire    ap_CS_fsm_state3;
wire   [4:0] pin_1_fu_242_p2;
reg   [4:0] pin_1_reg_543;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_236_p2;
reg   [6:0] std_V_reg_568;
reg   [8:0] scale_V_reg_573;
reg   [3:0] p_Val2_4_reg_578;
wire   [16:0] p_Val2_2_fu_264_p2;
reg   [16:0] p_Val2_2_reg_583;
wire    ap_CS_fsm_state6;
wire   [24:0] grp_fu_280_p2;
reg  signed [24:0] r_V_reg_598;
wire    ap_CS_fsm_state34;
wire   [25:0] tmp_5_fu_292_p1;
reg   [25:0] tmp_5_reg_603;
wire    ap_CS_fsm_state35;
reg   [0:0] tmp_11_reg_608;
wire   [0:0] signbit_fu_318_p3;
reg   [0:0] signbit_reg_613;
wire    ap_CS_fsm_state36;
wire   [15:0] p_Val2_7_fu_347_p2;
reg   [15:0] p_Val2_7_reg_619;
wire   [0:0] newsignbit_fu_353_p3;
reg   [0:0] newsignbit_reg_625;
wire   [0:0] carry_fu_367_p2;
reg   [0:0] carry_reg_630;
wire   [0:0] Range1_all_ones_fu_391_p2;
reg   [0:0] Range1_all_ones_reg_635;
wire   [0:0] Range1_all_zeros_fu_397_p2;
reg   [0:0] Range1_all_zeros_reg_640;
wire   [0:0] p_38_i_fu_423_p2;
reg   [0:0] p_38_i_reg_645;
wire   [0:0] brmerge40_demorgan_i_fu_429_p2;
reg   [0:0] brmerge40_demorgan_i_reg_651;
reg   [2:0] hin_reg_179;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_224_p2;
reg   [2:0] win_reg_190;
wire   [0:0] exitcond1_fu_212_p2;
reg   [4:0] pin_reg_201;
wire   [63:0] tmp_fu_248_p1;
wire  signed [16:0] tmp_2_fu_256_p1;
wire   [16:0] tmp_3_fu_260_p1;
wire   [24:0] grp_fu_280_p0;
wire   [7:0] grp_fu_280_p1;
wire  signed [33:0] p_Val2_3_fu_516_p2;
wire   [11:0] tmp_4_fu_302_p3;
wire  signed [25:0] tmp_4_cast_fu_309_p1;
wire   [25:0] p_Val2_5_fu_313_p2;
wire   [15:0] p_Val2_6_fu_326_p4;
wire   [15:0] tmp_8_fu_336_p1;
wire   [0:0] tmp_12_fu_339_p3;
wire   [0:0] tmp_9_fu_361_p2;
wire   [1:0] tmp_1_fu_381_p4;
wire   [0:0] tmp_14_fu_373_p3;
wire   [0:0] tmp_s_fu_403_p2;
wire   [0:0] p_41_i_fu_409_p2;
wire   [0:0] deleted_ones_fu_415_p3;
wire   [0:0] deleted_zeros_fu_435_p3;
wire   [0:0] p_not_i_fu_440_p2;
wire   [0:0] brmerge_i_fu_446_p2;
wire   [0:0] tmp_7_fu_451_p2;
wire   [0:0] tmp1_demorgan_fu_462_p2;
wire   [0:0] tmp1_fu_466_p2;
wire   [0:0] underflow_fu_472_p2;
wire   [0:0] overflow_fu_456_p2;
wire   [0:0] tmp2_fu_483_p2;
wire   [0:0] brmerge_i_i_fu_477_p2;
wire   [0:0] underflow_not_fu_488_p2;
wire   [15:0] p_Val2_7_mux_fu_493_p3;
wire   [15:0] p_Val2_7_7_fu_500_p3;
wire   [8:0] p_Val2_3_fu_516_p1;
reg    grp_fu_280_ap_start;
wire    grp_fu_280_ap_done;
reg   [36:0] ap_NS_fsm;
wire   [24:0] grp_fu_280_p10;
wire   [33:0] p_Val2_3_fu_516_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 37'd1;
end

batch_3_running_mbkb #(
    .DataWidth( 7 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
running_mean_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(running_mean_address0),
    .ce0(running_mean_ce0),
    .q0(running_mean_q0)
);

batch_3_running_std #(
    .DataWidth( 7 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
running_std_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(running_std_address0),
    .ce0(running_std_ce0),
    .q0(running_std_q0)
);

batch_3_weight #(
    .DataWidth( 9 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
weight_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(weight_address0),
    .ce0(weight_ce0),
    .q0(weight_q0)
);

batch_3_bias #(
    .DataWidth( 4 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
bias_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(bias_address0),
    .ce0(bias_ce0),
    .q0(bias_q0)
);

batch_3_sdiv_25nscud #(
    .ID( 1 ),
    .NUM_STAGE( 29 ),
    .din0_WIDTH( 25 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 25 ))
batch_3_sdiv_25nscud_U1(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .start(grp_fu_280_ap_start),
    .done(grp_fu_280_ap_done),
    .din0(grp_fu_280_p0),
    .din1(grp_fu_280_p1),
    .ce(1'b1),
    .dout(grp_fu_280_p2)
);

batch_3_mul_mul_2dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 25 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 34 ))
batch_3_mul_mul_2dEe_U2(
    .din0(r_V_reg_598),
    .din1(p_Val2_3_fu_516_p1),
    .dout(p_Val2_3_fu_516_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_224_p2 == 1'd1))) begin
        hin_reg_179 <= hin_1_reg_527;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hin_reg_179 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_224_p2 == 1'd0))) begin
        pin_reg_201 <= 5'd0;
    end else if (((output_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state37))) begin
        pin_reg_201 <= pin_1_reg_543;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_212_p2 == 1'd0))) begin
        win_reg_190 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_236_p2 == 1'd1))) begin
        win_reg_190 <= win_1_reg_535;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        Range1_all_ones_reg_635 <= Range1_all_ones_fu_391_p2;
        Range1_all_zeros_reg_640 <= Range1_all_zeros_fu_397_p2;
        brmerge40_demorgan_i_reg_651 <= brmerge40_demorgan_i_fu_429_p2;
        carry_reg_630 <= carry_fu_367_p2;
        newsignbit_reg_625 <= p_Val2_7_fu_347_p2[32'd15];
        p_38_i_reg_645 <= p_38_i_fu_423_p2;
        p_Val2_7_reg_619 <= p_Val2_7_fu_347_p2;
        signbit_reg_613 <= p_Val2_5_fu_313_p2[32'd25];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hin_1_reg_527 <= hin_1_fu_218_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((input_V_V_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        p_Val2_2_reg_583 <= p_Val2_2_fu_264_p2;
        p_Val2_4_reg_578 <= bias_q0;
        scale_V_reg_573 <= weight_q0;
        std_V_reg_568 <= running_std_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        pin_1_reg_543 <= pin_1_fu_242_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        r_V_reg_598 <= grp_fu_280_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        tmp_11_reg_608 <= p_Val2_3_fu_516_p2[32'd7];
        tmp_5_reg_603 <= tmp_5_fu_292_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        win_1_reg_535 <= win_1_fu_230_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bias_ce0 = 1'b1;
    end else begin
        bias_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_280_ap_start = 1'b1;
    end else begin
        grp_fu_280_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((input_V_V_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        input_V_V_read = 1'b1;
    end else begin
        input_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((output_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state37))) begin
        output_V_V_write = 1'b1;
    end else begin
        output_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        running_mean_ce0 = 1'b1;
    end else begin
        running_mean_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        running_std_ce0 = 1'b1;
    end else begin
        running_std_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        weight_ce0 = 1'b1;
    end else begin
        weight_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_212_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_224_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_236_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((input_V_V_empty_n == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            if (((output_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state37))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_fu_391_p2 = ((tmp_1_fu_381_p4 == 2'd3) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_397_p2 = ((tmp_1_fu_381_p4 == 2'd0) ? 1'b1 : 1'b0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];

assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];

assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];

assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign bias_address0 = tmp_fu_248_p1;

assign brmerge40_demorgan_i_fu_429_p2 = (newsignbit_fu_353_p3 & deleted_ones_fu_415_p3);

assign brmerge_i_fu_446_p2 = (p_not_i_fu_440_p2 | newsignbit_reg_625);

assign brmerge_i_i_fu_477_p2 = (underflow_fu_472_p2 | overflow_fu_456_p2);

assign carry_fu_367_p2 = (tmp_9_fu_361_p2 & tmp_12_fu_339_p3);

assign deleted_ones_fu_415_p3 = ((carry_fu_367_p2[0:0] === 1'b1) ? p_41_i_fu_409_p2 : Range1_all_ones_fu_391_p2);

assign deleted_zeros_fu_435_p3 = ((carry_reg_630[0:0] === 1'b1) ? Range1_all_ones_reg_635 : Range1_all_zeros_reg_640);

assign exitcond1_fu_212_p2 = ((hin_reg_179 == 3'd7) ? 1'b1 : 1'b0);

assign exitcond2_fu_224_p2 = ((win_reg_190 == 3'd7) ? 1'b1 : 1'b0);

assign exitcond_fu_236_p2 = ((pin_reg_201 == 5'd16) ? 1'b1 : 1'b0);

assign grp_fu_280_p0 = {{p_Val2_2_reg_583}, {8'd0}};

assign grp_fu_280_p1 = grp_fu_280_p10;

assign grp_fu_280_p10 = std_V_reg_568;

assign hin_1_fu_218_p2 = (hin_reg_179 + 3'd1);

assign newsignbit_fu_353_p3 = p_Val2_7_fu_347_p2[32'd15];

assign output_V_V_din = ((underflow_not_fu_488_p2[0:0] === 1'b1) ? p_Val2_7_mux_fu_493_p3 : p_Val2_7_7_fu_500_p3);

assign overflow_fu_456_p2 = (tmp_7_fu_451_p2 & brmerge_i_fu_446_p2);

assign p_38_i_fu_423_p2 = (carry_fu_367_p2 & Range1_all_ones_fu_391_p2);

assign p_41_i_fu_409_p2 = (tmp_s_fu_403_p2 & signbit_fu_318_p3);

assign p_Val2_2_fu_264_p2 = ($signed(tmp_2_fu_256_p1) - $signed(tmp_3_fu_260_p1));

assign p_Val2_3_fu_516_p1 = p_Val2_3_fu_516_p10;

assign p_Val2_3_fu_516_p10 = scale_V_reg_573;

assign p_Val2_5_fu_313_p2 = ($signed(tmp_4_cast_fu_309_p1) + $signed(tmp_5_reg_603));

assign p_Val2_6_fu_326_p4 = {{p_Val2_5_fu_313_p2[23:8]}};

assign p_Val2_7_7_fu_500_p3 = ((underflow_fu_472_p2[0:0] === 1'b1) ? 16'd32768 : p_Val2_7_reg_619);

assign p_Val2_7_fu_347_p2 = (p_Val2_6_fu_326_p4 + tmp_8_fu_336_p1);

assign p_Val2_7_mux_fu_493_p3 = ((brmerge_i_i_fu_477_p2[0:0] === 1'b1) ? 16'd32767 : p_Val2_7_reg_619);

assign p_not_i_fu_440_p2 = (deleted_zeros_fu_435_p3 ^ 1'd1);

assign pin_1_fu_242_p2 = (pin_reg_201 + 5'd1);

assign running_mean_address0 = tmp_fu_248_p1;

assign running_std_address0 = tmp_fu_248_p1;

assign signbit_fu_318_p3 = p_Val2_5_fu_313_p2[32'd25];

assign tmp1_demorgan_fu_462_p2 = (p_38_i_reg_645 | brmerge40_demorgan_i_reg_651);

assign tmp1_fu_466_p2 = (tmp1_demorgan_fu_462_p2 ^ 1'd1);

assign tmp2_fu_483_p2 = (tmp_7_fu_451_p2 | brmerge40_demorgan_i_reg_651);

assign tmp_12_fu_339_p3 = p_Val2_5_fu_313_p2[32'd23];

assign tmp_14_fu_373_p3 = p_Val2_5_fu_313_p2[32'd24];

assign tmp_1_fu_381_p4 = {{p_Val2_5_fu_313_p2[25:24]}};

assign tmp_2_fu_256_p1 = $signed(input_V_V_dout);

assign tmp_3_fu_260_p1 = running_mean_q0;

assign tmp_4_cast_fu_309_p1 = $signed(tmp_4_fu_302_p3);

assign tmp_4_fu_302_p3 = {{p_Val2_4_reg_578}, {8'd0}};

assign tmp_5_fu_292_p1 = p_Val2_3_fu_516_p2[25:0];

assign tmp_7_fu_451_p2 = (signbit_reg_613 ^ 1'd1);

assign tmp_8_fu_336_p1 = tmp_11_reg_608;

assign tmp_9_fu_361_p2 = (newsignbit_fu_353_p3 ^ 1'd1);

assign tmp_fu_248_p1 = pin_reg_201;

assign tmp_s_fu_403_p2 = (tmp_14_fu_373_p3 ^ 1'd1);

assign underflow_fu_472_p2 = (tmp1_fu_466_p2 & signbit_reg_613);

assign underflow_not_fu_488_p2 = (tmp2_fu_483_p2 | p_38_i_reg_645);

assign weight_address0 = tmp_fu_248_p1;

assign win_1_fu_230_p2 = (win_reg_190 + 3'd1);

endmodule //batch_3
