// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="weight_s_3,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.688187,HLS_SYN_LAT=18874370,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=101,HLS_SYN_LUT=815}" *)

module weight_s_3 (
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
output  [10:0] weight_V_address0;
output   weight_V_ce0;
input  [7:0] weight_V_q0;

reg output_V_V_write;
reg weight_V_ce0;

reg    output_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten4_reg_642;
reg   [24:0] indvar_flatten1_reg_130;
reg   [18:0] indvar_flatten2_reg_141;
reg   [10:0] indvar_flatten3_reg_152;
reg   [1:0] hkern_reg_163;
reg   [9:0] indvar_flatten4_reg_174;
reg   [1:0] wkern_reg_185;
reg   [8:0] indvar_flatten_reg_196;
reg   [3:0] pkern_reg_207;
reg   [4:0] pout_reg_218;
wire   [0:0] exitcond_flatten4_fu_229_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [24:0] indvar_flatten_next4_fu_235_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [1:0] tmp_mid2_fu_371_p3;
reg   [1:0] tmp_mid2_reg_651;
wire   [1:0] tmp_2_mid2_fu_427_p3;
reg   [1:0] tmp_2_mid2_reg_656;
wire   [3:0] tmp_4_mid2_fu_489_p3;
reg   [3:0] tmp_4_mid2_reg_661;
wire   [4:0] pout_1_fu_580_p2;
wire   [8:0] indvar_flatten_next_fu_592_p3;
wire   [9:0] indvar_flatten_next1_fu_606_p3;
wire   [10:0] indvar_flatten_next2_fu_620_p3;
wire   [18:0] indvar_flatten_next3_fu_634_p3;
wire    ap_CS_fsm_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [1:0] ap_phi_mux_hkern_phi_fu_167_p4;
reg   [1:0] ap_phi_mux_wkern_phi_fu_189_p4;
reg   [3:0] ap_phi_mux_pkern_phi_fu_211_p4;
wire   [63:0] tmp_22_cast_fu_575_p1;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] exitcond_flatten_fu_241_p2;
wire   [0:0] exitcond_fu_253_p2;
wire   [0:0] not_exitcond_flatten_fu_247_p2;
wire   [0:0] exitcond_flatten1_fu_265_p2;
wire   [0:0] exitcond_flatten2_fu_277_p2;
wire   [0:0] exitcond_flatten3_fu_289_p2;
wire   [0:0] exitcond_flatten39_m_fu_295_p2;
wire   [0:0] tmp_3_fu_301_p2;
wire   [0:0] exitcond_flatten39_n_fu_315_p2;
wire   [0:0] exitcond_mid_fu_259_p2;
wire   [0:0] not_exitcond_flatten_1_fu_321_p2;
wire   [0:0] exitcond_flatten_mid_fu_271_p2;
wire   [0:0] exitcond_flatten15_m_fu_283_p2;
wire   [1:0] hkern_mid_fu_307_p3;
wire   [0:0] exitcond_flatten15_m_1_fu_339_p2;
wire   [0:0] tmp_8_fu_351_p2;
wire   [0:0] tmp_fu_357_p2;
wire   [1:0] hkern_1_fu_345_p2;
wire   [0:0] exitcond_mid1_fu_327_p2;
wire   [0:0] not_exitcond_flatten_2_fu_383_p2;
wire   [0:0] exitcond_flatten_mid_3_fu_333_p2;
wire   [1:0] wkern_mid1_fu_363_p3;
wire   [0:0] exitcond_flatten_mid_4_fu_395_p2;
wire   [0:0] tmp_s_fu_407_p2;
wire   [0:0] tmp_2_fu_413_p2;
wire   [1:0] wkern_1_fu_401_p2;
wire   [0:0] exitcond_flatten_mid_5_fu_439_p2;
wire   [0:0] exitcond_mid2_fu_389_p2;
wire   [0:0] not_exitcond_flatten_3_fu_445_p2;
wire   [3:0] pkern_mid1_fu_419_p3;
wire   [0:0] exitcond_mid3_fu_451_p2;
wire   [0:0] tmp_4_fu_463_p2;
wire   [0:0] tmp_5_fu_469_p2;
wire   [0:0] tmp_6_fu_475_p2;
wire   [3:0] pkern_1_fu_457_p2;
wire   [4:0] pout_mid2_fu_481_p3;
wire   [7:0] tmp_7_fu_501_p3;
wire   [8:0] tmp_4_mid2_cast_fu_497_p1;
wire   [8:0] tmp_15_cast_fu_509_p1;
wire   [8:0] tmp_9_fu_513_p2;
wire   [10:0] tmp_10_fu_523_p3;
wire   [63:0] p_shl9_fu_531_p1;
wire   [63:0] tmp_16_cast_fu_519_p1;
wire   [63:0] tmp_mid2_cast_fu_379_p1;
wire   [63:0] tmp_11_fu_535_p2;
wire   [63:0] tmp_12_fu_541_p2;
wire   [9:0] tmp_14_fu_551_p1;
wire   [11:0] p_shl_cast_fu_555_p3;
wire   [11:0] tmp_13_fu_547_p1;
wire   [11:0] tmp_2_mid2_cast_fu_435_p1;
wire   [11:0] tmp_15_fu_563_p2;
wire   [11:0] tmp_16_fu_569_p2;
wire   [8:0] indvar_flatten_op_fu_586_p2;
wire   [9:0] indvar_flatten13_op_fu_600_p2;
wire   [10:0] indvar_flatten37_op_fu_614_p2;
wire   [18:0] indvar_flatten71_op_fu_628_p2;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        hkern_reg_163 <= tmp_mid2_reg_651;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        hkern_reg_163 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_229_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1_reg_130 <= indvar_flatten_next4_fu_235_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten1_reg_130 <= 25'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_229_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_reg_141 <= indvar_flatten_next3_fu_634_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten2_reg_141 <= 19'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_229_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten3_reg_152 <= indvar_flatten_next2_fu_620_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten3_reg_152 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_229_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten4_reg_174 <= indvar_flatten_next1_fu_606_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten4_reg_174 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_229_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_196 <= indvar_flatten_next_fu_592_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten_reg_196 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pkern_reg_207 <= tmp_4_mid2_reg_661;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        pkern_reg_207 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_229_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pout_reg_218 <= pout_1_fu_580_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        pout_reg_218 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        wkern_reg_185 <= tmp_2_mid2_reg_656;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        wkern_reg_185 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten4_reg_642 <= exitcond_flatten4_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_fu_229_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_2_mid2_reg_656 <= tmp_2_mid2_fu_427_p3;
        tmp_4_mid2_reg_661 <= tmp_4_mid2_fu_489_p3;
        tmp_mid2_reg_651 <= tmp_mid2_fu_371_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten4_fu_229_p2 == 1'd1)) begin
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
    if (((exitcond_flatten4_reg_642 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_hkern_phi_fu_167_p4 = tmp_mid2_reg_651;
    end else begin
        ap_phi_mux_hkern_phi_fu_167_p4 = hkern_reg_163;
    end
end

always @ (*) begin
    if (((exitcond_flatten4_reg_642 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_pkern_phi_fu_211_p4 = tmp_4_mid2_reg_661;
    end else begin
        ap_phi_mux_pkern_phi_fu_211_p4 = pkern_reg_207;
    end
end

always @ (*) begin
    if (((exitcond_flatten4_reg_642 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_wkern_phi_fu_189_p4 = tmp_2_mid2_reg_656;
    end else begin
        ap_phi_mux_wkern_phi_fu_189_p4 = wkern_reg_185;
    end
end

always @ (*) begin
    if (((exitcond_flatten4_reg_642 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten4_reg_642 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            if (~((exitcond_flatten4_fu_229_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((exitcond_flatten4_fu_229_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    ap_block_pp0_stage0_01001 = ((exitcond_flatten4_reg_642 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_flatten4_reg_642 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_flatten4_reg_642 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond_flatten4_reg_642 == 1'd0) & (output_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond_flatten15_m_1_fu_339_p2 = (not_exitcond_flatten_1_fu_321_p2 & exitcond_flatten15_m_fu_283_p2);

assign exitcond_flatten15_m_fu_283_p2 = (not_exitcond_flatten_fu_247_p2 & exitcond_flatten2_fu_277_p2);

assign exitcond_flatten1_fu_265_p2 = ((indvar_flatten_reg_196 == 9'd128) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_277_p2 = ((indvar_flatten4_reg_174 == 10'd384) ? 1'b1 : 1'b0);

assign exitcond_flatten39_m_fu_295_p2 = (not_exitcond_flatten_fu_247_p2 & exitcond_flatten3_fu_289_p2);

assign exitcond_flatten39_n_fu_315_p2 = (exitcond_flatten3_fu_289_p2 ^ 1'd1);

assign exitcond_flatten3_fu_289_p2 = ((indvar_flatten3_reg_152 == 11'd1152) ? 1'b1 : 1'b0);

assign exitcond_flatten4_fu_229_p2 = ((indvar_flatten1_reg_130 == 25'd18874368) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_241_p2 = ((indvar_flatten2_reg_141 == 19'd147456) ? 1'b1 : 1'b0);

assign exitcond_flatten_mid_3_fu_333_p2 = (not_exitcond_flatten_1_fu_321_p2 & exitcond_flatten_mid_fu_271_p2);

assign exitcond_flatten_mid_4_fu_395_p2 = (not_exitcond_flatten_2_fu_383_p2 & exitcond_flatten_mid_3_fu_333_p2);

assign exitcond_flatten_mid_5_fu_439_p2 = (exitcond_flatten_mid_3_fu_333_p2 ^ 1'd1);

assign exitcond_flatten_mid_fu_271_p2 = (not_exitcond_flatten_fu_247_p2 & exitcond_flatten1_fu_265_p2);

assign exitcond_fu_253_p2 = ((pout_reg_218 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_mid1_fu_327_p2 = (not_exitcond_flatten_1_fu_321_p2 & exitcond_mid_fu_259_p2);

assign exitcond_mid2_fu_389_p2 = (not_exitcond_flatten_2_fu_383_p2 & exitcond_mid1_fu_327_p2);

assign exitcond_mid3_fu_451_p2 = (not_exitcond_flatten_3_fu_445_p2 & exitcond_mid2_fu_389_p2);

assign exitcond_mid_fu_259_p2 = (not_exitcond_flatten_fu_247_p2 & exitcond_fu_253_p2);

assign hkern_1_fu_345_p2 = (2'd1 + hkern_mid_fu_307_p3);

assign hkern_mid_fu_307_p3 = ((tmp_3_fu_301_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_hkern_phi_fu_167_p4);

assign indvar_flatten13_op_fu_600_p2 = (10'd1 + indvar_flatten4_reg_174);

assign indvar_flatten37_op_fu_614_p2 = (11'd1 + indvar_flatten3_reg_152);

assign indvar_flatten71_op_fu_628_p2 = (19'd1 + indvar_flatten2_reg_141);

assign indvar_flatten_next1_fu_606_p3 = ((tmp_fu_357_p2[0:0] === 1'b1) ? 10'd1 : indvar_flatten13_op_fu_600_p2);

assign indvar_flatten_next2_fu_620_p3 = ((tmp_3_fu_301_p2[0:0] === 1'b1) ? 11'd1 : indvar_flatten37_op_fu_614_p2);

assign indvar_flatten_next3_fu_634_p3 = ((exitcond_flatten_fu_241_p2[0:0] === 1'b1) ? 19'd1 : indvar_flatten71_op_fu_628_p2);

assign indvar_flatten_next4_fu_235_p2 = (indvar_flatten1_reg_130 + 25'd1);

assign indvar_flatten_next_fu_592_p3 = ((tmp_2_fu_413_p2[0:0] === 1'b1) ? 9'd1 : indvar_flatten_op_fu_586_p2);

assign indvar_flatten_op_fu_586_p2 = (9'd1 + indvar_flatten_reg_196);

assign not_exitcond_flatten_1_fu_321_p2 = (exitcond_flatten_fu_241_p2 | exitcond_flatten39_n_fu_315_p2);

assign not_exitcond_flatten_2_fu_383_p2 = (exitcond_flatten15_m_1_fu_339_p2 ^ 1'd1);

assign not_exitcond_flatten_3_fu_445_p2 = (exitcond_flatten_mid_5_fu_439_p2 | exitcond_flatten15_m_1_fu_339_p2);

assign not_exitcond_flatten_fu_247_p2 = (exitcond_flatten_fu_241_p2 ^ 1'd1);

assign output_V_V_din = weight_V_q0;

assign p_shl9_fu_531_p1 = tmp_10_fu_523_p3;

assign p_shl_cast_fu_555_p3 = {{tmp_14_fu_551_p1}, {2'd0}};

assign pkern_1_fu_457_p2 = (4'd1 + pkern_mid1_fu_419_p3);

assign pkern_mid1_fu_419_p3 = ((tmp_2_fu_413_p2[0:0] === 1'b1) ? 4'd0 : ap_phi_mux_pkern_phi_fu_211_p4);

assign pout_1_fu_580_p2 = (5'd1 + pout_mid2_fu_481_p3);

assign pout_mid2_fu_481_p3 = ((tmp_6_fu_475_p2[0:0] === 1'b1) ? 5'd0 : pout_reg_218);

assign tmp_10_fu_523_p3 = {{tmp_9_fu_513_p2}, {2'd0}};

assign tmp_11_fu_535_p2 = (p_shl9_fu_531_p1 - tmp_16_cast_fu_519_p1);

assign tmp_12_fu_541_p2 = (tmp_mid2_cast_fu_379_p1 + tmp_11_fu_535_p2);

assign tmp_13_fu_547_p1 = tmp_12_fu_541_p2[11:0];

assign tmp_14_fu_551_p1 = tmp_12_fu_541_p2[9:0];

assign tmp_15_cast_fu_509_p1 = tmp_7_fu_501_p3;

assign tmp_15_fu_563_p2 = (p_shl_cast_fu_555_p3 - tmp_13_fu_547_p1);

assign tmp_16_cast_fu_519_p1 = tmp_9_fu_513_p2;

assign tmp_16_fu_569_p2 = (tmp_2_mid2_cast_fu_435_p1 + tmp_15_fu_563_p2);

assign tmp_22_cast_fu_575_p1 = tmp_16_fu_569_p2;

assign tmp_2_fu_413_p2 = (tmp_s_fu_407_p2 | tmp_3_fu_301_p2);

assign tmp_2_mid2_cast_fu_435_p1 = tmp_2_mid2_fu_427_p3;

assign tmp_2_mid2_fu_427_p3 = ((exitcond_flatten_mid_4_fu_395_p2[0:0] === 1'b1) ? wkern_1_fu_401_p2 : wkern_mid1_fu_363_p3);

assign tmp_3_fu_301_p2 = (exitcond_flatten_fu_241_p2 | exitcond_flatten39_m_fu_295_p2);

assign tmp_4_fu_463_p2 = (exitcond_mid3_fu_451_p2 | exitcond_flatten_mid_4_fu_395_p2);

assign tmp_4_mid2_cast_fu_497_p1 = tmp_4_mid2_fu_489_p3;

assign tmp_4_mid2_fu_489_p3 = ((exitcond_mid3_fu_451_p2[0:0] === 1'b1) ? pkern_1_fu_457_p2 : pkern_mid1_fu_419_p3);

assign tmp_5_fu_469_p2 = (tmp_8_fu_351_p2 | tmp_4_fu_463_p2);

assign tmp_6_fu_475_p2 = (tmp_5_fu_469_p2 | exitcond_flatten_fu_241_p2);

assign tmp_7_fu_501_p3 = {{pout_mid2_fu_481_p3}, {3'd0}};

assign tmp_8_fu_351_p2 = (exitcond_flatten39_m_fu_295_p2 | exitcond_flatten15_m_1_fu_339_p2);

assign tmp_9_fu_513_p2 = (tmp_4_mid2_cast_fu_497_p1 + tmp_15_cast_fu_509_p1);

assign tmp_fu_357_p2 = (tmp_8_fu_351_p2 | exitcond_flatten_fu_241_p2);

assign tmp_mid2_cast_fu_379_p1 = tmp_mid2_fu_371_p3;

assign tmp_mid2_fu_371_p3 = ((exitcond_flatten15_m_1_fu_339_p2[0:0] === 1'b1) ? hkern_1_fu_345_p2 : hkern_mid_fu_307_p3);

assign tmp_s_fu_407_p2 = (exitcond_flatten_mid_4_fu_395_p2 | exitcond_flatten15_m_1_fu_339_p2);

assign weight_V_address0 = tmp_22_cast_fu_575_p1;

assign wkern_1_fu_401_p2 = (2'd1 + wkern_mid1_fu_363_p3);

assign wkern_mid1_fu_363_p3 = ((tmp_fu_357_p2[0:0] === 1'b1) ? 2'd0 : ap_phi_mux_wkern_phi_fu_189_p4);

endmodule //weight_s_3
