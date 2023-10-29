create_clock -period 83.33 -waveform {0 41.66} -name clock [get_ports clock]
set_property IOSTANDARD LVCMOS33 [get_ports clock]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
set_property PACKAGE_PIN L17 [get_ports clock]
set_property PACKAGE_PIN B18 [get_ports reset]
set_property PACKAGE_PIN J18 [get_ports uart_tx]
set_property PACKAGE_PIN J17 [get_ports uart_rx]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]