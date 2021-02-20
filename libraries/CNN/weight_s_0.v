// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="weight_s_0,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.515000,HLS_SYN_LAT=1704193,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=54,HLS_SYN_LUT=214}" *)

module weight_s_0 (
        ap_clk,
        ap_rst,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write,
        weight_V_address0,
        weight_V_ce0,
        weight_V_q0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
output  [7:0] output_V_V_din;
input   output_V_V_full_n;
output   output_V_V_write;
output  [5:0] weight_V_address0;
output   weight_V_ce0;
input  [7:0] weight_V_q0;

reg output_V_V_write;
reg weight_V_ce0;

reg    output_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state6;
wire   [7:0] hout_1_fu_138_p2;
reg   [7:0] hout_1_reg_215;
wire    ap_CS_fsm_state2;
wire   [7:0] wout_1_fu_150_p2;
reg   [7:0] wout_1_reg_223;
wire    ap_CS_fsm_state3;
wire   [1:0] pkern_1_fu_162_p2;
reg   [1:0] pkern_1_reg_231;
wire    ap_CS_fsm_state4;
wire   [6:0] tmp_4_cast_fu_168_p1;
reg   [6:0] tmp_4_cast_reg_236;
wire   [0:0] exitcond7_fu_156_p2;
wire   [4:0] pout_1_fu_178_p2;
reg   [4:0] pout_1_reg_244;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond_fu_172_p2;
reg   [7:0] hout_reg_88;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_144_p2;
reg   [7:0] wout_reg_99;
wire   [0:0] exitcond1_fu_132_p2;
reg   [1:0] pkern_reg_110;
reg   [4:0] pout_reg_121;
wire  signed [63:0] tmp_2_cast_fu_207_p1;
wire   [6:0] tmp_fu_188_p3;
wire   [6:0] tmp_6_cast_fu_184_p1;
wire   [6:0] tmp_1_fu_196_p2;
wire   [6:0] tmp_2_fu_202_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        hout_reg_88 <= hout_1_reg_215;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hout_reg_88 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        pkern_reg_110 <= 2'd0;
    end else if (((exitcond_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        pkern_reg_110 <= pkern_1_reg_231;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        pout_reg_121 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (output_V_V_full_n == 1'b1))) begin
        pout_reg_121 <= pout_1_reg_244;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_132_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_99 <= 8'd0;
    end else if (((exitcond7_fu_156_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        wout_reg_99 <= wout_1_reg_223;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hout_1_reg_215 <= hout_1_fu_138_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        pkern_1_reg_231 <= pkern_1_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        pout_1_reg_244 <= pout_1_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond7_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_4_cast_reg_236[1 : 0] <= tmp_4_cast_fu_168_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wout_1_reg_223 <= wout_1_fu_150_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (output_V_V_full_n == 1'b1))) begin
        output_V_V_write = 1'b1;
    end else begin
        output_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
            if (((exitcond1_fu_132_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond2_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond7_fu_156_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (output_V_V_full_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
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

assign exitcond1_fu_132_p2 = ((hout_reg_88 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond2_fu_144_p2 = ((wout_reg_99 == 8'd128) ? 1'b1 : 1'b0);

assign exitcond7_fu_156_p2 = ((pkern_reg_110 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_172_p2 = ((pout_reg_121 == 5'd16) ? 1'b1 : 1'b0);

assign hout_1_fu_138_p2 = (hout_reg_88 + 8'd1);

assign output_V_V_din = weight_V_q0;

assign pkern_1_fu_162_p2 = (pkern_reg_110 + 2'd1);

assign pout_1_fu_178_p2 = (pout_reg_121 + 5'd1);

assign tmp_1_fu_196_p2 = (tmp_fu_188_p3 - tmp_6_cast_fu_184_p1);

assign tmp_2_cast_fu_207_p1 = $signed(tmp_2_fu_202_p2);

assign tmp_2_fu_202_p2 = (tmp_1_fu_196_p2 + tmp_4_cast_reg_236);

assign tmp_4_cast_fu_168_p1 = pkern_reg_110;

assign tmp_6_cast_fu_184_p1 = pout_reg_121;

assign tmp_fu_188_p3 = {{pout_reg_121}, {2'd0}};

assign weight_V_address0 = tmp_2_cast_fu_207_p1;

assign wout_1_fu_150_p2 = (wout_reg_99 + 8'd1);

always @ (posedge ap_clk) begin
    tmp_4_cast_reg_236[6:2] <= 5'b00000;
end

endmodule //weight_s_0
