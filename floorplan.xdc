

create_pblock fp_conv
resize_pblock [get_pblocks fp_conv] -add {SLICE_X1Y65:SLICE_X22Y119}
resize_pblock [get_pblocks fp_conv] -add {DSP48E2_X0Y20:DSP48E2_X1Y41}
resize_pblock [get_pblocks fp_conv] -add {RAMB18_X0Y26:RAMB18_X1Y47}
resize_pblock [get_pblocks fp_conv] -add {RAMB36_X0Y13:RAMB36_X1Y23}


create_pblock bd_gen_7
resize_pblock [get_pblocks bd_gen_7] -add {SLICE_X25Y65:SLICE_X90Y119}
resize_pblock [get_pblocks bd_gen_7] -add {DSP48E2_X2Y20:DSP48E2_X11Y41}
resize_pblock [get_pblocks bd_gen_7] -add {RAMB18_X2Y26:RAMB18_X5Y47}
resize_pblock [get_pblocks bd_gen_7] -add {RAMB36_X2Y13:RAMB36_X5Y23}


create_pblock bd_gen_8
resize_pblock [get_pblocks bd_gen_8] -add {SLICE_X118Y65:SLICE_X178Y119}
resize_pblock [get_pblocks bd_gen_8] -add {SLICE_X117Y65:SLICE_X117Y119}
resize_pblock [get_pblocks bd_gen_8] -add {DSP48E2_X16Y20:DSP48E2_X24Y41}
resize_pblock [get_pblocks bd_gen_8] -add {RAMB18_X8Y26:RAMB18_X11Y47}
resize_pblock [get_pblocks bd_gen_8] -add {RAMB36_X8Y13:RAMB36_X11Y23}


create_pblock bd_gen_1
resize_pblock [get_pblocks bd_gen_1] -add {SLICE_X1Y125:SLICE_X59Y179}
resize_pblock [get_pblocks bd_gen_1] -add {DSP48E2_X0Y44:DSP48E2_X7Y65}
resize_pblock [get_pblocks bd_gen_1] -add {RAMB18_X0Y50:RAMB18_X4Y71}
resize_pblock [get_pblocks bd_gen_1] -add {RAMB36_X0Y25:RAMB36_X4Y35}


create_pblock bc1_gen_2
resize_pblock [get_pblocks bc1_gen_2] -add {SLICE_X61Y125:SLICE_X93Y179}
resize_pblock [get_pblocks bc1_gen_2] -add {DSP48E2_X9Y44:DSP48E2_X11Y65}
resize_pblock [get_pblocks bc1_gen_2] -add {RAMB18_X5Y50:RAMB18_X6Y71}
resize_pblock [get_pblocks bc1_gen_2] -add {RAMB36_X5Y25:RAMB36_X6Y35}


create_pblock bd_gen_4
resize_pblock [get_pblocks bd_gen_4] -add {SLICE_X95Y125:SLICE_X178Y179}
resize_pblock [get_pblocks bd_gen_4] -add {SLICE_X114Y125:SLICE_X117Y179}
resize_pblock [get_pblocks bd_gen_4] -add {DSP48E2_X13Y44:DSP48E2_X24Y65}
resize_pblock [get_pblocks bd_gen_4] -add {DSP48E2_X15Y44:DSP48E2_X15Y65}
resize_pblock [get_pblocks bd_gen_4] -add {RAMB18_X8Y50:RAMB18_X11Y71}
resize_pblock [get_pblocks bd_gen_4] -add {RAMB36_X8Y25:RAMB36_X11Y35}
resize_pblock [get_pblocks bd_gen_4] -add {RAMB18_X7Y50:RAMB18_X7Y71}
resize_pblock [get_pblocks bd_gen_4] -add {RAMB36_X7Y25:RAMB36_X7Y35}


create_pblock bin_dense_wrapper
resize_pblock [get_pblocks bin_dense_wrapper] -add {SLICE_X1Y185:SLICE_X16Y239}
resize_pblock [get_pblocks bin_dense_wrapper] -add {DSP48E2_X0Y68:DSP48E2_X1Y89}
resize_pblock [get_pblocks bin_dense_wrapper] -add {RAMB18_X0Y74:RAMB18_X1Y95}
resize_pblock [get_pblocks bin_dense_wrapper] -add {RAMB36_X0Y37:RAMB36_X1Y47}


