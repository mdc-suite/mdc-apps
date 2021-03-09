// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="weight_s_21,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.119000,HLS_SYN_LAT=200706,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=92,HLS_SYN_LUT=631}" *)

module weight_s_21 (
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
output  [11:0] weight_V_address0;
output   weight_V_ce0;
input  [7:0] weight_V_q0;

reg output_V_V_write;
reg weight_V_ce0;

reg    output_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten3_reg_476;
reg   [17:0] indvar_flatten1_reg_112;
reg   [15:0] indvar_flatten2_reg_123;
reg   [13:0] indvar_flatten3_reg_134;
reg   [0:0] wkern_reg_145;
reg   [13:0] indvar_flatten_reg_156;
reg   [8:0] pkern_reg_167;
reg   [4:0] pout_reg_178;
wire   [0:0] exitcond_flatten3_fu_189_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [17:0] indvar_flatten_next3_fu_195_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] wkern_mid2_fu_353_p3;
wire   [8:0] tmp_4_mid2_fu_387_p3;
reg   [8:0] tmp_4_mid2_reg_490;
wire   [4:0] pout_1_fu_428_p2;
wire   [13:0] indvar_flatten_next_fu_440_p3;
wire   [13:0] indvar_flatten_next1_fu_454_p3;
wire   [15:0] indvar_flatten_next2_fu_468_p3;
wire    ap_CS_fsm_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [8:0] ap_phi_mux_pkern_phi_fu_171_p4;
wire   [63:0] tmp_11_cast_fu_423_p1;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] exitcond_flatten_fu_201_p2;
wire   [0:0] not_exitcond_flatten_fu_207_p2;
wire   [0:0] exitcond_fu_219_p2;
wire   [0:0] exitcond_flatten1_fu_231_p2;
wire   [0:0] exitcond_flatten2_fu_243_p2;
wire   [0:0] exitcond_flatten15_n_fu_255_p2;
wire   [0:0] wkern_mid_fu_213_p2;
wire   [0:0] not_exitcond_flatten_1_fu_261_p2;
wire   [0:0] exitcond_flatten15_m_fu_249_p2;
wire   [0:0] tmp_1_fu_273_p2;
wire   [0:0] not_tmp_1_fu_279_p2;
wire   [0:0] exitcond_mid_fu_225_p2;
wire   [0:0] exitcond_flatten_mid_fu_237_p2;
wire   [0:0] wkern_mid1_fu_267_p2;
wire   [0:0] exitcond_flatten_mid_2_fu_297_p2;
wire   [0:0] tmp_5_fu_309_p2;
wire   [0:0] tmp_2_fu_315_p2;
wire   [0:0] wkern_1_fu_303_p2;
wire   [0:0] tmp_2_mid_fu_285_p2;
wire   [0:0] tmp_2_mid2_fu_329_p3;
wire   [0:0] exitcond_mid1_fu_291_p2;
wire   [0:0] not_exitcond_flatten_2_fu_341_p2;
wire   [8:0] pkern_mid1_fu_321_p3;
wire   [0:0] exitcond_mid2_fu_347_p2;
wire   [0:0] tmp_7_fu_367_p2;
wire   [0:0] tmp_3_fu_373_p2;
wire   [8:0] pkern_1_fu_361_p2;
wire   [4:0] pout_mid2_fu_379_p3;
wire   [12:0] tmp_8_fu_399_p3;
wire   [13:0] tmp_4_mid2_cast_fu_395_p1;
wire   [13:0] tmp_9_cast_fu_407_p1;
wire   [13:0] tmp_2_mid2_cast_fu_337_p1;
wire   [13:0] tmp_s_fu_411_p2;
wire   [13:0] tmp_4_fu_417_p2;
wire   [13:0] indvar_flatten_op_fu_434_p2;
wire   [13:0] indvar_flatten13_op_fu_448_p2;
wire   [15:0] indvar_flatten37_op_fu_462_p2;
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1_reg_112 <= indvar_flatten_next3_fu_195_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten1_reg_112 <= 18'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_reg_123 <= indvar_flatten_next2_fu_468_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten2_reg_123 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten3_reg_134 <= indvar_flatten_next1_fu_454_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten3_reg_134 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_156 <= indvar_flatten_next_fu_440_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        indvar_flatten_reg_156 <= 14'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_reg_476 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pkern_reg_167 <= tmp_4_mid2_reg_490;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        pkern_reg_167 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pout_reg_178 <= pout_1_fu_428_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        pout_reg_178 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        wkern_reg_145 <= wkern_mid2_fu_353_p3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        wkern_reg_145 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten3_reg_476 <= exitcond_flatten3_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_fu_189_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_4_mid2_reg_490 <= tmp_4_mid2_fu_387_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten3_fu_189_p2 == 1'd1)) begin
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
    if (((exitcond_flatten3_reg_476 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_pkern_phi_fu_171_p4 = tmp_4_mid2_reg_490;
    end else begin
        ap_phi_mux_pkern_phi_fu_171_p4 = pkern_reg_167;
    end
end

always @ (*) begin
    if (((exitcond_flatten3_reg_476 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_V_V_blk_n = output_V_V_full_n;
    end else begin
        output_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten3_reg_476 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_flatten3_fu_189_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_flatten3_fu_189_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
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
    ap_block_pp0_stage0_01001 = ((exitcond_flatten3_reg_476 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_flatten3_reg_476 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_flatten3_reg_476 == 1'd0) & (output_V_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond_flatten3_reg_476 == 1'd0) & (output_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond_flatten15_m_fu_249_p2 = (not_exitcond_flatten_fu_207_p2 & exitcond_flatten2_fu_243_p2);

assign exitcond_flatten15_n_fu_255_p2 = (exitcond_flatten2_fu_243_p2 ^ 1'd1);

assign exitcond_flatten1_fu_231_p2 = ((indvar_flatten_reg_156 == 14'd4096) ? 1'b1 : 1'b0);

assign exitcond_flatten2_fu_243_p2 = ((indvar_flatten3_reg_134 == 14'd4096) ? 1'b1 : 1'b0);

assign exitcond_flatten3_fu_189_p2 = ((indvar_flatten1_reg_112 == 18'd200704) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_201_p2 = ((indvar_flatten2_reg_123 == 16'd28672) ? 1'b1 : 1'b0);

assign exitcond_flatten_mid_2_fu_297_p2 = (not_exitcond_flatten_1_fu_261_p2 & exitcond_flatten_mid_fu_237_p2);

assign exitcond_flatten_mid_fu_237_p2 = (not_exitcond_flatten_fu_207_p2 & exitcond_flatten1_fu_231_p2);

assign exitcond_fu_219_p2 = ((pout_reg_178 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_mid1_fu_291_p2 = (not_exitcond_flatten_1_fu_261_p2 & exitcond_mid_fu_225_p2);

assign exitcond_mid2_fu_347_p2 = (not_exitcond_flatten_2_fu_341_p2 & exitcond_mid1_fu_291_p2);

assign exitcond_mid_fu_225_p2 = (not_exitcond_flatten_fu_207_p2 & exitcond_fu_219_p2);

assign indvar_flatten13_op_fu_448_p2 = (indvar_flatten3_reg_134 + 14'd1);

assign indvar_flatten37_op_fu_462_p2 = (indvar_flatten2_reg_123 + 16'd1);

assign indvar_flatten_next1_fu_454_p3 = ((tmp_1_fu_273_p2[0:0] === 1'b1) ? 14'd1 : indvar_flatten13_op_fu_448_p2);

assign indvar_flatten_next2_fu_468_p3 = ((exitcond_flatten_fu_201_p2[0:0] === 1'b1) ? 16'd1 : indvar_flatten37_op_fu_462_p2);

assign indvar_flatten_next3_fu_195_p2 = (indvar_flatten1_reg_112 + 18'd1);

assign indvar_flatten_next_fu_440_p3 = ((tmp_2_fu_315_p2[0:0] === 1'b1) ? 14'd1 : indvar_flatten_op_fu_434_p2);

assign indvar_flatten_op_fu_434_p2 = (indvar_flatten_reg_156 + 14'd1);

assign not_exitcond_flatten_1_fu_261_p2 = (exitcond_flatten_fu_201_p2 | exitcond_flatten15_n_fu_255_p2);

assign not_exitcond_flatten_2_fu_341_p2 = (exitcond_flatten_mid_2_fu_297_p2 ^ 1'd1);

assign not_exitcond_flatten_fu_207_p2 = (exitcond_flatten_fu_201_p2 ^ 1'd1);

assign not_tmp_1_fu_279_p2 = (tmp_1_fu_273_p2 ^ 1'd1);

assign output_V_V_din = weight_V_q0;

assign pkern_1_fu_361_p2 = (pkern_mid1_fu_321_p3 + 9'd1);

assign pkern_mid1_fu_321_p3 = ((tmp_2_fu_315_p2[0:0] === 1'b1) ? 9'd0 : ap_phi_mux_pkern_phi_fu_171_p4);

assign pout_1_fu_428_p2 = (pout_mid2_fu_379_p3 + 5'd1);

assign pout_mid2_fu_379_p3 = ((tmp_3_fu_373_p2[0:0] === 1'b1) ? 5'd0 : pout_reg_178);

assign tmp_11_cast_fu_423_p1 = tmp_4_fu_417_p2;

assign tmp_1_fu_273_p2 = (exitcond_flatten_fu_201_p2 | exitcond_flatten15_m_fu_249_p2);

assign tmp_2_fu_315_p2 = (tmp_5_fu_309_p2 | exitcond_flatten_fu_201_p2);

assign tmp_2_mid2_cast_fu_337_p1 = tmp_2_mid2_fu_329_p3;

assign tmp_2_mid2_fu_329_p3 = ((exitcond_flatten_mid_2_fu_297_p2[0:0] === 1'b1) ? wkern_1_fu_303_p2 : tmp_2_mid_fu_285_p2);

assign tmp_2_mid_fu_285_p2 = (wkern_reg_145 & not_tmp_1_fu_279_p2);

assign tmp_3_fu_373_p2 = (tmp_7_fu_367_p2 | tmp_1_fu_273_p2);

assign tmp_4_fu_417_p2 = (tmp_2_mid2_cast_fu_337_p1 + tmp_s_fu_411_p2);

assign tmp_4_mid2_cast_fu_395_p1 = tmp_4_mid2_fu_387_p3;

assign tmp_4_mid2_fu_387_p3 = ((exitcond_mid2_fu_347_p2[0:0] === 1'b1) ? pkern_1_fu_361_p2 : pkern_mid1_fu_321_p3);

assign tmp_5_fu_309_p2 = (exitcond_flatten_mid_2_fu_297_p2 | exitcond_flatten15_m_fu_249_p2);

assign tmp_7_fu_367_p2 = (exitcond_mid2_fu_347_p2 | exitcond_flatten_mid_2_fu_297_p2);

assign tmp_8_fu_399_p3 = {{pout_mid2_fu_379_p3}, {8'd0}};

assign tmp_9_cast_fu_407_p1 = tmp_8_fu_399_p3;

assign tmp_s_fu_411_p2 = (tmp_4_mid2_cast_fu_395_p1 + tmp_9_cast_fu_407_p1);

assign weight_V_address0 = tmp_11_cast_fu_423_p1;

assign wkern_1_fu_303_p2 = (wkern_mid1_fu_267_p2 ^ 1'd1);

assign wkern_mid1_fu_267_p2 = (wkern_mid_fu_213_p2 & not_exitcond_flatten_1_fu_261_p2);

assign wkern_mid2_fu_353_p3 = ((exitcond_flatten_mid_2_fu_297_p2[0:0] === 1'b1) ? wkern_1_fu_303_p2 : wkern_mid1_fu_267_p2);

assign wkern_mid_fu_213_p2 = (wkern_reg_145 & not_exitcond_flatten_fu_207_p2);

endmodule //weight_s_21
