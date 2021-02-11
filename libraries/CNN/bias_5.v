`timescale 1 ns / 1 ps

`include "layers_sizes.vh"
`include "my_types.vh"

module bias_5(
	input ap_clk,
	input ap_rst_n,
	
	output  [`coeff_width-1 : 0] output_V_din,
	input output_V_full_n,
	output output_V_write
);

wire [$clog2(`kern_s_k_5)-1 : 0] bias_address;
wire bias_ce;
wire [`coeff_width-1 : 0] bias_q;

bias_s_5 bias_s_5(
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .output_V_V_din(output_V_din),
        .output_V_V_full_n(output_V_full_n),
        .output_V_V_write(output_V_write),
        .bias_V_address0(bias_address),
        .bias_V_ce0(bias_ce),
        .bias_V_q0(bias_q)
);

rom #(
	.mem_size(`kern_s_k_5),
	.data_width(`coeff_width),
	.mem_file("./conv_5_bias.mem")
) rom_conv_0_bias(
	.addr(bias_address), 
	.ce(bias_ce), 
	.q(bias_q), 
	.clk(ap_clk)
);

endmodule