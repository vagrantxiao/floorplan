

create_pblock data_transfer
resize_pblock [get_pblocks data_transfer] -add {SLICE_X1Y65:SLICE_X7Y119}
resize_pblock [get_pblocks data_transfer] -add {DSP48E2_X0Y20:DSP48E2_X0Y41}
set_property SNAPPING_MODE ON [get_pblocks data_transfer]
set_property IS_SOFT TRUE [get_pblocks data_transfer]
add_cells_to_pblock [get_pblocks data_transfer] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/data_transfer_inst]]


create_pblock rasterization2_m
resize_pblock [get_pblocks rasterization2_m] -add {SLICE_X10Y65:SLICE_X36Y119}
resize_pblock [get_pblocks rasterization2_m] -add {DSP48E2_X1Y20:DSP48E2_X4Y41}
resize_pblock [get_pblocks rasterization2_m] -add {RAMB18_X0Y26:RAMB18_X2Y47}
resize_pblock [get_pblocks rasterization2_m] -add {RAMB36_X0Y13:RAMB36_X2Y23}
set_property SNAPPING_MODE ON [get_pblocks rasterization2_m]
set_property IS_SOFT TRUE [get_pblocks rasterization2_m]
add_cells_to_pblock [get_pblocks rasterization2_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/rasterization2_m_inst]]


create_pblock data_redir_m
resize_pblock [get_pblocks data_redir_m] -add {SLICE_X39Y65:SLICE_X54Y119}
resize_pblock [get_pblocks data_redir_m] -add {DSP48E2_X5Y20:DSP48E2_X6Y41}
set_property SNAPPING_MODE ON [get_pblocks data_redir_m]
set_property IS_SOFT TRUE [get_pblocks data_redir_m]
add_cells_to_pblock [get_pblocks data_redir_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/data_redir_m_inst]]


create_pblock coloringFB_bot_m
resize_pblock [get_pblocks coloringFB_bot_m] -add {SLICE_X56Y65:SLICE_X92Y119}
resize_pblock [get_pblocks coloringFB_bot_m] -add {DSP48E2_X7Y20:DSP48E2_X11Y41}
resize_pblock [get_pblocks coloringFB_bot_m] -add {RAMB18_X4Y26:RAMB18_X5Y47}
resize_pblock [get_pblocks coloringFB_bot_m] -add {RAMB36_X4Y13:RAMB36_X5Y23}
set_property SNAPPING_MODE ON [get_pblocks coloringFB_bot_m]
set_property IS_SOFT TRUE [get_pblocks coloringFB_bot_m]
add_cells_to_pblock [get_pblocks coloringFB_bot_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/coloringFB_bot_m_inst]]


create_pblock coloringFB_top_m
resize_pblock [get_pblocks coloringFB_top_m] -add {SLICE_X118Y65:SLICE_X170Y119}
resize_pblock [get_pblocks coloringFB_top_m] -add {SLICE_X117Y65:SLICE_X117Y119}
resize_pblock [get_pblocks coloringFB_top_m] -add {DSP48E2_X16Y20:DSP48E2_X23Y41}
resize_pblock [get_pblocks coloringFB_top_m] -add {RAMB18_X8Y26:RAMB18_X10Y47}
resize_pblock [get_pblocks coloringFB_top_m] -add {RAMB36_X8Y13:RAMB36_X10Y23}
set_property SNAPPING_MODE ON [get_pblocks coloringFB_top_m]
set_property IS_SOFT TRUE [get_pblocks coloringFB_top_m]
add_cells_to_pblock [get_pblocks coloringFB_top_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/coloringFB_top_m_inst]]


create_pblock zculling_bot
resize_pblock [get_pblocks zculling_bot] -add {SLICE_X1Y125:SLICE_X16Y179}
resize_pblock [get_pblocks zculling_bot] -add {DSP48E2_X0Y44:DSP48E2_X1Y65}
resize_pblock [get_pblocks zculling_bot] -add {RAMB18_X0Y50:RAMB18_X1Y71}
resize_pblock [get_pblocks zculling_bot] -add {RAMB36_X0Y25:RAMB36_X1Y35}
set_property SNAPPING_MODE ON [get_pblocks zculling_bot]
set_property IS_SOFT TRUE [get_pblocks zculling_bot]
add_cells_to_pblock [get_pblocks zculling_bot] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/zculling_bot_inst]]


create_pblock zculling_top
resize_pblock [get_pblocks zculling_top] -add {SLICE_X19Y125:SLICE_X56Y179}
resize_pblock [get_pblocks zculling_top] -add {DSP48E2_X2Y44:DSP48E2_X7Y65}
resize_pblock [get_pblocks zculling_top] -add {RAMB18_X2Y50:RAMB18_X3Y71}
resize_pblock [get_pblocks zculling_top] -add {RAMB36_X2Y25:RAMB36_X3Y35}
set_property SNAPPING_MODE ON [get_pblocks zculling_top]
set_property IS_SOFT TRUE [get_pblocks zculling_top]
add_cells_to_pblock [get_pblocks zculling_top] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/zculling_top_inst]]
