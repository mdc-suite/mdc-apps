# mdc-apps
MDC applications ready to be used are going to be provided here, as well as supported HLS protocols and ready-to-use libraries.

In order to use one of the supported HLS engines it is necessary to put the .xml file as protocol file and the HCL folder as hardware components library in the MDC GUI. CAL actors must be compliant with the corresponding RTL descriptions. 

## Supported HLS engines
- Vivado HLS (https://www.xilinx.com/products/design-tools/vivado/integration/esl-design.html)
  - functions corresponding to actors must have a ap_ctrl HLS INTERFACE associated to port return
  - functions corresponding to actors must have all the data ports with ap_fifo HLS INTERFACE
- CAPH (https://caph.univ-bpclermont.fr/)

# Repo hierarchy:
- libraries
	- CAPH
	- VIVADO_HLS
- projects
- protocols
	- CAPH
	- VIVADO_HLS


