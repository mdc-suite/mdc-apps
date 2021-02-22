`timescale 1 ns / 1 ps

`include "layers_sizes.vh"
`include "my_types.vh"

module weight_0(
	input ap_clk,
	input ap_rst,
	
	output  [`coeff_width-1 : 0] output_V_din,
	input output_V_full_n,
	output output_V_write
);

wire [$clog2(`kern_s_0)-1 : 0] weight_address;
wire weight_ce;
wire [`coeff_width-1 : 0] weight_q;

weight_s_0 weight_s_0(
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .output_V_V_din(output_V_din),
        .output_V_V_full_n(output_V_full_n),
        .output_V_V_write(output_V_write),
        .weight_V_address0(weight_address),
        .weight_V_ce0(weight_ce),
        .weight_V_q0(weight_q)
);

rom #(
	.mem_size(`kern_s_0),
	.data_width(`coeff_width),
	.mem_file("./conv_0_weight.mem")
) rom_conv_0_weight(
	.addr(weight_address), 
	.ce(weight_ce), 
	.q(weight_q), 
	.clk(ap_clk)
);

endmodule