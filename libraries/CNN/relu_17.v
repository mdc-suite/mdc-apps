// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="relu_17,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.433000,HLS_SYN_LAT=57373,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=54,HLS_SYN_LUT=192}" *)

module relu_17 (
        ap_clk,
        ap_rst_n,
        input_V_V_dout,
        input_V_V_empty_n,
        input_V_V_read,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

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
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_144_p2;
reg    output_V_V_blk_n;
wire    ap_CS_fsm_state5;
wire   [4:0] i_1_fu_126_p2;
reg   [4:0] i_1_reg_181;
wire    ap_CS_fsm_state2;
wire   [4:0] j_1_fu_138_p2;
reg   [4:0] j_1_reg_189;
wire    ap_CS_fsm_state3;
wire   [6:0] k_1_fu_150_p2;
reg   [6:0] k_1_reg_197;
reg    ap_block_state4;
wire   [14:0] v_V_fu_166_p3;
reg   [14:0] v_V_reg_202;
reg   [4:0] i_reg_87;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_132_p2;
reg   [4:0] j_reg_98;
wire   [0:0] exitcond1_fu_120_p2;
reg   [6:0] k_reg_109;
wire   [0:0] tmp_fu_160_p2;
wire   [14:0] tmp_1_fu_156_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_132_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_87 <= i_1_reg_181;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        i_reg_87 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_98 <= 5'd0;
    end else if ((~((exitcond_fu_144_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        j_reg_98 <= j_1_reg_189;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_132_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_reg_109 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (output_V_V_full_n == 1'b1))) begin
        k_reg_109 <= k_1_reg_197;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_181 <= i_1_fu_126_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_189 <= j_1_fu_138_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_fu_144_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        k_1_reg_197 <= k_1_fu_150_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond_fu_144_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        v_V_reg_202 <= v_V_fu_166_p3;
    end
end

always @ (*) begin
    if (((exitcond_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        input_V_V_blk_n = input_V_V_empty_n;
    end else begin
        input_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((exitcond_fu_144_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        input_V_V_read = 1'b1;
    end else begin
        input_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (output_V_V_full_n == 1'b1))) begin
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
            if (((exitcond1_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond2_fu_132_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((exitcond_fu_144_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if ((~((exitcond_fu_144_p2 == 1'd0) & (input_V_V_empty_n == 1'b0)) & (exitcond_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (output_V_V_full_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
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

always @ (*) begin
    ap_block_state4 = ((exitcond_fu_144_p2 == 1'd0) & (input_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond1_fu_120_p2 = ((i_reg_87 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond2_fu_132_p2 = ((j_reg_98 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond_fu_144_p2 = ((k_reg_109 == 7'd64) ? 1'b1 : 1'b0);

assign i_1_fu_126_p2 = (i_reg_87 + 5'd1);

assign j_1_fu_138_p2 = (j_reg_98 + 5'd1);

assign k_1_fu_150_p2 = (k_reg_109 + 7'd1);

assign output_V_V_din = v_V_reg_202;

assign tmp_1_fu_156_p1 = input_V_V_dout[14:0];

assign tmp_fu_160_p2 = (($signed(input_V_V_dout) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign v_V_fu_166_p3 = ((tmp_fu_160_p2[0:0] === 1'b1) ? tmp_1_fu_156_p1 : 15'd0);

endmodule //relu_17
