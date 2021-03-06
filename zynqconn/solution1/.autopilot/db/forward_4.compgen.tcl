# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name conv_layer_5_120_1_0_5_5_16_input_data_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_layer_5_120_1_0_5_5_16_input_data_V \
    op interface \
    ports { conv_layer_5_120_1_0_5_5_16_input_data_V_address0 { O 9 vector } conv_layer_5_120_1_0_5_5_16_input_data_V_ce0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_input_data_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_layer_5_120_1_0_5_5_16_input_data_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name conv_layer_5_120_1_0_5_5_16_output_data_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename conv_layer_5_120_1_0_5_5_16_output_data_V \
    op interface \
    ports { conv_layer_5_120_1_0_5_5_16_output_data_V_address0 { O 7 vector } conv_layer_5_120_1_0_5_5_16_output_data_V_ce0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_output_data_V_we0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_output_data_V_d0 { O 16 vector } conv_layer_5_120_1_0_5_5_16_output_data_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_layer_5_120_1_0_5_5_16_output_data_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name conv_layer_5_120_1_0_5_5_16_W_data_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename conv_layer_5_120_1_0_5_5_16_W_data_V \
    op interface \
    ports { conv_layer_5_120_1_0_5_5_16_W_data_V_address0 { O 16 vector } conv_layer_5_120_1_0_5_5_16_W_data_V_ce0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_W_data_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_layer_5_120_1_0_5_5_16_W_data_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name conv_layer_5_120_1_0_5_5_16_inpad_data_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename conv_layer_5_120_1_0_5_5_16_inpad_data_V \
    op interface \
    ports { conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0 { O 9 vector } conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0 { O 16 vector } conv_layer_5_120_1_0_5_5_16_inpad_data_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_layer_5_120_1_0_5_5_16_inpad_data_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name conv_layer_5_120_1_0_5_5_16_relu1_input_data_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename conv_layer_5_120_1_0_5_5_16_relu1_input_data_V \
    op interface \
    ports { conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_address0 { O 7 vector } conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_ce0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_we0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_d0 { O 16 vector } conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_layer_5_120_1_0_5_5_16_relu1_input_data_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name conv_layer_5_120_1_0_5_5_16_relu1_output_data_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename conv_layer_5_120_1_0_5_5_16_relu1_output_data_V \
    op interface \
    ports { conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_address0 { O 7 vector } conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_ce0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_we0 { O 1 bit } conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_d0 { O 15 vector } conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'conv_layer_5_120_1_0_5_5_16_relu1_output_data_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


