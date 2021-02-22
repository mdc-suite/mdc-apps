`timescale 1 ns / 1 ps

`include "layers_sizes.vh"
`include "my_types.vh"

module bias_4(
	input ap_clk,
	input ap_rst,
	
	output  [`coeff_width-1 : 0] output_V_din,
	input output_V_full_n,
	output output_V_write
);

wire [$clog2(`kern_s_k_4)-1 : 0] bias_address;
wire bias_ce;
wire [`coeff_width-1 : 0] bias_q;

bias_s_4 bias_s_4(
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .output_V_V_din(output_V_din),
        .output_V_V_full_n(output_V_full_n),
        .output_V_V_write(output_V_write),
        .bias_V_address0(bias_address),
        .bias_V_ce0(bias_ce),
        .bias_V_q0(bias_q)
);

rom #(
	.mem_size(`kern_s_k_4),
	.data_width(`coeff_width),
	.mem_file("./conv_4_bias.mem")
) rom_conv_0_bias(
	.addr(bias_address), 
	.ce(bias_ce), 
	.q(bias_q), 
	.clk(ap_clk)
);

endmodule