create_pblock bd_gen_6
resize_pblock [get_pblocks bd_gen_6] -add {SLICE_X19Y185:SLICE_X93Y239}
resize_pblock [get_pblocks bd_gen_6] -add {DSP48E2_X2Y68:DSP48E2_X11Y89}
resize_pblock [get_pblocks bd_gen_6] -add {RAMB18_X2Y74:RAMB18_X6Y95}
resize_pblock [get_pblocks bd_gen_6] -add {RAMB36_X2Y37:RAMB36_X6Y47}


create_pblock bin_conv_0
resize_pblock [get_pblocks bin_conv_0] -add {SLICE_X95Y185:SLICE_X158Y239}
resize_pblock [get_pblocks bin_conv_0] -add {SLICE_X114Y185:SLICE_X117Y239}
resize_pblock [get_pblocks bin_conv_0] -add {DSP48E2_X13Y68:DSP48E2_X21Y89}
resize_pblock [get_pblocks bin_conv_0] -add {DSP48E2_X15Y68:DSP48E2_X15Y89}
resize_pblock [get_pblocks bin_conv_0] -add {RAMB18_X8Y74:RAMB18_X10Y95}
resize_pblock [get_pblocks bin_conv_0] -add {RAMB36_X8Y37:RAMB36_X10Y47}
resize_pblock [get_pblocks bin_conv_0] -add {RAMB18_X7Y74:RAMB18_X7Y95}
resize_pblock [get_pblocks bin_conv_0] -add {RAMB36_X7Y37:RAMB36_X7Y47}


create_pblock bd_gen_3
resize_pblock [get_pblocks bd_gen_3] -add {SLICE_X1Y245:SLICE_X59Y299}
resize_pblock [get_pblocks bd_gen_3] -add {DSP48E2_X0Y92:DSP48E2_X7Y113}
resize_pblock [get_pblocks bd_gen_3] -add {RAMB18_X0Y98:RAMB18_X4Y119}
resize_pblock [get_pblocks bd_gen_3] -add {RAMB36_X0Y49:RAMB36_X4Y59}


create_pblock bin_conv_1
resize_pblock [get_pblocks bin_conv_1] -add {SLICE_X61Y245:SLICE_X110Y299}
resize_pblock [get_pblocks bin_conv_1] -add {DSP48E2_X9Y92:DSP48E2_X14Y113}
resize_pblock [get_pblocks bin_conv_1] -add {RAMB18_X5Y98:RAMB18_X6Y119}
resize_pblock [get_pblocks bin_conv_1] -add {RAMB36_X5Y49:RAMB36_X6Y59}


create_pblock bc0_gen_0
resize_pblock [get_pblocks bc0_gen_0] -add {SLICE_X118Y245:SLICE_X148Y299}
resize_pblock [get_pblocks bc0_gen_0] -add {SLICE_X117Y245:SLICE_X117Y299}
resize_pblock [get_pblocks bc0_gen_0] -add {DSP48E2_X16Y92:DSP48E2_X19Y113}
resize_pblock [get_pblocks bc0_gen_0] -add {RAMB18_X8Y98:RAMB18_X10Y119}
resize_pblock [get_pblocks bc0_gen_0] -add {RAMB36_X8Y49:RAMB36_X10Y59}


create_pblock bd_gen_0
resize_pblock [get_pblocks bd_gen_0] -add {SLICE_X1Y305:SLICE_X59Y359}
resize_pblock [get_pblocks bd_gen_0] -add {DSP48E2_X0Y116:DSP48E2_X7Y137}
resize_pblock [get_pblocks bd_gen_0] -add {RAMB18_X0Y122:RAMB18_X4Y143}
resize_pblock [get_pblocks bd_gen_0] -add {RAMB36_X0Y61:RAMB36_X4Y71}


create_pblock bc1_gen_0
resize_pblock [get_pblocks bc1_gen_0] -add {SLICE_X61Y305:SLICE_X148Y359}
resize_pblock [get_pblocks bc1_gen_0] -add {SLICE_X114Y305:SLICE_X117Y359}
resize_pblock [get_pblocks bc1_gen_0] -add {DSP48E2_X9Y116:DSP48E2_X19Y137}
resize_pblock [get_pblocks bc1_gen_0] -add {DSP48E2_X15Y116:DSP48E2_X15Y137}
resize_pblock [get_pblocks bc1_gen_0] -add {RAMB18_X5Y122:RAMB18_X10Y143}
resize_pblock [get_pblocks bc1_gen_0] -add {RAMB36_X5Y61:RAMB36_X10Y71}
resize_pblock [get_pblocks bc1_gen_0] -add {RAMB18_X7Y122:RAMB18_X7Y143}
resize_pblock [get_pblocks bc1_gen_0] -add {RAMB36_X7Y61:RAMB36_X7Y71}


