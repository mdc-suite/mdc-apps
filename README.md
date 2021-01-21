# MDC Applications
MDC applications ready to be used are going to be provided here, as well as supported HLS protocols and ready-to-use libraries.

In order to use one of the supported HLS engines it is necessary to put the .xml file as protocol file and the HCL folder as hardware components library in the MDC GUI. CAL actors must be compliant with the corresponding RTL descriptions. 

## HLS engines currently adopted in mdc-apps
- Vivado HLS (https://www.xilinx.com/products/design-tools/vivado/integration/esl-design.html)
  - functions corresponding to actors must have a ap_ctrl HLS INTERFACE associated to port return
  - functions corresponding to actors must have all the data ports with ap_fifo HLS INTERFACE
- CAPH (https://caph.univ-bpclermont.fr/)

# Repo hierarchy:
- libraries
	- CAPH: generic CAPH protocol library (no specific actor HDL)
	- Toy: complete library for the Toy project
	- VIVADO_HLS: generic Vivado HLS library (no specific actor HDL)
- projects
	- CNN: Inception-net for human/animal classification (no specific library)
	- Toy: simple toy applications with shifters and accumulators 
- protocols
	- CAPH
	- VIVADO_HLS

# Ready-to-use projects:
## Toy
Simple toy example to test MDC functionalities.
To use it:
- select protocols/protocol_CAPH.xml as protocol
- slect libraries/Toy as hardware component library
- 3 dataflows are present, but others can be easily derived with the available 3 actors
