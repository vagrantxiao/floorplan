

create_pblock coloringFB_bot_m
resize_pblock [get_pblocks coloringFB_bot_m] -add {SLICE_X30Y125:SLICE_X56Y179}
resize_pblock [get_pblocks coloringFB_bot_m] -add {DSP48E2_X3Y44:DSP48E2_X7Y65}
resize_pblock [get_pblocks coloringFB_bot_m] -add {RAMB18_X2Y50:RAMB18_X3Y71}
resize_pblock [get_pblocks coloringFB_bot_m] -add {RAMB36_X2Y25:RAMB36_X3Y35}
set_property SNAPPING_MODE ON [get_pblocks coloringFB_bot_m]
set_property IS_SOFT TRUE [get_pblocks coloringFB_bot_m]
add_cells_to_pblock [get_pblocks coloringFB_bot_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/coloringFB_bot_m_inst]]


create_pblock coloringFB_top_m
resize_pblock [get_pblocks coloringFB_top_m] -add {SLICE_X16Y185:SLICE_X70Y239}
resize_pblock [get_pblocks coloringFB_top_m] -add {DSP48E2_X1Y68:DSP48E2_X8Y89}
resize_pblock [get_pblocks coloringFB_top_m] -add {RAMB18_X2Y74:RAMB18_X4Y95}
resize_pblock [get_pblocks coloringFB_top_m] -add {RAMB36_X2Y37:RAMB36_X4Y47}
set_property SNAPPING_MODE ON [get_pblocks coloringFB_top_m]
set_property IS_SOFT TRUE [get_pblocks coloringFB_top_m]
add_cells_to_pblock [get_pblocks coloringFB_top_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/coloringFB_top_m_inst]]


create_pblock data_redir_m
resize_pblock [get_pblocks data_redir_m] -add {SLICE_X121Y185:SLICE_X136Y239}
resize_pblock [get_pblocks data_redir_m] -add {DSP48E2_X16Y68:DSP48E2_X17Y89}
set_property SNAPPING_MODE ON [get_pblocks data_redir_m]
set_property IS_SOFT TRUE [get_pblocks data_redir_m]
add_cells_to_pblock [get_pblocks data_redir_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/data_redir_m_inst]]


create_pblock data_transfer
resize_pblock [get_pblocks data_transfer] -add {SLICE_X21Y245:SLICE_X27Y299}
resize_pblock [get_pblocks data_transfer] -add {DSP48E2_X2Y92:DSP48E2_X2Y113}
set_property SNAPPING_MODE ON [get_pblocks data_transfer]
set_property IS_SOFT TRUE [get_pblocks data_transfer]
add_cells_to_pblock [get_pblocks data_transfer] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/data_transfer_inst]]


create_pblock rasterization2_m
resize_pblock [get_pblocks rasterization2_m] -add {SLICE_X60Y125:SLICE_X86Y179}
resize_pblock [get_pblocks rasterization2_m] -add {DSP48E2_X8Y44:DSP48E2_X10Y65}
set_property SNAPPING_MODE ON [get_pblocks rasterization2_m]
set_property IS_SOFT TRUE [get_pblocks rasterization2_m]
add_cells_to_pblock [get_pblocks rasterization2_m] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/rasterization2_m_inst]]


create_pblock zculling_bot
resize_pblock [get_pblocks zculling_bot] -add {SLICE_X1Y245:SLICE_X16Y299}
resize_pblock [get_pblocks zculling_bot] -add {DSP48E2_X0Y92:DSP48E2_X1Y113}
resize_pblock [get_pblocks zculling_bot] -add {RAMB18_X0Y98:RAMB18_X1Y119}
resize_pblock [get_pblocks zculling_bot] -add {RAMB36_X0Y49:RAMB36_X1Y59}
set_property SNAPPING_MODE ON [get_pblocks zculling_bot]
set_property IS_SOFT TRUE [get_pblocks zculling_bot]
add_cells_to_pblock [get_pblocks zculling_bot] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/zculling_bot_inst]]


create_pblock zculling_top
resize_pblock [get_pblocks zculling_top] -add {SLICE_X16Y65:SLICE_X56Y119}
resize_pblock [get_pblocks zculling_top] -add {DSP48E2_X1Y20:DSP48E2_X7Y41}
resize_pblock [get_pblocks zculling_top] -add {RAMB18_X2Y26:RAMB18_X3Y47}
resize_pblock [get_pblocks zculling_top] -add {RAMB36_X2Y13:RAMB36_X3Y23}
set_property SNAPPING_MODE ON [get_pblocks zculling_top]
set_property IS_SOFT TRUE [get_pblocks zculling_top]
add_cells_to_pblock [get_pblocks zculling_top] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/zculling_top_inst]]
