// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="weight_s_20,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.381500,HLS_SYN_LAT=16257026,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=125,HLS_SYN_LUT=852}" *)

module weight_s_20 (
        ap_clk,
        ap_rst,
        output_V_V_din,
        output_V_V_full_n,
        output_V_V_write,
        weight_V_address0,
        weight_V_ce0,
        weight_V_q0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
output  [7:0] output_V_V_din;
input   output_V_V_full_n;
output   output_V_V_write;
output  [15:0] weight_V_address0;
output   weight_V_ce0;
input  [7:0] weight_V_q0;

reg output_V_V_write;
reg weight_V_ce0;

reg    output_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten4_reg_638;
reg   [23:0] indvar_flatten1_reg_126;
reg   [20:0] indvar_flatten2_reg_137;
reg   [15:0] indvar_flatten3_reg_148;
reg   [1:0] hkern_reg_159;
reg   [14:0] indvar_flatten4_reg_170;
reg   [1:0] wkern_reg_181;
reg   [13:0] indvar_flatten_reg_192;
reg   [6:0] pkern_reg_203;
reg   [6:0] pout_reg_214;
wire   [0:0] exitcond_flatten4_fu_225_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [23:0] indvar_flatten_next4_fu_231_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [1:0] tmp_mid2_fu_367_p3;
reg   [1:0] tmp_mid2_reg_647;
wire   [1:0] tmp_2_mid2_fu_423_p3;
reg   [1:0] tmp_2_mid2_reg_652;
wire   [6:0] tmp_4_mid2_fu_485_p3;
reg   [6:0] tmp_4_mid2_reg_657;
wire   [6:0] pout_1_fu_576_p2;
wire   [13:0] indvar_flatten_next_fu_588_p3;
wire   [14:0] indvar_flatten_next1_fu_602_p3;
wire   [15:0] indvar_flatten_next2_fu_616_p3;
wire   [20:0] indvar_flatten_next3_fu_630_p3;
wire    ap_CS_fsm_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [1:0] ap_phi_mux_hkern_phi_fu_163_p4;
reg   [1:0] ap_phi_mux_wkern_phi_fu_185_p4;
reg   [6:0] ap_phi_mux_pkern_phi_fu_207_p4;
wire   [63:0] tmp_22_cast_fu_571_p1;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] exitcond_flatten_fu_237_p2;
wire   [0:0] exitcond_fu_249_p2;
wire   [0:0] not_exitcond_flatten_fu_243_p2;
wire   [0:0] exitcond_flatten1_fu_261_p2;
wire   [0:0] exitcond_flatten2_fu_273_p2;
wire   [0:0] exitcond_flatten3_fu_285_p2;
wire   [0:0] exitcond_flatten39_m_fu_291_p2;
wire   [0:0] tmp_3_fu_297_p2;
wire   [0:0] exitcond_flatten39_n_fu_311_p2;
wire   [0:0] exitcond_mid_fu_255_p2;
wire   [0:0] not_exitcond_flatten_1_fu_317_p2;
wire   [0:0] exitcond_flatten_mid_fu_267_p2;
wire   [0:0] exitcond_flatten15_m_fu_279_p2;
wire   [1:0] hkern_mid_fu_303_p3;
wire   [0:0] exitcond_flatten15_m_1_fu_335_p2;
wire   [0:0] tmp_8_fu_347_p2;
wire   [0:0] tmp_fu_353_p2;
wire   [1:0] hkern_1_fu_341_p2;
wire   [0:0] exitcond_mid1_fu_323_p2;
wire   [0:0] not_exitcond_flatten_2_fu_379_p2;
wire   [0:0] exitcond_flatten_mid_3_fu_329_p2;
wire   [1:0] wkern_mid1_fu_359_p3;
wire   [0:0] exitcond_flatten_mid_4_fu_391_p2;
wire   [0:0] tmp_s_fu_403_p2;
wire   [0:0] tmp_2_fu_409_p2;
wire   [1:0] wkern_1_fu_397_p2;
wire   [0:0] exitcond_flatten_mid_5_fu_435_p2;
wire   [0:0] exitcond_mid2_fu_385_p2;
wire   [0:0] not_exitcond_flatten_3_fu_441_p2;
wire   [6:0] pkern_mid1_fu_415_p3;
wire   [0:0] exitcond_mid3_fu_447_p2;
wire   [0:0] tmp_4_fu_459_p2;
wire   [0:0] tmp_5_fu_465_p2;
wire   [0:0] tmp_6_fu_471_p2;
wire   [6:0] pkern_1_fu_453_p2;
wire   [6:0] pout_mid2_fu_477_p3;
wire   [12:0] tmp_7_fu_497_p3;
wire   [13:0] tmp_4_mid2_cast_fu_493_p1;
wire   [13:0] tmp_15_cast_fu_505_p1;
wire   [13:0] tmp_9_fu_509_p2;
wire   [15:0] tmp_10_fu_519_p3;
wire   [63:0] p_shl9_fu_527_p1;
wire   [63:0] tmp_16_cast_fu_515_p1;
wire   [63:0] tmp_mid2_cast_fu_375_p1;
wire   [63:0] tmp_11_fu_531_p2;
wire   [63:0] tmp_12_fu_537_p2;
wire   [14:0] tmp_14_fu_547_p1;
wire   [16:0] p_shl_cast_fu_551_p3;
wire   [16:0] tmp_13_fu_543_p1;
wire   [16:0] tmp_2_mid2_cast_fu_431_p1;
wire   [16:0] tmp_15_fu_559_p2;
wire   [16:0] tmp_16_fu_565_p2;
wire   [13:0] indvar_flatten_op_fu_582_p2;
wire   [14:0] indvar_flatten13_op_fu_596_p2;
wire   [15:0] indvar_flatten37_op_fu_610_p2;
wire   [20:0] indvar_flatten71_op_fu_624_p2;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state1)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_638 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        hkern_reg_159 <= tmp_mid2_reg_647;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hkern_reg_159 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_225_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1_reg_126 <= indvar_flatten_next4_fu_231_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten1_reg_126 <= 24'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_225_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_reg_137 <= indvar_flatten_next3_fu_630_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten2_reg_137 <= 21'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_225_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten3_reg_148 <= indvar_flatten_next2_fu_616_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten3_reg_148 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_225_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten4_reg_170 <= indvar_flatten_next1_fu_602_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten4_reg_170 <= 15'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_225_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_192 <= indvar_flatten_next_fu_588_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten_reg_192 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_638 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pkern_reg_203 <= tmp_4_mid2_reg_657;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        pkern_reg_203 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_225_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pout_reg_214 <= pout_1_fu_576_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        pout_reg_214 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_638 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        wkern_reg_181 <= tmp_2_mid2_reg_652;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        wkern_reg_181 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten4_reg_638 <= exitcond_flatten4_fu_225_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_225_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_2_mid2_reg_652 <= tmp_2_mid2_fu_423_p3;
        tmp_4_mid2_reg_657 <= tmp_4_mid2_fu_485_p3;
        tmp_mid2_reg_647 <= tmp_mid2_fu_367_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten4_fu_225_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
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
    if (((exitcond_flatten4_reg_638 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_hkern_phi_fu_163_p4 = tmp_mid2_reg_647;
    end else begin
        ap_phi_mux_hkern_phi_fu_163_p4 = hkern_reg_159;
    end
end

always @ (*) begin
    if (((exitcond_flatten4_reg_638 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_pkern_phi_fu_207_p4 = tmp_4_mid2_reg_657;
    end else begin
        ap_phi_mux_pkern_phi_fu_207_p4 = pkern_reg_203;
    end
end

always @ (*) begin
    if (((exitcond_flatten4_reg_638 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_wkern_phi_fu_185_p4 = tmp_2_mid2_reg_652;
    end else begin
        ap_phi_mux_wkern_phi_fu_185_p4 = wkern_reg_181;
    end
end

always @ (*) begin
    if (((exitcond_flatten4_reg_638 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_638 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_V_V_write = 1'b1;
    end else begin
        output_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weight_V_ce0 = 1'b1;
    end else begin
        weight_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((exitcond_flatten4_fu_225_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond_flatten4_fu_225_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_flatten4_reg_638 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_flatten4_reg_638 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_flatten4_reg_638 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond_flatten4_reg_638 == 1'd0) & (output_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond_flatten15_m_1_fu_335_p2 = (not_exitcond_flatten_1_fu_317_p2 & exitcond_flatten15_m_fu_279_p2);

assign exitcond_flatten15_m_fu_279_p2 = (not_exitcond_flatten_fu_243_p2 & exitcond_flatten2_fu_273_p2);

assign exitcond_flatten1_fu_261_p2 = ((indvar_flatten_reg_192 == 14'd4096) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_273_p2 = ((indvar_flatten4_reg_170 == 15'd12288) ? 1'b1 : 1'b0);

assign exitcond_flatten39_m_fu_291_p2 = (not_exitcond_flatten_fu_243_p2 & exitcond_flatten3_fu_285_p2);

assign exitcond_flatten39_n_fu_311_p2 = (exitcond_flatten3_fu_285_p2 ^ 1'd1);

assign exitcond_flatten3_fu_285_p2 = ((indvar_flatten3_reg_148 == 16'd36864) ? 1'b1 : 1'b0);

assign exitcond_flatten4_fu_225_p2 = ((indvar_flatten1_reg_126 == 24'd16257024) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_237_p2 = ((indvar_flatten2_reg_137 == 21'd774144) ? 1'b1 : 1'b0);

assign exitcond_flatten_mid_3_fu_329_p2 = (not_exitcond_flatten_1_fu_317_p2 & exitcond_flatten_mid_fu_267_p2);

assign exitcond_flatten_mid_4_fu_391_p2 = (not_exitcond_flatten_2_fu_379_p2 & exitcond_flatten_mid_3_fu_329_p2);

assign exitcond_flatten_mid_5_fu_435_p2 = (exitcond_flatten_mid_3_fu_329_p2 ^ 1'd1);

assign exitcond_flatten_mid_fu_267_p2 = (not_exitcond_flatten_fu_243_p2 & exitcond_flatten1_fu_261_p2);

assign exitcond_fu_249_p2 = ((pout_reg_214 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_mid1_fu_323_p2 = (not_exitcond_flatten_1_fu_317_p2 & exitcond_mid_fu_255_p2);

assign exitcond_mid2_fu_385_p2 = (not_exitcond_flatten_2_fu_379_p2 & exitcond_mid1_fu_323_p2);

assign exitcond_mid3_fu_447_p2 = (not_exitcond_flatten_3_fu_441_p2 & exitcond_mid2_fu_385_p2);

assign exitcond_mid_fu_255_p2 = (not_exitcond_flatten_fu_243_p2 & exitcond_fu_249_p2);

assign hkern_1_fu_341_p2 = (2'd1 + hkern_mid_fu_303_p3);

assign hkern_mid_fu_303_p3 = ((tmp_3_fu_297_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_hkern_phi_fu_163_p4);

assign indvar_flatten13_op_fu_596_p2 = (15'd1 + indvar_flatten4_reg_170);

assign indvar_flatten37_op_fu_610_p2 = (16'd1 + indvar_flatten3_reg_148);

assign indvar_flatten71_op_fu_624_p2 = (21'd1 + indvar_flatten2_reg_137);

assign indvar_flatten_next1_fu_602_p3 = ((tmp_fu_353_p2[0:0] === 1'b1) ? 15'd1 : indvar_flatten13_op_fu_596_p2);

assign indvar_flatten_next2_fu_616_p3 = ((tmp_3_fu_297_p2[0:0] === 1'b1) ? 16'd1 : indvar_flatten37_op_fu_610_p2);

assign indvar_flatten_next3_fu_630_p3 = ((exitcond_flatten_fu_237_p2[0:0] === 1'b1) ? 21'd1 : indvar_flatten71_op_fu_624_p2);

assign indvar_flatten_next4_fu_231_p2 = (indvar_flatten1_reg_126 + 24'd1);

assign indvar_flatten_next_fu_588_p3 = ((tmp_2_fu_409_p2[0:0] === 1'b1) ? 14'd1 : indvar_flatten_op_fu_582_p2);

assign indvar_flatten_op_fu_582_p2 = (14'd1 + indvar_flatten_reg_192);

assign not_exitcond_flatten_1_fu_317_p2 = (exitcond_flatten_fu_237_p2 | exitcond_flatten39_n_fu_311_p2);

assign not_exitcond_flatten_2_fu_379_p2 = (exitcond_flatten15_m_1_fu_335_p2 ^ 1'd1);

assign not_exitcond_flatten_3_fu_441_p2 = (exitcond_flatten_mid_5_fu_435_p2 | exitcond_flatten15_m_1_fu_335_p2);

assign not_exitcond_flatten_fu_243_p2 = (exitcond_flatten_fu_237_p2 ^ 1'd1);

assign output_V_V_din = weight_V_q0;

assign p_shl9_fu_527_p1 = tmp_10_fu_519_p3;

assign p_shl_cast_fu_551_p3 = {{tmp_14_fu_547_p1}, {2'd0}};

assign pkern_1_fu_453_p2 = (7'd1 + pkern_mid1_fu_415_p3);

assign pkern_mid1_fu_415_p3 = ((tmp_2_fu_409_p2[0:0] === 1'b1) ? 7'd0 : ap_phi_mux_pkern_phi_fu_207_p4);

assign pout_1_fu_576_p2 = (7'd1 + pout_mid2_fu_477_p3);

assign pout_mid2_fu_477_p3 = ((tmp_6_fu_471_p2[0:0] === 1'b1) ? 7'd0 : pout_reg_214);

assign tmp_10_fu_519_p3 = {{tmp_9_fu_509_p2}, {2'd0}};

assign tmp_11_fu_531_p2 = (p_shl9_fu_527_p1 - tmp_16_cast_fu_515_p1);

assign tmp_12_fu_537_p2 = (tmp_mid2_cast_fu_375_p1 + tmp_11_fu_531_p2);

assign tmp_13_fu_543_p1 = tmp_12_fu_537_p2[16:0];

assign tmp_14_fu_547_p1 = tmp_12_fu_537_p2[14:0];

assign tmp_15_cast_fu_505_p1 = tmp_7_fu_497_p3;

assign tmp_15_fu_559_p2 = (p_shl_cast_fu_551_p3 - tmp_13_fu_543_p1);

assign tmp_16_cast_fu_515_p1 = tmp_9_fu_509_p2;

assign tmp_16_fu_565_p2 = (tmp_2_mid2_cast_fu_431_p1 + tmp_15_fu_559_p2);

assign tmp_22_cast_fu_571_p1 = tmp_16_fu_565_p2;

assign tmp_2_fu_409_p2 = (tmp_s_fu_403_p2 | tmp_3_fu_297_p2);

assign tmp_2_mid2_cast_fu_431_p1 = tmp_2_mid2_fu_423_p3;

assign tmp_2_mid2_fu_423_p3 = ((exitcond_flatten_mid_4_fu_391_p2[0:0] === 1'b1) ? wkern_1_fu_397_p2 : wkern_mid1_fu_359_p3);

assign tmp_3_fu_297_p2 = (exitcond_flatten_fu_237_p2 | exitcond_flatten39_m_fu_291_p2);

assign tmp_4_fu_459_p2 = (exitcond_mid3_fu_447_p2 | exitcond_flatten_mid_4_fu_391_p2);

assign tmp_4_mid2_cast_fu_493_p1 = tmp_4_mid2_fu_485_p3;

assign tmp_4_mid2_fu_485_p3 = ((exitcond_mid3_fu_447_p2[0:0] === 1'b1) ? pkern_1_fu_453_p2 : pkern_mid1_fu_415_p3);

assign tmp_5_fu_465_p2 = (tmp_8_fu_347_p2 | tmp_4_fu_459_p2);

assign tmp_6_fu_471_p2 = (tmp_5_fu_465_p2 | exitcond_flatten_fu_237_p2);

assign tmp_7_fu_497_p3 = {{pout_mid2_fu_477_p3}, {6'd0}};

assign tmp_8_fu_347_p2 = (exitcond_flatten39_m_fu_291_p2 | exitcond_flatten15_m_1_fu_335_p2);

assign tmp_9_fu_509_p2 = (tmp_4_mid2_cast_fu_493_p1 + tmp_15_cast_fu_505_p1);

assign tmp_fu_353_p2 = (tmp_8_fu_347_p2 | exitcond_flatten_fu_237_p2);

assign tmp_mid2_cast_fu_375_p1 = tmp_mid2_fu_367_p3;

assign tmp_mid2_fu_367_p3 = ((exitcond_flatten15_m_1_fu_335_p2[0:0] === 1'b1) ? hkern_1_fu_341_p2 : hkern_mid_fu_303_p3);

assign tmp_s_fu_403_p2 = (exitcond_flatten_mid_4_fu_391_p2 | exitcond_flatten15_m_1_fu_335_p2);

assign weight_V_address0 = tmp_22_cast_fu_571_p1;

assign wkern_1_fu_397_p2 = (2'd1 + wkern_mid1_fu_359_p3);

assign wkern_mid1_fu_359_p3 = ((tmp_fu_353_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_wkern_phi_fu_185_p4);

endmodule //weight_s_20
