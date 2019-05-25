// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _forward_conv_2_HH_
#define _forward_conv_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Padding_2.h"
#include "lenet_mac_muladd_16s_16s_28ns_28_1_1.h"

namespace ap_rtl {

struct forward_conv_2 : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<9> > conv_layer_5_120_1_0_5_5_16_input_data_V_address0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_input_data_V_ce0;
    sc_in< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_input_data_V_q0;
    sc_out< sc_lv<7> > conv_layer_5_120_1_0_5_5_16_output_data_V_address0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_output_data_V_ce0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_output_data_V_we0;
    sc_out< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_output_data_V_d0;
    sc_out< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_W_data_V_address0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_W_data_V_ce0;
    sc_in< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_W_data_V_q0;
    sc_out< sc_lv<9> > conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0;
    sc_out< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0;
    sc_in< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_inpad_data_V_q0;


    // Module declarations
    forward_conv_2(sc_module_name name);
    SC_HAS_PROCESS(forward_conv_2);

    ~forward_conv_2();

    sc_trace_file* mVcdFile;

    Padding_2* grp_Padding_2_fu_256;
    lenet_mac_muladd_16s_16s_28ns_28_1_1<1,1,16,16,28,28>* lenet_mac_muladd_16s_16s_28ns_28_1_1_U42;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > next_mul2_fu_264_p2;
    sc_signal< sc_lv<16> > next_mul2_reg_517;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > idx_filter_fu_276_p2;
    sc_signal< sc_lv<7> > idx_filter_reg_525;
    sc_signal< sc_lv<9> > v_6_cast9_fu_282_p1;
    sc_signal< sc_lv<9> > v_6_cast9_reg_530;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > v_6_cast_fu_286_p1;
    sc_signal< sc_lv<3> > v_6_cast_reg_535;
    sc_signal< sc_lv<3> > ho_4_cast_fu_296_p1;
    sc_signal< sc_lv<3> > ho_4_cast_reg_543;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > idx_y_fu_306_p2;
    sc_signal< sc_lv<1> > exitcond6_fu_300_p2;
    sc_signal< sc_lv<3> > indvars_iv_next3_fu_312_p2;
    sc_signal< sc_lv<9> > next_mul_fu_318_p2;
    sc_signal< sc_lv<9> > next_mul_reg_562;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<5> > ch_fu_330_p2;
    sc_signal< sc_lv<5> > ch_reg_570;
    sc_signal< sc_lv<1> > idx_x_fu_357_p2;
    sc_signal< sc_lv<1> > exitcond5_fu_324_p2;
    sc_signal< sc_lv<3> > indvars_iv_next_fu_363_p2;
    sc_signal< sc_lv<9> > p_x_assign_8_fu_379_p2;
    sc_signal< sc_lv<9> > p_x_assign_8_reg_588;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > exitcond4_fu_373_p2;
    sc_signal< sc_lv<9> > tmp_76_fu_412_p2;
    sc_signal< sc_lv<9> > tmp_76_reg_597;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > exitcond1_fu_389_p2;
    sc_signal< sc_lv<9> > tmp_79_fu_450_p2;
    sc_signal< sc_lv<9> > tmp_79_reg_602;
    sc_signal< sc_lv<3> > ho_fu_455_p2;
    sc_signal< sc_lv<3> > ho_reg_607;
    sc_signal< sc_lv<3> > v_fu_461_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<16> > conv_layer_inpad_da_1_reg_627;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<16> > conv_layer_W_data_V_1_reg_632;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > grp_Padding_2_fu_256_ap_start;
    sc_signal< sc_logic > grp_Padding_2_fu_256_ap_done;
    sc_signal< sc_logic > grp_Padding_2_fu_256_ap_idle;
    sc_signal< sc_logic > grp_Padding_2_fu_256_ap_ready;
    sc_signal< sc_lv<9> > grp_Padding_2_fu_256_out_V_address0;
    sc_signal< sc_logic > grp_Padding_2_fu_256_out_V_ce0;
    sc_signal< sc_logic > grp_Padding_2_fu_256_out_V_we0;
    sc_signal< sc_lv<16> > grp_Padding_2_fu_256_out_V_d0;
    sc_signal< sc_lv<9> > grp_Padding_2_fu_256_in_V_address0;
    sc_signal< sc_logic > grp_Padding_2_fu_256_in_V_ce0;
    sc_signal< sc_lv<7> > p_z_assign_reg_105;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > exitcond7_fu_290_p2;
    sc_signal< sc_lv<16> > phi_mul1_reg_117;
    sc_signal< sc_lv<3> > indvars_iv2_reg_129;
    sc_signal< sc_lv<1> > exitcond_fu_270_p2;
    sc_signal< sc_lv<1> > v_2_reg_141;
    sc_signal< sc_lv<3> > indvars_iv_reg_153;
    sc_signal< sc_lv<1> > ho_1_reg_165;
    sc_signal< sc_lv<16> > p_Val2_s_reg_177;
    sc_signal< sc_lv<5> > p_z_assign_3_reg_190;
    sc_signal< sc_lv<9> > phi_mul_reg_201;
    sc_signal< sc_lv<16> > p_082_2_reg_213;
    sc_signal< sc_lv<3> > p_x_assign_7_reg_225;
    sc_signal< sc_lv<16> > p_Val2_3_reg_235;
    sc_signal< sc_lv<3> > p_y_assign_9_reg_247;
    sc_signal< sc_logic > grp_Padding_2_fu_256_ap_start_reg;
    sc_signal< sc_lv<64> > tmp_75_fu_352_p1;
    sc_signal< sc_lv<64> > tmp_105_cast_fu_480_p1;
    sc_signal< sc_lv<64> > tmp_77_fu_467_p1;
    sc_signal< sc_lv<1> > tmp3_fu_336_p2;
    sc_signal< sc_lv<7> > tmp3_cast_fu_342_p1;
    sc_signal< sc_lv<7> > tmp_s_fu_346_p2;
    sc_signal< sc_lv<9> > p_x_assign_9_cast7_fu_369_p1;
    sc_signal< sc_lv<5> > p_shl5_fu_395_p3;
    sc_signal< sc_lv<9> > p_shl5_cast_fu_403_p1;
    sc_signal< sc_lv<9> > tmp1_fu_407_p2;
    sc_signal< sc_lv<9> > p_y_assign_9_cast6_fu_385_p1;
    sc_signal< sc_lv<3> > p_y_assign_s_fu_418_p2;
    sc_signal< sc_lv<5> > p_shl_fu_427_p3;
    sc_signal< sc_lv<9> > p_shl_cast_fu_435_p1;
    sc_signal< sc_lv<9> > tmp2_fu_439_p2;
    sc_signal< sc_lv<9> > p_y_assign_10_cast4_fu_423_p1;
    sc_signal< sc_lv<9> > tmp_78_fu_444_p2;
    sc_signal< sc_lv<16> > tmp_103_cast_fu_471_p1;
    sc_signal< sc_lv<16> > tmp_80_fu_474_p2;
    sc_signal< sc_lv<28> > grp_fu_508_p3;
    sc_signal< sc_lv<28> > grp_fu_508_p2;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<16> ap_const_lv16_190;
    static const sc_lv<7> ap_const_lv7_78;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<9> ap_const_lv9_19;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_1B;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ch_fu_330_p2();
    void thread_conv_layer_5_120_1_0_5_5_16_W_data_V_address0();
    void thread_conv_layer_5_120_1_0_5_5_16_W_data_V_ce0();
    void thread_conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0();
    void thread_conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0();
    void thread_conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0();
    void thread_conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0();
    void thread_conv_layer_5_120_1_0_5_5_16_input_data_V_address0();
    void thread_conv_layer_5_120_1_0_5_5_16_input_data_V_ce0();
    void thread_conv_layer_5_120_1_0_5_5_16_output_data_V_address0();
    void thread_conv_layer_5_120_1_0_5_5_16_output_data_V_ce0();
    void thread_conv_layer_5_120_1_0_5_5_16_output_data_V_d0();
    void thread_conv_layer_5_120_1_0_5_5_16_output_data_V_we0();
    void thread_exitcond1_fu_389_p2();
    void thread_exitcond4_fu_373_p2();
    void thread_exitcond5_fu_324_p2();
    void thread_exitcond6_fu_300_p2();
    void thread_exitcond7_fu_290_p2();
    void thread_exitcond_fu_270_p2();
    void thread_grp_Padding_2_fu_256_ap_start();
    void thread_grp_fu_508_p2();
    void thread_ho_4_cast_fu_296_p1();
    void thread_ho_fu_455_p2();
    void thread_idx_filter_fu_276_p2();
    void thread_idx_x_fu_357_p2();
    void thread_idx_y_fu_306_p2();
    void thread_indvars_iv_next3_fu_312_p2();
    void thread_indvars_iv_next_fu_363_p2();
    void thread_next_mul2_fu_264_p2();
    void thread_next_mul_fu_318_p2();
    void thread_p_shl5_cast_fu_403_p1();
    void thread_p_shl5_fu_395_p3();
    void thread_p_shl_cast_fu_435_p1();
    void thread_p_shl_fu_427_p3();
    void thread_p_x_assign_8_fu_379_p2();
    void thread_p_x_assign_9_cast7_fu_369_p1();
    void thread_p_y_assign_10_cast4_fu_423_p1();
    void thread_p_y_assign_9_cast6_fu_385_p1();
    void thread_p_y_assign_s_fu_418_p2();
    void thread_tmp1_fu_407_p2();
    void thread_tmp2_fu_439_p2();
    void thread_tmp3_cast_fu_342_p1();
    void thread_tmp3_fu_336_p2();
    void thread_tmp_103_cast_fu_471_p1();
    void thread_tmp_105_cast_fu_480_p1();
    void thread_tmp_75_fu_352_p1();
    void thread_tmp_76_fu_412_p2();
    void thread_tmp_77_fu_467_p1();
    void thread_tmp_78_fu_444_p2();
    void thread_tmp_79_fu_450_p2();
    void thread_tmp_80_fu_474_p2();
    void thread_tmp_s_fu_346_p2();
    void thread_v_6_cast9_fu_282_p1();
    void thread_v_6_cast_fu_286_p1();
    void thread_v_fu_461_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
