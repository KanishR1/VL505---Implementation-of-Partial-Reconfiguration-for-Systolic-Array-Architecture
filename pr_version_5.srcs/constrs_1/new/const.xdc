create_pblock pblock_inst
add_cells_to_pblock [get_pblocks pblock_inst] [get_cells -quiet [list design_1_i/systolic_unit_0/inst]]
resize_pblock [get_pblocks pblock_inst] -add {SLICE_X50Y0:SLICE_X113Y49}
resize_pblock [get_pblocks pblock_inst] -add {DSP48_X3Y0:DSP48_X4Y19}
resize_pblock [get_pblocks pblock_inst] -add {RAMB18_X3Y0:RAMB18_X5Y19}
resize_pblock [get_pblocks pblock_inst] -add {RAMB36_X3Y0:RAMB36_X5Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_inst]
set_property SNAPPING_MODE ON [get_pblocks pblock_inst]
set_property HD.RECONFIGURABLE true [get_cells design_1_i/systolic_unit_0/inst]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
