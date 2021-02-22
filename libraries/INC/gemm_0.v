// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="gemm_0,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.149500,HLS_SYN_LAT=6276,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=2,HLS_SYN_FF=122,HLS_SYN_LUT=516}" *)

module gemm_0 (
        ap_clk,
        ap_rst,
        input_V_V_dout,
        input_V_V_empty_n,
        input_V_V_read,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

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

wire   [10:0] weight_address0;
reg    weight_ce0;
wire  signed [5:0] weight_q0;
reg    input_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond2_fu_206_p2;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond_fu_507_p2;
wire   [9:0] in_1_fu_212_p2;
reg   [9:0] in_1_reg_564;
reg    ap_block_state2;
wire   [11:0] tmp_3_cast_fu_243_p1;
reg   [11:0] tmp_3_cast_reg_569;
wire  signed [22:0] OP2_V_cast_fu_247_p1;
reg  signed [22:0] OP2_V_cast_reg_574;
wire   [1:0] wkern_3_fu_257_p2;
reg   [1:0] wkern_3_reg_582;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond3_fu_251_p2;
wire   [0:0] tmp_10_fu_277_p1;
reg   [0:0] tmp_10_reg_592;
wire  signed [22:0] p_Val2_s_fu_541_p2;
reg  signed [22:0] p_Val2_s_reg_599;
wire    ap_CS_fsm_state4;
reg   [0:0] tmp_12_reg_604;
wire   [1:0] wkern_fu_513_p2;
reg    ap_block_state6;
reg   [9:0] in_reg_153;
wire    ap_CS_fsm_state1;
reg   [1:0] wkern_1_reg_164;
wire    ap_CS_fsm_state5;
reg   [1:0] wkern_2_reg_175;
wire   [63:0] tmp_5_cast3_fu_272_p1;
reg   [15:0] out_val_1_V_fu_120;
wire   [15:0] out_val_1_V_2_fu_490_p3;
reg   [15:0] out_val_1_V_3_fu_124;
wire   [15:0] out_val_1_V_1_fu_483_p3;
wire   [3:0] tmp_3_fu_202_p1;
wire   [5:0] p_lshr_f_cast_fu_222_p4;
wire   [9:0] grp_fu_532_p3;
wire   [10:0] tmp_fu_236_p3;
wire   [11:0] tmp_cast_fu_263_p1;
wire   [11:0] tmp_5_fu_267_p2;
wire   [15:0] tmp_6_fu_292_p3;
wire   [23:0] tmp_7_fu_299_p3;
wire  signed [24:0] tmp_2_cast_fu_311_p1;
wire  signed [24:0] tmp_7_cast_fu_307_p1;
wire   [24:0] p_Val2_1_fu_314_p2;
wire   [15:0] tmp_9_fu_338_p1;
wire   [15:0] p_Val2_2_fu_328_p4;
wire   [15:0] p_Val2_3_fu_349_p2;
wire   [0:0] newsignbit_fu_355_p3;
wire   [0:0] tmp_13_fu_341_p3;
wire   [0:0] tmp_1_fu_363_p2;
wire   [0:0] p_Result_2_not_fu_375_p2;
wire   [0:0] signbit_fu_320_p3;
wire   [0:0] not_carry_fu_381_p2;
wire   [0:0] carry_fu_369_p2;
wire   [0:0] deleted_zeros_fu_387_p2;
wire   [0:0] p_not_i_i_fu_405_p2;
wire   [0:0] brmerge_i_i_fu_411_p2;
wire   [0:0] tmp_2_fu_393_p2;
wire   [0:0] p_38_i_i_fu_399_p2;
wire   [0:0] brmerge40_demorgan_i_fu_423_p2;
wire   [0:0] tmp1_demorgan_fu_429_p2;
wire   [0:0] underflow_fu_435_p2;
wire   [0:0] overflow_fu_417_p2;
wire   [0:0] tmp2_fu_447_p2;
wire   [0:0] brmerge_i_i_i_fu_441_p2;
wire   [0:0] underflow_not_fu_453_p2;
wire   [15:0] p_Val2_4_mux_fu_459_p3;
wire   [15:0] p_Val2_4_fu_467_p3;
wire   [15:0] out_val_0_V_fu_475_p3;
wire   [0:0] tmp_8_fu_519_p1;
wire   [3:0] grp_fu_532_p0;
wire   [6:0] grp_fu_532_p1;
wire   [5:0] grp_fu_532_p2;
wire  signed [15:0] p_Val2_s_fu_541_p1;
reg   [5:0] ap_NS_fsm;
wire   [9:0] grp_fu_532_p00;
wire   [9:0] grp_fu_532_p20;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

gemm_0_weight #(
    .DataWidth( 6 ),
    .AddressRange( 1568 ),
    .AddressWidth( 11 ))
