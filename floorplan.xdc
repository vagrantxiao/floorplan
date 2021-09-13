

create_pblock update_knn3
resize_pblock [get_pblocks update_knn3] -add {SLICE_X1Y65:SLICE_X20Y119}
resize_pblock [get_pblocks update_knn3] -add {DSP48E2_X0Y20:DSP48E2_X1Y41}
resize_pblock [get_pblocks update_knn3] -add {RAMB18_X0Y26:RAMB18_X1Y47}
resize_pblock [get_pblocks update_knn3] -add {RAMB36_X0Y13:RAMB36_X1Y23}
set_property SNAPPING_MODE ON [get_pblocks update_knn3]
set_property IS_SOFT TRUE [get_pblocks update_knn3]
add_cells_to_pblock [get_pblocks update_knn3] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn3_inst]]


create_pblock update_knn8
resize_pblock [get_pblocks update_knn8] -add {SLICE_X23Y65:SLICE_X41Y119}
resize_pblock [get_pblocks update_knn8] -add {DSP48E2_X2Y20:DSP48E2_X4Y41}
resize_pblock [get_pblocks update_knn8] -add {RAMB18_X2Y26:RAMB18_X2Y47}
resize_pblock [get_pblocks update_knn8] -add {RAMB36_X2Y13:RAMB36_X2Y23}
set_property SNAPPING_MODE ON [get_pblocks update_knn8]
set_property IS_SOFT TRUE [get_pblocks update_knn8]
add_cells_to_pblock [get_pblocks update_knn8] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn8_inst]]


create_pblock update_knn2
resize_pblock [get_pblocks update_knn2] -add {SLICE_X44Y65:SLICE_X62Y119}
resize_pblock [get_pblocks update_knn2] -add {DSP48E2_X6Y20:DSP48E2_X8Y41}
resize_pblock [get_pblocks update_knn2] -add {RAMB18_X3Y26:RAMB18_X4Y47}
resize_pblock [get_pblocks update_knn2] -add {RAMB36_X3Y13:RAMB36_X4Y23}
set_property SNAPPING_MODE ON [get_pblocks update_knn2]
set_property IS_SOFT TRUE [get_pblocks update_knn2]
add_cells_to_pblock [get_pblocks update_knn2] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn2_inst]]


create_pblock update_knn16
resize_pblock [get_pblocks update_knn16] -add {SLICE_X65Y65:SLICE_X90Y119}
resize_pblock [get_pblocks update_knn16] -add {DSP48E2_X9Y20:DSP48E2_X11Y41}
resize_pblock [get_pblocks update_knn16] -add {RAMB18_X5Y26:RAMB18_X5Y47}
resize_pblock [get_pblocks update_knn16] -add {RAMB36_X5Y13:RAMB36_X5Y23}
set_property SNAPPING_MODE ON [get_pblocks update_knn16]
set_property IS_SOFT TRUE [get_pblocks update_knn16]
add_cells_to_pblock [get_pblocks update_knn16] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn16_inst]]


create_pblock update_knn6
resize_pblock [get_pblocks update_knn6] -add {SLICE_X93Y65:SLICE_X112Y119}
resize_pblock [get_pblocks update_knn6] -add {DSP48E2_X12Y20:DSP48E2_X14Y41}
resize_pblock [get_pblocks update_knn6] -add {RAMB18_X6Y26:RAMB18_X6Y47}
resize_pblock [get_pblocks update_knn6] -add {RAMB36_X6Y13:RAMB36_X6Y23}
set_property SNAPPING_MODE ON [get_pblocks update_knn6]
set_property IS_SOFT TRUE [get_pblocks update_knn6]
add_cells_to_pblock [get_pblocks update_knn6] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn6_inst]]


create_pblock update_knn20
resize_pblock [get_pblocks update_knn20] -add {SLICE_X118Y65:SLICE_X147Y119}
resize_pblock [get_pblocks update_knn20] -add {SLICE_X117Y65:SLICE_X117Y119}
resize_pblock [get_pblocks update_knn20] -add {DSP48E2_X16Y20:DSP48E2_X19Y41}
resize_pblock [get_pblocks update_knn20] -add {RAMB18_X8Y26:RAMB18_X9Y47}
resize_pblock [get_pblocks update_knn20] -add {RAMB36_X8Y13:RAMB36_X9Y23}
set_property SNAPPING_MODE ON [get_pblocks update_knn20]
set_property IS_SOFT TRUE [get_pblocks update_knn20]
add_cells_to_pblock [get_pblocks update_knn20] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn20_inst]]


create_pblock update_knn18
resize_pblock [get_pblocks update_knn18] -add {SLICE_X149Y65:SLICE_X178Y119}
resize_pblock [get_pblocks update_knn18] -add {DSP48E2_X20Y20:DSP48E2_X24Y41}
resize_pblock [get_pblocks update_knn18] -add {RAMB18_X11Y26:RAMB18_X11Y47}
resize_pblock [get_pblocks update_knn18] -add {RAMB36_X11Y13:RAMB36_X11Y23}
set_property SNAPPING_MODE ON [get_pblocks update_knn18]
set_property IS_SOFT TRUE [get_pblocks update_knn18]
add_cells_to_pblock [get_pblocks update_knn18] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn18_inst]]


