create_clock -period 10.000 -name clock -waveform {0.000 5.000} [get_ports clock]
create_generated_clock -name clkdiv2 -source [get_pins clock_50mhz_reg/C] -divide_by 2 [get_pins clock_50mhz_reg/Q]
set_property IOSTANDARD LVCMOS33 [get_ports clock]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports sclk]
set_property IOSTANDARD LVCMOS33 [get_ports pico]
set_property IOSTANDARD LVCMOS33 [get_ports poci]
set_property IOSTANDARD LVCMOS33 [get_ports cs]
set_property PACKAGE_PIN E3 [get_ports clock]
set_property PACKAGE_PIN D9 [get_ports reset]
set_property PACKAGE_PIN D10 [get_ports uart_tx]
set_property PACKAGE_PIN A9 [get_ports uart_rx]
set_property PACKAGE_PIN L16 [get_ports sclk]
set_property PACKAGE_PIN K17 [get_ports pico]
set_property PACKAGE_PIN L13 [get_ports cs]
set_property PACKAGE_PIN K18 [get_ports poci]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]