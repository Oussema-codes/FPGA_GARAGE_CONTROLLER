## Basys 3 constraints for the garage door controller
## Board clock = 100 MHz

## Clock
set_property PACKAGE_PIN W5 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -add -name sys_clk -period 10.000 -waveform {0.000 5.000} [get_ports CLK]

## Reset on SW15
## The Verilog reset is active low: SW15=0 resets the FSM
set_property PACKAGE_PIN R2 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports RST]

## Activate push button on BTNC
set_property PACKAGE_PIN U18 [get_ports Activate]
set_property IOSTANDARD LVCMOS33 [get_ports Activate]

## External sensors on Pmod JA
## JA1 = upper limit sensor
set_property PACKAGE_PIN J1 [get_ports Up_Max]
set_property IOSTANDARD LVCMOS33 [get_ports Up_Max]

## JA2 = lower limit sensor
set_property PACKAGE_PIN L2 [get_ports Dn_Max]
set_property IOSTANDARD LVCMOS33 [get_ports Dn_Max]

## Outputs to the external motor/servo controller
## JA3 = move up command
set_property PACKAGE_PIN J2 [get_ports Up_M]
set_property IOSTANDARD LVCMOS33 [get_ports Up_M]

## JA4 = move down command
set_property PACKAGE_PIN G2 [get_ports Dn_M]
set_property IOSTANDARD LVCMOS33 [get_ports Dn_M]