create_pblock update_knn1
resize_pblock [get_pblocks update_knn1] -add {SLICE_X1Y125:SLICE_X18Y179}
resize_pblock [get_pblocks update_knn1] -add {DSP48E2_X0Y44:DSP48E2_X1Y65}
resize_pblock [get_pblocks update_knn1] -add {RAMB18_X0Y50:RAMB18_X1Y71}
resize_pblock [get_pblocks update_knn1] -add {RAMB36_X0Y25:RAMB36_X1Y35}
set_property SNAPPING_MODE ON [get_pblocks update_knn1]
set_property IS_SOFT TRUE [get_pblocks update_knn1]
add_cells_to_pblock [get_pblocks update_knn1] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn1_inst]]


create_pblock update_knn11
resize_pblock [get_pblocks update_knn11] -add {SLICE_X21Y125:SLICE_X39Y179}
resize_pblock [get_pblocks update_knn11] -add {DSP48E2_X2Y44:DSP48E2_X4Y65}
resize_pblock [get_pblocks update_knn11] -add {RAMB18_X2Y50:RAMB18_X2Y71}
resize_pblock [get_pblocks update_knn11] -add {RAMB36_X2Y25:RAMB36_X2Y35}
set_property SNAPPING_MODE ON [get_pblocks update_knn11]
set_property IS_SOFT TRUE [get_pblocks update_knn11]
add_cells_to_pblock [get_pblocks update_knn11] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn11_inst]]


create_pblock update_knn9
resize_pblock [get_pblocks update_knn9] -add {SLICE_X42Y125:SLICE_X62Y179}
resize_pblock [get_pblocks update_knn9] -add {DSP48E2_X5Y44:DSP48E2_X8Y65}
resize_pblock [get_pblocks update_knn9] -add {RAMB18_X3Y50:RAMB18_X4Y71}
resize_pblock [get_pblocks update_knn9] -add {RAMB36_X3Y25:RAMB36_X4Y35}
set_property SNAPPING_MODE ON [get_pblocks update_knn9]
set_property IS_SOFT TRUE [get_pblocks update_knn9]
add_cells_to_pblock [get_pblocks update_knn9] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn9_inst]]


create_pblock update_knn12
resize_pblock [get_pblocks update_knn12] -add {SLICE_X65Y125:SLICE_X90Y179}
resize_pblock [get_pblocks update_knn12] -add {DSP48E2_X9Y44:DSP48E2_X11Y65}
resize_pblock [get_pblocks update_knn12] -add {RAMB18_X5Y50:RAMB18_X5Y71}
resize_pblock [get_pblocks update_knn12] -add {RAMB36_X5Y25:RAMB36_X5Y35}
set_property SNAPPING_MODE ON [get_pblocks update_knn12]
set_property IS_SOFT TRUE [get_pblocks update_knn12]
add_cells_to_pblock [get_pblocks update_knn12] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn12_inst]]


create_pblock update_knn17
resize_pblock [get_pblocks update_knn17] -add {SLICE_X93Y125:SLICE_X112Y179}
resize_pblock [get_pblocks update_knn17] -add {DSP48E2_X12Y44:DSP48E2_X14Y65}
resize_pblock [get_pblocks update_knn17] -add {RAMB18_X6Y50:RAMB18_X6Y71}
resize_pblock [get_pblocks update_knn17] -add {RAMB36_X6Y25:RAMB36_X6Y35}
set_property SNAPPING_MODE ON [get_pblocks update_knn17]
set_property IS_SOFT TRUE [get_pblocks update_knn17]
add_cells_to_pblock [get_pblocks update_knn17] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn17_inst]]


create_pblock update_knn13
resize_pblock [get_pblocks update_knn13] -add {SLICE_X118Y125:SLICE_X136Y179}
resize_pblock [get_pblocks update_knn13] -add {SLICE_X114Y125:SLICE_X117Y179}
resize_pblock [get_pblocks update_knn13] -add {DSP48E2_X16Y44:DSP48E2_X17Y65}
resize_pblock [get_pblocks update_knn13] -add {DSP48E2_X15Y44:DSP48E2_X15Y65}
resize_pblock [get_pblocks update_knn13] -add {RAMB18_X8Y50:RAMB18_X8Y71}
resize_pblock [get_pblocks update_knn13] -add {RAMB36_X8Y25:RAMB36_X8Y35}
set_property SNAPPING_MODE ON [get_pblocks update_knn13]
set_property IS_SOFT TRUE [get_pblocks update_knn13]
add_cells_to_pblock [get_pblocks update_knn13] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn13_inst]]