weight_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(weight_address0),
    .ce0(weight_ce0),
    .q0(weight_q0)
);

gemm_0_mac_muladdbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 4 ),
    .din1_WIDTH( 7 ),
    .din2_WIDTH( 6 ),
    .dout_WIDTH( 10 ))
gemm_0_mac_muladdbkb_U1(
    .din0(grp_fu_532_p0),
    .din1(grp_fu_532_p1),
    .din2(grp_fu_532_p2),
    .dout(grp_fu_532_p3)
);

gemm_0_mul_mul_6scud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 23 ))
gemm_0_mul_mul_6scud_U2(
    .din0(weight_q0),
    .din1(p_Val2_s_fu_541_p1),
    .dout(p_Val2_s_fu_541_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        in_reg_153 <= in_1_reg_564;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        in_reg_153 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_val_1_V_3_fu_124 <= out_val_1_V_1_fu_483_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        out_val_1_V_3_fu_124 <= 16'd65530;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_val_1_V_fu_120 <= out_val_1_V_2_fu_490_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        out_val_1_V_fu_120 <= 16'd65533;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        wkern_1_reg_164 <= wkern_3_reg_582;
    end else if ((~((exitcond2_fu_206_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond2_fu_206_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        wkern_1_reg_164 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond2_fu_206_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond2_fu_206_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        wkern_2_reg_175 <= 2'd0;
    end else if ((~((exitcond_fu_507_p2 == 1'd0) & (output_V_V_full_n == 1'b0)) & (exitcond_fu_507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        wkern_2_reg_175 <= wkern_fu_513_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond2_fu_206_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond2_fu_206_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        OP2_V_cast_reg_574 <= OP2_V_cast_fu_247_p1;
        tmp_3_cast_reg_569[10 : 1] <= tmp_3_cast_fu_243_p1[10 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond2_fu_206_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state2))) begin
        in_1_reg_564 <= in_1_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_Val2_s_reg_599 <= p_Val2_s_fu_541_p2;
        tmp_12_reg_604 <= p_Val2_s_fu_541_p2[32'd7];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_251_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_10_reg_592 <= tmp_10_fu_277_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wkern_3_reg_582 <= wkern_3_fu_257_p2;
    end
end

always @ (*) begin
    if (((exitcond2_fu_206_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((exitcond2_fu_206_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond2_fu_206_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        input_V_V_read = 1'b1;
    end else begin
        input_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((exitcond_fu_507_p2 == 1'd0) & (output_V_V_full_n == 1'b0)) & (exitcond_fu_507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        output_V_V_write = 1'b1;
    end else begin
        output_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
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
            if ((~((exitcond2_fu_206_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond2_fu_206_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else if ((~((exitcond2_fu_206_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond2_fu_206_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond3_fu_251_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if ((~((exitcond_fu_507_p2 == 1'd0) & (output_V_V_full_n == 1'b0)) & (exitcond_fu_507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((exitcond_fu_507_p2 == 1'd0) & (output_V_V_full_n == 1'b0)) & (exitcond_fu_507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OP2_V_cast_fu_247_p1 = $signed(input_V_V_dout);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state2 = ((exitcond2_fu_206_p2 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state6 = ((exitcond_fu_507_p2 == 1'd0) & (output_V_V_full_n == 1'b0));
end

assign brmerge40_demorgan_i_fu_423_p2 = (signbit_fu_320_p3 & newsignbit_fu_355_p3);

assign brmerge_i_i_fu_411_p2 = (p_not_i_i_fu_405_p2 | newsignbit_fu_355_p3);

assign brmerge_i_i_i_fu_441_p2 = (underflow_fu_435_p2 | overflow_fu_417_p2);

assign carry_fu_369_p2 = (tmp_1_fu_363_p2 & tmp_13_fu_341_p3);

assign deleted_zeros_fu_387_p2 = (signbit_fu_320_p3 ^ not_carry_fu_381_p2);

assign exitcond2_fu_206_p2 = ((in_reg_153 == 10'd784) ? 1'b1 : 1'b0);

assign exitcond3_fu_251_p2 = ((wkern_1_reg_164 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_fu_507_p2 = ((wkern_2_reg_175 == 2'd2) ? 1'b1 : 1'b0);

assign grp_fu_532_p0 = grp_fu_532_p00;

assign grp_fu_532_p00 = tmp_3_fu_202_p1;

assign grp_fu_532_p1 = 10'd49;

assign grp_fu_532_p2 = grp_fu_532_p20;

assign grp_fu_532_p20 = p_lshr_f_cast_fu_222_p4;

assign in_1_fu_212_p2 = (10'd1 + in_reg_153);

assign newsignbit_fu_355_p3 = p_Val2_3_fu_349_p2[32'd15];

assign not_carry_fu_381_p2 = (p_Result_2_not_fu_375_p2 | newsignbit_fu_355_p3);

assign out_val_0_V_fu_475_p3 = ((underflow_not_fu_453_p2[0:0] === 1'b1) ? p_Val2_4_mux_fu_459_p3 : p_Val2_4_fu_467_p3);

assign out_val_1_V_1_fu_483_p3 = ((tmp_10_reg_592[0:0] === 1'b1) ? out_val_0_V_fu_475_p3 : out_val_1_V_3_fu_124);

assign out_val_1_V_2_fu_490_p3 = ((tmp_10_reg_592[0:0] === 1'b1) ? out_val_1_V_fu_120 : out_val_0_V_fu_475_p3);

assign output_V_V_din = ((tmp_8_fu_519_p1[0:0] === 1'b1) ? out_val_1_V_3_fu_124 : out_val_1_V_fu_120);

assign overflow_fu_417_p2 = (tmp_2_fu_393_p2 & brmerge_i_i_fu_411_p2);

assign p_38_i_i_fu_399_p2 = (signbit_fu_320_p3 & carry_fu_369_p2);

assign p_Result_2_not_fu_375_p2 = (tmp_13_fu_341_p3 ^ 1'd1);

assign p_Val2_1_fu_314_p2 = ($signed(tmp_2_cast_fu_311_p1) + $signed(tmp_7_cast_fu_307_p1));

assign p_Val2_2_fu_328_p4 = {{p_Val2_1_fu_314_p2[23:8]}};

assign p_Val2_3_fu_349_p2 = (tmp_9_fu_338_p1 + p_Val2_2_fu_328_p4);

assign p_Val2_4_fu_467_p3 = ((underflow_fu_435_p2[0:0] === 1'b1) ? 16'd32768 : p_Val2_3_fu_349_p2);

assign p_Val2_4_mux_fu_459_p3 = ((brmerge_i_i_i_fu_441_p2[0:0] === 1'b1) ? 16'd32767 : p_Val2_3_fu_349_p2);

assign p_Val2_s_fu_541_p1 = OP2_V_cast_reg_574;

assign p_lshr_f_cast_fu_222_p4 = {{in_reg_153[9:4]}};

assign p_not_i_i_fu_405_p2 = (deleted_zeros_fu_387_p2 ^ 1'd1);

assign signbit_fu_320_p3 = p_Val2_1_fu_314_p2[32'd24];

assign tmp1_demorgan_fu_429_p2 = (p_38_i_i_fu_399_p2 | brmerge40_demorgan_i_fu_423_p2);

assign tmp2_fu_447_p2 = (tmp_2_fu_393_p2 | newsignbit_fu_355_p3);

assign tmp_10_fu_277_p1 = wkern_1_reg_164[0:0];

assign tmp_13_fu_341_p3 = p_Val2_1_fu_314_p2[32'd23];

assign tmp_1_fu_363_p2 = (newsignbit_fu_355_p3 ^ 1'd1);

assign tmp_2_cast_fu_311_p1 = p_Val2_s_reg_599;

assign tmp_2_fu_393_p2 = (signbit_fu_320_p3 ^ 1'd1);

assign tmp_3_cast_fu_243_p1 = tmp_fu_236_p3;

assign tmp_3_fu_202_p1 = in_reg_153[3:0];

assign tmp_5_cast3_fu_272_p1 = tmp_5_fu_267_p2;

assign tmp_5_fu_267_p2 = (tmp_3_cast_reg_569 + tmp_cast_fu_263_p1);

assign tmp_6_fu_292_p3 = ((tmp_10_reg_592[0:0] === 1'b1) ? out_val_1_V_3_fu_124 : out_val_1_V_fu_120);

assign tmp_7_cast_fu_307_p1 = $signed(tmp_7_fu_299_p3);

assign tmp_7_fu_299_p3 = {{tmp_6_fu_292_p3}, {8'd0}};

assign tmp_8_fu_519_p1 = wkern_2_reg_175[0:0];

assign tmp_9_fu_338_p1 = tmp_12_reg_604;

assign tmp_cast_fu_263_p1 = wkern_1_reg_164;

assign tmp_fu_236_p3 = {{grp_fu_532_p3}, {1'd0}};

assign underflow_fu_435_p2 = (tmp1_demorgan_fu_429_p2 ^ signbit_fu_320_p3);

assign underflow_not_fu_453_p2 = (tmp2_fu_447_p2 | p_38_i_i_fu_399_p2);

assign weight_address0 = tmp_5_cast3_fu_272_p1;

assign wkern_3_fu_257_p2 = (wkern_1_reg_164 + 2'd1);

assign wkern_fu_513_p2 = (wkern_2_reg_175 + 2'd1);

always @ (posedge ap_clk) begin
    tmp_3_cast_reg_569[0] <= 1'b0;
    tmp_3_cast_reg_569[11] <= 1'b0;
end

endmodule //gemm_0