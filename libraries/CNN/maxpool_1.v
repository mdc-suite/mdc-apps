// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="maxpool_1,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.420000,HLS_SYN_LAT=2629761,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=72,HLS_SYN_LUT=296}" *)

module maxpool_1 (
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

reg    input_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond_fu_225_p2;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond4_fu_213_p2;
wire   [6:0] hout_1_fu_183_p2;
reg   [6:0] hout_1_reg_273;
wire    ap_CS_fsm_state2;
wire   [6:0] wout_1_fu_195_p2;
reg   [6:0] wout_1_reg_281;
wire    ap_CS_fsm_state3;
wire   [6:0] pout_1_fu_207_p2;
reg   [6:0] pout_1_reg_289;
wire    ap_CS_fsm_state4;
wire   [1:0] hkern_1_fu_219_p2;
reg   [1:0] hkern_1_reg_297;
reg    ap_block_state5;
wire   [1:0] wkern_1_fu_231_p2;
reg    ap_block_state6;
reg   [6:0] hout_reg_93;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_189_p2;
reg   [6:0] wout_reg_104;
wire   [0:0] exitcond3_fu_201_p2;
wire   [0:0] exitcond1_fu_177_p2;
reg   [6:0] pout_reg_115;
reg   [1:0] hkern_reg_126;
reg   [0:0] first_element_reg_137;
reg   [1:0] wkern_reg_149;
reg   [0:0] first_element_1_reg_160;
reg   [15:0] tmp_V_fu_76;
wire   [15:0] max_V_1_fu_251_p3;
wire   [0:0] tmp_4_fu_237_p2;
wire   [15:0] max_V_fu_243_p3;
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
    if ((~((exitcond4_fu_213_p2 == 1'd1) & (output_V_V_full_n == 1'b0)) & (exitcond4_fu_213_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        first_element_1_reg_160 <= first_element_reg_137;
    end else if ((~((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0)) & (exitcond_fu_225_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        first_element_1_reg_160 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_201_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        first_element_reg_137 <= 1'd1;
    end else if ((~((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0)) & (exitcond_fu_225_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        first_element_reg_137 <= first_element_1_reg_160;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_201_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        hkern_reg_126 <= 2'd0;
    end else if ((~((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0)) & (exitcond_fu_225_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        hkern_reg_126 <= hkern_1_reg_297;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_189_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        hout_reg_93 <= hout_1_reg_273;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hout_reg_93 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_189_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        pout_reg_115 <= 7'd0;
    end else if ((~((exitcond4_fu_213_p2 == 1'd1) & (output_V_V_full_n == 1'b0)) & (exitcond4_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        pout_reg_115 <= pout_1_reg_289;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond4_fu_213_p2 == 1'd1) & (output_V_V_full_n == 1'b0)) & (exitcond4_fu_213_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        wkern_reg_149 <= 2'd0;
    end else if ((~((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0)) & (exitcond_fu_225_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        wkern_reg_149 <= wkern_1_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_177_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_104 <= 7'd0;
    end else if (((exitcond3_fu_201_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        wout_reg_104 <= wout_1_reg_281;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond4_fu_213_p2 == 1'd1) & (output_V_V_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        hkern_1_reg_297 <= hkern_1_fu_219_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hout_1_reg_273 <= hout_1_fu_183_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        pout_1_reg_289 <= pout_1_fu_207_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0)) & (exitcond_fu_225_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_V_fu_76 <= max_V_1_fu_251_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wout_1_reg_281 <= wout_1_fu_195_p2;
    end
end

always @ (*) begin
    if (((exitcond_fu_225_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0)) & (exitcond_fu_225_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        input_V_V_read = 1'b1;
    end else begin
        input_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond4_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((exitcond4_fu_213_p2 == 1'd1) & (output_V_V_full_n == 1'b0)) & (exitcond4_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((exitcond1_fu_177_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond2_fu_189_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond3_fu_201_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((exitcond4_fu_213_p2 == 1'd1) & (output_V_V_full_n == 1'b0)) & (exitcond4_fu_213_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else if ((~((exitcond4_fu_213_p2 == 1'd1) & (output_V_V_full_n == 1'b0)) & (exitcond4_fu_213_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if ((~((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0)) & (exitcond_fu_225_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0)) & (exitcond_fu_225_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
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

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state5 = ((exitcond4_fu_213_p2 == 1'd1) & (output_V_V_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state6 = ((input_V_V_empty_n == 1'b0) & (exitcond_fu_225_p2 == 1'd0));
end

assign exitcond1_fu_177_p2 = ((hout_reg_93 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond2_fu_189_p2 = ((wout_reg_104 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond3_fu_201_p2 = ((pout_reg_115 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond4_fu_213_p2 = ((hkern_reg_126 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_fu_225_p2 = ((wkern_reg_149 == 2'd2) ? 1'b1 : 1'b0);

assign hkern_1_fu_219_p2 = (hkern_reg_126 + 2'd1);

assign hout_1_fu_183_p2 = (hout_reg_93 + 7'd1);

assign max_V_1_fu_251_p3 = ((first_element_1_reg_160[0:0] === 1'b1) ? input_V_V_dout : max_V_fu_243_p3);

assign max_V_fu_243_p3 = ((tmp_4_fu_237_p2[0:0] === 1'b1) ? tmp_V_fu_76 : input_V_V_dout);

assign output_V_V_din = tmp_V_fu_76;

assign pout_1_fu_207_p2 = (pout_reg_115 + 7'd1);

assign tmp_4_fu_237_p2 = (($signed(tmp_V_fu_76) > $signed(input_V_V_dout)) ? 1'b1 : 1'b0);

assign wkern_1_fu_231_p2 = (wkern_reg_149 + 2'd1);

assign wout_1_fu_195_p2 = (wout_reg_104 + 7'd1);

endmodule //maxpool_1