create_pblock update_knn15
resize_pblock [get_pblocks update_knn15] -add {SLICE_X139Y125:SLICE_X158Y179}
resize_pblock [get_pblocks update_knn15] -add {DSP48E2_X18Y44:DSP48E2_X21Y65}
resize_pblock [get_pblocks update_knn15] -add {RAMB18_X9Y50:RAMB18_X10Y71}
resize_pblock [get_pblocks update_knn15] -add {RAMB36_X9Y25:RAMB36_X10Y35}
set_property SNAPPING_MODE ON [get_pblocks update_knn15]
set_property IS_SOFT TRUE [get_pblocks update_knn15]
add_cells_to_pblock [get_pblocks update_knn15] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn15_inst]]


create_pblock update_knn19
resize_pblock [get_pblocks update_knn19] -add {SLICE_X161Y125:SLICE_X179Y179}
resize_pblock [get_pblocks update_knn19] -add {DSP48E2_X22Y44:DSP48E2_X25Y65}
resize_pblock [get_pblocks update_knn19] -add {RAMB18_X11Y50:RAMB18_X11Y71}
resize_pblock [get_pblocks update_knn19] -add {RAMB36_X11Y25:RAMB36_X11Y35}
set_property SNAPPING_MODE ON [get_pblocks update_knn19]
set_property IS_SOFT TRUE [get_pblocks update_knn19]
add_cells_to_pblock [get_pblocks update_knn19] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn19_inst]]


create_pblock update_knn10
resize_pblock [get_pblocks update_knn10] -add {SLICE_X1Y185:SLICE_X20Y239}
resize_pblock [get_pblocks update_knn10] -add {DSP48E2_X0Y68:DSP48E2_X1Y89}
resize_pblock [get_pblocks update_knn10] -add {RAMB18_X0Y74:RAMB18_X1Y95}
resize_pblock [get_pblocks update_knn10] -add {RAMB36_X0Y37:RAMB36_X1Y47}
set_property SNAPPING_MODE ON [get_pblocks update_knn10]
set_property IS_SOFT TRUE [get_pblocks update_knn10]
add_cells_to_pblock [get_pblocks update_knn10] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn10_inst]]


create_pblock update_knn7
resize_pblock [get_pblocks update_knn7] -add {SLICE_X23Y185:SLICE_X41Y239}
resize_pblock [get_pblocks update_knn7] -add {DSP48E2_X2Y68:DSP48E2_X4Y89}
resize_pblock [get_pblocks update_knn7] -add {RAMB18_X2Y74:RAMB18_X2Y95}
resize_pblock [get_pblocks update_knn7] -add {RAMB36_X2Y37:RAMB36_X2Y47}
set_property SNAPPING_MODE ON [get_pblocks update_knn7]
set_property IS_SOFT TRUE [get_pblocks update_knn7]
add_cells_to_pblock [get_pblocks update_knn7] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn7_inst]]


create_pblock update_knn4
resize_pblock [get_pblocks update_knn4] -add {SLICE_X44Y185:SLICE_X62Y239}
resize_pblock [get_pblocks update_knn4] -add {DSP48E2_X6Y68:DSP48E2_X8Y89}
resize_pblock [get_pblocks update_knn4] -add {RAMB18_X3Y74:RAMB18_X4Y95}
resize_pblock [get_pblocks update_knn4] -add {RAMB36_X3Y37:RAMB36_X4Y47}
set_property SNAPPING_MODE ON [get_pblocks update_knn4]
set_property IS_SOFT TRUE [get_pblocks update_knn4]
add_cells_to_pblock [get_pblocks update_knn4] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn4_inst]]


create_pblock update_knn14
resize_pblock [get_pblocks update_knn14] -add {SLICE_X65Y185:SLICE_X90Y239}
resize_pblock [get_pblocks update_knn14] -add {DSP48E2_X9Y68:DSP48E2_X11Y89}
resize_pblock [get_pblocks update_knn14] -add {RAMB18_X5Y74:RAMB18_X5Y95}
resize_pblock [get_pblocks update_knn14] -add {RAMB36_X5Y37:RAMB36_X5Y47}
set_property SNAPPING_MODE ON [get_pblocks update_knn14]
set_property IS_SOFT TRUE [get_pblocks update_knn14]
add_cells_to_pblock [get_pblocks update_knn14] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn14_inst]]


create_pblock update_knn5
resize_pblock [get_pblocks update_knn5] -add {SLICE_X93Y185:SLICE_X112Y239}
resize_pblock [get_pblocks update_knn5] -add {DSP48E2_X12Y68:DSP48E2_X14Y89}
resize_pblock [get_pblocks update_knn5] -add {RAMB18_X6Y74:RAMB18_X6Y95}
resize_pblock [get_pblocks update_knn5] -add {RAMB36_X6Y37:RAMB36_X6Y47}
set_property SNAPPING_MODE ON [get_pblocks update_knn5]
set_property IS_SOFT TRUE [get_pblocks update_knn5]
add_cells_to_pblock [get_pblocks update_knn5] [get_cells -quiet [list level0_i/ulp/ydma_1/inst/top_inst/update_knn5_inst]]
