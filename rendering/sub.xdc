

create_pblock coloringFB_bot_m
resize_pblock [get_pblocks coloringFB_bot_m] -add {SLICE_X10Y125:SLICE_X25Y179}
resize_pblock [get_pblocks coloringFB_bot_m] -add {DSP48E2_X1Y44:DSP48E2_X4Y65}
resize_pblock [get_pblocks coloringFB_bot_m] -add {RAMB18_X2Y50:RAMB18_X3Y71}
resize_pblock [get_pblocks coloringFB_bot_m] -add {RAMB36_X2Y25:RAMB36_X3Y35}
set_property SNAPPING_MODE ON [get_pblocks coloringFB_bot_m]
set_property IS_SOFT TRUE [get_pblocks coloringFB_bot_m]
add_cells_to_pblock [get_pblocks coloringFB_bot_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/coloringFB_bot_m_inst]]


create_pblock coloringFB_top_m
resize_pblock [get_pblocks coloringFB_top_m] -add {SLICE_X1Y305:SLICE_X54Y359}
resize_pblock [get_pblocks coloringFB_top_m] -add {DSP48E2_X0Y116:DSP48E2_X10Y137}
resize_pblock [get_pblocks coloringFB_top_m] -add {RAMB18_X0Y122:RAMB18_X6Y143}
resize_pblock [get_pblocks coloringFB_top_m] -add {RAMB36_X0Y61:RAMB36_X6Y71}
set_property SNAPPING_MODE ON [get_pblocks coloringFB_top_m]
set_property IS_SOFT TRUE [get_pblocks coloringFB_top_m]
add_cells_to_pblock [get_pblocks coloringFB_top_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/coloringFB_top_m_inst]]


create_pblock data_redir_m
resize_pblock [get_pblocks data_redir_m] -add {SLICE_X56Y185:SLICE_X71Y239}
resize_pblock [get_pblocks data_redir_m] -add {DSP48E2_X12Y68:DSP48E2_X13Y89}
resize_pblock [get_pblocks data_redir_m] -add {RAMB18_X7Y74:RAMB18_X8Y95}
resize_pblock [get_pblocks data_redir_m] -add {RAMB36_X7Y37:RAMB36_X8Y47}
set_property SNAPPING_MODE ON [get_pblocks data_redir_m]
set_property IS_SOFT TRUE [get_pblocks data_redir_m]
add_cells_to_pblock [get_pblocks data_redir_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/data_redir_m_inst]]


create_pblock data_transfer
resize_pblock [get_pblocks data_transfer] -add {SLICE_X88Y65:SLICE_X94Y119}
resize_pblock [get_pblocks data_transfer] -add {DSP48E2_X17Y20:DSP48E2_X17Y41}
set_property SNAPPING_MODE ON [get_pblocks data_transfer]
set_property IS_SOFT TRUE [get_pblocks data_transfer]
add_cells_to_pblock [get_pblocks data_transfer] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/data_transfer_inst]]


create_pblock rasterization2_m
resize_pblock [get_pblocks rasterization2_m] -add {SLICE_X1Y425:SLICE_X27Y479}
resize_pblock [get_pblocks rasterization2_m] -add {DSP48E2_X0Y164:DSP48E2_X4Y185}
resize_pblock [get_pblocks rasterization2_m] -add {RAMB18_X0Y170:RAMB18_X3Y191}
resize_pblock [get_pblocks rasterization2_m] -add {RAMB36_X0Y85:RAMB36_X3Y95}
set_property SNAPPING_MODE ON [get_pblocks rasterization2_m]
set_property IS_SOFT TRUE [get_pblocks rasterization2_m]
add_cells_to_pblock [get_pblocks rasterization2_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/rasterization2_m_inst]]


create_pblock zculling_bot
resize_pblock [get_pblocks zculling_bot] -add {SLICE_X67Y305:SLICE_X83Y359}
resize_pblock [get_pblocks zculling_bot] -add {DSP48E2_X13Y116:DSP48E2_X15Y137}
resize_pblock [get_pblocks zculling_bot] -add {RAMB18_X9Y122:RAMB18_X10Y143}
resize_pblock [get_pblocks zculling_bot] -add {RAMB36_X9Y61:RAMB36_X10Y71}
set_property SNAPPING_MODE ON [get_pblocks zculling_bot]
set_property IS_SOFT TRUE [get_pblocks zculling_bot]
add_cells_to_pblock [get_pblocks zculling_bot] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/zculling_bot_inst]]


create_pblock zculling_top
resize_pblock [get_pblocks zculling_top] -add {SLICE_X81Y125:SLICE_X90Y179}
resize_pblock [get_pblocks zculling_top] -add {DSP48E2_X16Y44:DSP48E2_X17Y65}
resize_pblock [get_pblocks zculling_top] -add {RAMB18_X10Y50:RAMB18_X11Y71}
resize_pblock [get_pblocks zculling_top] -add {RAMB36_X10Y25:RAMB36_X11Y35}
set_property SNAPPING_MODE ON [get_pblocks zculling_top]
set_property IS_SOFT TRUE [get_pblocks zculling_top]
add_cells_to_pblock [get_pblocks zculling_top] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/zculling_top_inst]]
