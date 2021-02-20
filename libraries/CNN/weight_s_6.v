// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="weight_s_6,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.660000,HLS_SYN_LAT=80642305,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=77,HLS_SYN_LUT=342}" *)

module weight_s_6 (
        ap_clk,
        ap_rst,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write,
        weight_V_address0,
        weight_V_ce0,
        weight_V_q0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
output  [7:0] output_V_V_din;
input   output_V_V_full_n;
output   output_V_V_write;
output  [11:0] weight_V_address0;
output   weight_V_ce0;
input  [7:0] weight_V_q0;

reg output_V_V_write;
reg weight_V_ce0;

reg    output_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state8;
wire   [7:0] hout_1_fu_166_p2;
reg   [7:0] hout_1_reg_323;
wire    ap_CS_fsm_state2;
wire   [7:0] wout_1_fu_178_p2;
reg   [7:0] wout_1_reg_331;
wire    ap_CS_fsm_state3;
wire   [1:0] hkern_1_fu_190_p2;
reg   [1:0] hkern_1_reg_339;
wire    ap_CS_fsm_state4;
wire   [63:0] tmp_fu_196_p1;
reg   [63:0] tmp_reg_344;
wire   [0:0] exitcond9_fu_184_p2;
wire   [1:0] wkern_1_fu_206_p2;
reg   [1:0] wkern_1_reg_352;
wire    ap_CS_fsm_state5;
wire   [12:0] tmp_2_cast_fu_212_p1;
reg   [12:0] tmp_2_cast_reg_357;
wire   [0:0] exitcond8_fu_200_p2;
wire   [4:0] pkern_1_fu_222_p2;
reg   [4:0] pkern_1_reg_365;
wire    ap_CS_fsm_state6;
wire   [9:0] tmp_4_cast_fu_228_p1;
reg   [9:0] tmp_4_cast_reg_370;
wire   [0:0] exitcond7_fu_216_p2;
wire   [4:0] pout_1_fu_238_p2;
reg   [4:0] pout_1_reg_378;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond_fu_232_p2;
reg   [7:0] hout_reg_94;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_172_p2;
reg   [7:0] wout_reg_105;
wire   [0:0] exitcond1_fu_160_p2;
reg   [1:0] hkern_reg_116;
reg   [1:0] wkern_reg_127;
reg   [4:0] pkern_reg_138;
reg   [4:0] pout_reg_149;
wire   [63:0] tmp_11_cast_fu_315_p1;
wire   [8:0] tmp_1_fu_244_p3;
wire   [9:0] tmp_3_cast_fu_252_p1;
wire   [9:0] tmp_5_fu_256_p2;
wire   [11:0] tmp_2_fu_265_p3;
wire   [63:0] p_shl1_fu_273_p1;
wire   [63:0] tmp_5_cast_fu_261_p1;
wire   [63:0] tmp_7_fu_277_p2;
wire   [63:0] tmp_8_fu_283_p2;
wire   [10:0] tmp_4_fu_292_p1;
wire   [12:0] p_shl_cast_fu_296_p3;
wire   [12:0] tmp_3_fu_288_p1;
wire   [12:0] tmp_s_fu_304_p2;
wire   [12:0] tmp_6_fu_310_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        hkern_reg_116 <= 2'd0;
    end else if (((exitcond8_fu_200_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        hkern_reg_116 <= hkern_1_reg_339;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_172_p2 == 1'd1))) begin
        hout_reg_94 <= hout_1_reg_323;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hout_reg_94 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        pkern_reg_138 <= pkern_1_reg_365;
    end else if (((exitcond8_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        pkern_reg_138 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_216_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        pout_reg_149 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state8) & (output_V_V_full_n == 1'b1))) begin
        pout_reg_149 <= pout_1_reg_378;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_216_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        wkern_reg_127 <= wkern_1_reg_352;
    end else if (((exitcond9_fu_184_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        wkern_reg_127 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_160_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_105 <= 8'd0;
    end else if (((exitcond9_fu_184_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        wout_reg_105 <= wout_1_reg_331;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        hkern_1_reg_339 <= hkern_1_fu_190_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hout_1_reg_323 <= hout_1_fu_166_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        pkern_1_reg_365 <= pkern_1_fu_222_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        pout_1_reg_378 <= pout_1_fu_238_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond8_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_2_cast_reg_357[1 : 0] <= tmp_2_cast_fu_212_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_216_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_4_cast_reg_370[4 : 0] <= tmp_4_cast_fu_228_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond9_fu_184_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_reg_344[1 : 0] <= tmp_fu_196_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        wkern_1_reg_352 <= wkern_1_fu_206_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wout_1_reg_331 <= wout_1_fu_178_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (output_V_V_full_n == 1'b1))) begin
        output_V_V_write = 1'b1;
    end else begin
        output_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        weight_V_ce0 = 1'b1;
    end else begin
        weight_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_160_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond2_fu_172_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond9_fu_184_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond8_fu_200_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond7_fu_216_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond_fu_232_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (output_V_V_full_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign exitcond1_fu_160_p2 = ((hout_reg_94 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond2_fu_172_p2 = ((wout_reg_105 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond7_fu_216_p2 = ((pkern_reg_138 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond8_fu_200_p2 = ((wkern_reg_127 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond9_fu_184_p2 = ((hkern_reg_116 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_232_p2 = ((pout_reg_149 == 5'd16) ? 1'b1 : 1'b0);

assign hkern_1_fu_190_p2 = (hkern_reg_116 + 2'd1);

assign hout_1_fu_166_p2 = (hout_reg_94 + 8'd1);

assign output_V_V_din = weight_V_q0;

assign p_shl1_fu_273_p1 = tmp_2_fu_265_p3;

assign p_shl_cast_fu_296_p3 = {{tmp_4_fu_292_p1}, {2'd0}};

assign pkern_1_fu_222_p2 = (pkern_reg_138 + 5'd1);

assign pout_1_fu_238_p2 = (pout_reg_149 + 5'd1);

assign tmp_11_cast_fu_315_p1 = tmp_6_fu_310_p2;

assign tmp_1_fu_244_p3 = {{pout_reg_149}, {4'd0}};

assign tmp_2_cast_fu_212_p1 = wkern_reg_127;

assign tmp_2_fu_265_p3 = {{tmp_5_fu_256_p2}, {2'd0}};

assign tmp_3_cast_fu_252_p1 = tmp_1_fu_244_p3;

assign tmp_3_fu_288_p1 = tmp_8_fu_283_p2[12:0];

assign tmp_4_cast_fu_228_p1 = pkern_reg_138;

assign tmp_4_fu_292_p1 = tmp_8_fu_283_p2[10:0];

assign tmp_5_cast_fu_261_p1 = tmp_5_fu_256_p2;

assign tmp_5_fu_256_p2 = (tmp_3_cast_fu_252_p1 + tmp_4_cast_reg_370);

assign tmp_6_fu_310_p2 = (tmp_s_fu_304_p2 + tmp_2_cast_reg_357);

assign tmp_7_fu_277_p2 = (p_shl1_fu_273_p1 - tmp_5_cast_fu_261_p1);

assign tmp_8_fu_283_p2 = (tmp_7_fu_277_p2 + tmp_reg_344);

assign tmp_fu_196_p1 = hkern_reg_116;

assign tmp_s_fu_304_p2 = (p_shl_cast_fu_296_p3 - tmp_3_fu_288_p1);

assign weight_V_address0 = tmp_11_cast_fu_315_p1;

assign wkern_1_fu_206_p2 = (wkern_reg_127 + 2'd1);

assign wout_1_fu_178_p2 = (wout_reg_105 + 8'd1);

always @ (posedge ap_clk) begin
    tmp_reg_344[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    tmp_2_cast_reg_357[12:2] <= 11'b00000000000;
    tmp_4_cast_reg_370[9:5] <= 5'b00000;
end

endmodule //weight_s_6
