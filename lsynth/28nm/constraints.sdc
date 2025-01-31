## Define variables
set sdc_version 2.0
set_units -capacitance pF -time ns

# Create timing constraints for combinational logic
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols0_0.mac0/op1] -to [get_pins hpin_bus:convolution/cols0_0.mac0/res_mac]
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols0_0.mac0/op2] -to [get_pins hpin_bus:convolution/cols0_0.mac0/res_mac]

set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols0_1.mac0/op1] -to [get_pins hpin_bus:convolution/cols0_1.mac0/res_mac]
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols0_1.mac0/op2] -to [get_pins hpin_bus:convolution/cols0_1.mac0/res_mac]

set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols0_2.mac0/op1] -to [get_pins hpin_bus:convolution/cols0_2.mac0/res_mac]
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols0_2.mac0/op2] -to [get_pins hpin_bus:convolution/cols0_2.mac0/res_mac]

set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_1.rows_0.mac12/op1] -to [get_pins hpin_bus:convolution/cols12_1.rows_0.mac12/res_mac] 
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_1.rows_0.mac12/op2] -to [get_pins hpin_bus:convolution/cols12_1.rows_0.mac12/res_mac]

set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_1.rows_1.mac12/op1] -to [get_pins hpin_bus:convolution/cols12_1.rows_1.mac12/res_mac] 
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_1.rows_1.mac12/op2] -to [get_pins hpin_bus:convolution/cols12_1.rows_1.mac12/res_mac] 

set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_1.rows_2.mac12/op1] -to [get_pins hpin_bus:convolution/cols12_1.rows_2.mac12/res_mac] 
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_1.rows_2.mac12/op2] -to [get_pins hpin_bus:convolution/cols12_1.rows_2.mac12/res_mac] 

set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_2.rows_0.mac12/op1] -to [get_pins hpin_bus:convolution/cols12_2.rows_0.mac12/res_mac] 
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_2.rows_0.mac12/op2] -to [get_pins hpin_bus:convolution/cols12_2.rows_0.mac12/res_mac]

set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_2.rows_1.mac12/op1] -to [get_pins hpin_bus:convolution/cols12_2.rows_1.mac12/res_mac] 
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_2.rows_1.mac12/op2] -to [get_pins hpin_bus:convolution/cols12_2.rows_1.mac12/res_mac] 

set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_2.rows_2.mac12/op1] -to [get_pins hpin_bus:convolution/cols12_2.rows_2.mac12/res_mac] 
set_multicycle_path 4 -from [get_pins hpin_bus:convolution/cols12_2.rows_2.mac12/op2] -to [get_pins hpin_bus:convolution/cols12_2.rows_2.mac12/res_mac] 

# Input delay      
set_input_delay -clock clock 0.03 start_conv        
set_input_delay -clock clock 0.03 inmem_valid          
set_input_delay -clock clock 0.03 inmem_value
set_input_delay -clock clock 0.03 ofmap_valid
set_input_delay -clock clock 0.03 pixel_in
          
# Output delay
set_output_delay -clock clock 0.03 [all_outputs]

# Ignore timing for reset signal
set_ideal_network [get_ports reset]

# Output pins should support to drive a load of an inverter
set_load 0.000570 [all_outputs]
