cd [file normalize [file dirname [info script]]]
create_project freertos_arty_a7_35t ./freertos_arty_a7_35t -part xc7a35ticsg324-1L -force
set_msg_config -suppress -id {Synth 8-7080}
set_msg_config -suppress -id {Power 33-332}
set_msg_config -suppress -id {Pwropt 34-321}
set_msg_config -suppress -id {Synth 8-6841}
set_property simulator_language Verilog [current_project]
add_files -fileset constrs_1 -norecurse { ./freertos_arty_a7_constraints.xdc }
add_files -norecurse { ./freertos_arty_a7.v ../../../../hardware/core/rvsteel_core.v ../../../../hardware/ram/rvsteel_ram.v ../../../../hardware/soc/rvsteel_soc.v ../../../../hardware/bus/rvsteel_bus.v ../../../../hardware/uart/rvsteel_uart.v ../../../../hardware/gpio/rvsteel_gpio.v ../../../../hardware/spi/rvsteel_spi.v ../../../../hardware/mtimer/rvsteel_mtimer.v ../../software/build/freertos_demo.hex }
set_property file_type {Memory Initialization Files} [get_files ../../software/build/freertos_demo.hex]