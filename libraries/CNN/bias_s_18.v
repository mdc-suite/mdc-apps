// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bias_s_18,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.956000,HLS_SYN_LAT=29149,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=37,HLS_SYN_LUT=147}" *)

module bias_s_18 (
        ap_clk,
        ap_rst_n,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write,
        bias_V_address0,
        bias_V_ce0,
        bias_V_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst_n;
output  [7:0] output_V_V_din;
input   output_V_V_full_n;
output   output_V_V_write;
output  [4:0] bias_V_address0;
output   bias_V_ce0;
input  [7:0] bias_V_q0;

reg output_V_V_write;
reg bias_V_ce0;

reg    ap_rst_n_inv;
reg    output_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state5;
wire   [4:0] hout_1_fu_107_p2;
reg   [4:0] hout_1_reg_145;
wire    ap_CS_fsm_state2;
wire   [4:0] wout_1_fu_119_p2;
reg   [4:0] wout_1_reg_153;
wire    ap_CS_fsm_state3;
wire   [5:0] init_idx_1_fu_131_p2;
reg   [5:0] init_idx_1_reg_161;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_125_p2;
reg   [4:0] hout_reg_68;
wire    ap_CS_fsm_state1;
wire   [0:0] exitcond2_fu_113_p2;
reg   [4:0] wout_reg_79;
wire   [0:0] exitcond3_fu_101_p2;
reg   [5:0] init_idx_reg_90;
wire   [63:0] tmp_fu_137_p1;
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
    if (((exitcond2_fu_113_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        hout_reg_68 <= hout_1_reg_145;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hout_reg_68 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_113_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        init_idx_reg_90 <= 6'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) & (output_V_V_full_n == 1'b1))) begin
        init_idx_reg_90 <= init_idx_1_reg_161;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_101_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        wout_reg_79 <= 5'd0;
    end else if (((exitcond_fu_125_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        wout_reg_79 <= wout_1_reg_153;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hout_1_reg_145 <= hout_1_fu_107_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        init_idx_1_reg_161 <= init_idx_1_fu_131_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        wout_1_reg_153 <= wout_1_fu_119_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bias_V_ce0 = 1'b1;
    end else begin
        bias_V_ce0 = 1'b0;
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
            if (((exitcond3_fu_101_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond2_fu_113_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_fu_125_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
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
    ap_rst_n_inv = ~ap_rst_n;
end

assign bias_V_address0 = tmp_fu_137_p1;

assign exitcond2_fu_113_p2 = ((wout_reg_79 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond3_fu_101_p2 = ((hout_reg_68 == 5'd21) ? 1'b1 : 1'b0);

assign exitcond_fu_125_p2 = ((init_idx_reg_90 == 6'd32) ? 1'b1 : 1'b0);

assign hout_1_fu_107_p2 = (hout_reg_68 + 5'd1);

assign init_idx_1_fu_131_p2 = (init_idx_reg_90 + 6'd1);

assign output_V_V_din = bias_V_q0;

assign tmp_fu_137_p1 = init_idx_reg_90;

assign wout_1_fu_119_p2 = (wout_reg_79 + 5'd1);

endmodule //bias_s_18