create_pblock bc2_gen_0
resize_pblock [get_pblocks bc2_gen_0] -add {SLICE_X1Y365:SLICE_X59Y419}
resize_pblock [get_pblocks bc2_gen_0] -add {DSP48E2_X0Y140:DSP48E2_X7Y161}
resize_pblock [get_pblocks bc2_gen_0] -add {RAMB18_X0Y146:RAMB18_X4Y167}
resize_pblock [get_pblocks bc2_gen_0] -add {RAMB36_X0Y73:RAMB36_X4Y83}


create_pblock bc2_gen_1
resize_pblock [get_pblocks bc2_gen_1] -add {SLICE_X61Y365:SLICE_X120Y419}
resize_pblock [get_pblocks bc2_gen_1] -add {SLICE_X114Y365:SLICE_X117Y419}
resize_pblock [get_pblocks bc2_gen_1] -add {DSP48E2_X9Y140:DSP48E2_X14Y161}
resize_pblock [get_pblocks bc2_gen_1] -add {DSP48E2_X15Y140:DSP48E2_X15Y161}
resize_pblock [get_pblocks bc2_gen_1] -add {RAMB18_X5Y146:RAMB18_X8Y167}
resize_pblock [get_pblocks bc2_gen_1] -add {RAMB36_X5Y73:RAMB36_X8Y83}
resize_pblock [get_pblocks bc2_gen_1] -add {RAMB18_X7Y146:RAMB18_X7Y167}
resize_pblock [get_pblocks bc2_gen_1] -add {RAMB36_X7Y73:RAMB36_X7Y83}


create_pblock bin_conv_2
resize_pblock [get_pblocks bin_conv_2] -add {SLICE_X122Y365:SLICE_X168Y419}
resize_pblock [get_pblocks bin_conv_2] -add {DSP48E2_X17Y140:DSP48E2_X23Y161}
resize_pblock [get_pblocks bin_conv_2] -add {RAMB18_X9Y146:RAMB18_X10Y167}
resize_pblock [get_pblocks bin_conv_2] -add {RAMB36_X9Y73:RAMB36_X10Y83}


create_pblock bd_gen_5
resize_pblock [get_pblocks bd_gen_5] -add {SLICE_X1Y425:SLICE_X55Y479}
resize_pblock [get_pblocks bd_gen_5] -add {DSP48E2_X0Y164:DSP48E2_X6Y185}
resize_pblock [get_pblocks bd_gen_5] -add {RAMB18_X0Y170:RAMB18_X3Y191}
resize_pblock [get_pblocks bd_gen_5] -add {RAMB36_X0Y85:RAMB36_X3Y95}


create_pblock bc1_gen_1
resize_pblock [get_pblocks bc1_gen_1] -add {SLICE_X57Y425:SLICE_X90Y479}
resize_pblock [get_pblocks bc1_gen_1] -add {DSP48E2_X8Y164:DSP48E2_X11Y185}
resize_pblock [get_pblocks bc1_gen_1] -add {RAMB18_X4Y170:RAMB18_X5Y191}
resize_pblock [get_pblocks bc1_gen_1] -add {RAMB36_X4Y85:RAMB36_X5Y95}


create_pblock bd_gen_2
resize_pblock [get_pblocks bd_gen_2] -add {SLICE_X93Y425:SLICE_X148Y479}
resize_pblock [get_pblocks bd_gen_2] -add {SLICE_X114Y425:SLICE_X117Y479}
resize_pblock [get_pblocks bd_gen_2] -add {DSP48E2_X12Y164:DSP48E2_X19Y185}
resize_pblock [get_pblocks bd_gen_2] -add {DSP48E2_X15Y164:DSP48E2_X15Y185}
resize_pblock [get_pblocks bd_gen_2] -add {RAMB18_X6Y170:RAMB18_X10Y191}
resize_pblock [get_pblocks bd_gen_2] -add {RAMB36_X6Y85:RAMB36_X10Y95}
resize_pblock [get_pblocks bd_gen_2] -add {RAMB18_X7Y170:RAMB18_X7Y191}
resize_pblock [get_pblocks bd_gen_2] -add {RAMB36_X7Y85:RAMB36_X7Y95}
