

create_pblock dotProduct_1
resize_pblock [get_pblocks dotProduct_1] -add {SLICE_X1Y65:SLICE_X16Y119}
resize_pblock [get_pblocks dotProduct_1] -add {DSP48E2_X0Y20:DSP48E2_X1Y41}
resize_pblock [get_pblocks dotProduct_1] -add {RAMB18_X0Y26:RAMB18_X1Y47}
resize_pblock [get_pblocks dotProduct_1] -add {RAMB36_X0Y13:RAMB36_X1Y23}


create_pblock dotProduct_3
resize_pblock [get_pblocks dotProduct_3] -add {SLICE_X19Y65:SLICE_X30Y119}
resize_pblock [get_pblocks dotProduct_3] -add {DSP48E2_X2Y20:DSP48E2_X3Y41}


create_pblock data_1_4_3
resize_pblock [get_pblocks data_1_4_3] -add {SLICE_X33Y65:SLICE_X33Y119}
resize_pblock [get_pblocks data_1_4_3] -add {RAMB18_X2Y26:RAMB18_X2Y47}
resize_pblock [get_pblocks data_1_4_3] -add {RAMB36_X2Y13:RAMB36_X2Y23}


create_pblock data_1_4_1
resize_pblock [get_pblocks data_1_4_1] -add {SLICE_X35Y65:SLICE_X36Y119}


create_pblock dotProduct_2
resize_pblock [get_pblocks dotProduct_2] -add {SLICE_X39Y65:SLICE_X52Y119}
resize_pblock [get_pblocks dotProduct_2] -add {DSP48E2_X5Y20:DSP48E2_X6Y41}


create_pblock dotProduct_4
resize_pblock [get_pblocks dotProduct_4] -add {SLICE_X55Y65:SLICE_X60Y119}
resize_pblock [get_pblocks dotProduct_4] -add {DSP48E2_X7Y20:DSP48E2_X8Y41}
resize_pblock [get_pblocks dotProduct_4] -add {RAMB18_X3Y26:RAMB18_X4Y47}
resize_pblock [get_pblocks dotProduct_4] -add {RAMB36_X3Y13:RAMB36_X4Y23}


create_pblock data_in_redir
resize_pblock [get_pblocks data_in_redir] -add {SLICE_X63Y65:SLICE_X90Y119}
resize_pblock [get_pblocks data_in_redir] -add {DSP48E2_X9Y20:DSP48E2_X11Y41}
resize_pblock [get_pblocks data_in_redir] -add {RAMB18_X5Y26:RAMB18_X5Y47}
resize_pblock [get_pblocks data_in_redir] -add {RAMB36_X5Y13:RAMB36_X5Y23}


create_pblock Sigmoid_axi
resize_pblock [get_pblocks Sigmoid_axi] -add {SLICE_X93Y65:SLICE_X93Y119}
resize_pblock [get_pblocks Sigmoid_axi] -add {RAMB18_X6Y26:RAMB18_X6Y47}
resize_pblock [get_pblocks Sigmoid_axi] -add {RAMB36_X6Y13:RAMB36_X6Y23}


create_pblock data_1_4_2
resize_pblock [get_pblocks data_1_4_2] -add {SLICE_X95Y65:SLICE_X96Y119}


create_pblock dotProduct_6
resize_pblock [get_pblocks dotProduct_6] -add {SLICE_X99Y65:SLICE_X106Y119}
resize_pblock [get_pblocks dotProduct_6] -add {DSP48E2_X13Y20:DSP48E2_X14Y41}


create_pblock data_1_4_4
resize_pblock [get_pblocks data_1_4_4] -add {SLICE_X109Y65:SLICE_X110Y119}


create_pblock dotProduct_5
resize_pblock [get_pblocks dotProduct_5] -add {SLICE_X118Y65:SLICE_X128Y119}
resize_pblock [get_pblocks dotProduct_5] -add {SLICE_X117Y65:SLICE_X117Y119}
resize_pblock [get_pblocks dotProduct_5] -add {DSP48E2_X16Y20:DSP48E2_X17Y41}
resize_pblock [get_pblocks dotProduct_5] -add {RAMB18_X8Y26:RAMB18_X8Y47}
resize_pblock [get_pblocks dotProduct_5] -add {RAMB36_X8Y13:RAMB36_X8Y23}


create_pblock dotProduct_7
resize_pblock [get_pblocks dotProduct_7] -add {SLICE_X131Y65:SLICE_X145Y119}
resize_pblock [get_pblocks dotProduct_7] -add {DSP48E2_X18Y20:DSP48E2_X19Y41}
resize_pblock [get_pblocks dotProduct_7] -add {RAMB18_X9Y26:RAMB18_X9Y47}
resize_pblock [get_pblocks dotProduct_7] -add {RAMB36_X9Y13:RAMB36_X9Y23}


create_pblock dotProduct_8
resize_pblock [get_pblocks dotProduct_8] -add {SLICE_X148Y65:SLICE_X156Y119}
resize_pblock [get_pblocks dotProduct_8] -add {DSP48E2_X20Y20:DSP48E2_X21Y41}
resize_pblock [get_pblocks dotProduct_8] -add {RAMB18_X10Y26:RAMB18_X10Y47}
resize_pblock [get_pblocks dotProduct_8] -add {RAMB36_X10Y13:RAMB36_X10Y23}


create_pblock data_2_1
resize_pblock [get_pblocks data_2_1] -add {SLICE_X159Y65:SLICE_X178Y119}
resize_pblock [get_pblocks data_2_1] -add {DSP48E2_X22Y20:DSP48E2_X24Y41}
resize_pblock [get_pblocks data_2_1] -add {RAMB18_X11Y26:RAMB18_X11Y47}
resize_pblock [get_pblocks data_2_1] -add {RAMB36_X11Y13:RAMB36_X11Y23}
