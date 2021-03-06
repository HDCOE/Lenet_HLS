// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _forward_4_HH_
#define _forward_4_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "forward_conv_2.h"

namespace ap_rtl {

struct forward_4 : public sc_module {
    // Port declarations 32
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
    sc_in< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_output_data_V_q0;
    sc_out< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_W_data_V_address0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_W_data_V_ce0;
    sc_in< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_W_data_V_q0;
    sc_out< sc_lv<9> > conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0;
    sc_out< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0;
    sc_in< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_inpad_data_V_q0;
    sc_out< sc_lv<7> > conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_address0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_ce0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_we0;
    sc_out< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_d0;
    sc_in< sc_lv<16> > conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_q0;
    sc_out< sc_lv<7> > conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_address0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_ce0;
    sc_out< sc_logic > conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_we0;
    sc_out< sc_lv<15> > conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_d0;
    sc_in< sc_lv<15> > conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_q0;


    // Module declarations
    forward_4(sc_module_name name);
    SC_HAS_PROCESS(forward_4);

    ~forward_4();

    sc_trace_file* mVcdFile;

    forward_conv_2* grp_forward_conv_2_fu_129;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > p_i0_0_i_cast3_fu_141_p1;
    sc_signal< sc_lv<64> > p_i0_0_i_cast3_reg_218;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<7> > p_i0_fu_152_p2;
    sc_signal< sc_lv<7> > p_i0_reg_226;
    sc_signal< sc_lv<1> > tmp_fu_146_p2;
    sc_signal< sc_lv<7> > iz_0_i_fu_164_p2;
    sc_signal< sc_lv<7> > iz_0_i_reg_239;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > tmp_10_0_i_fu_170_p1;
    sc_signal< sc_lv<64> > tmp_10_0_i_reg_244;
    sc_signal< sc_lv<1> > exitcond_0_i_fu_158_p2;
    sc_signal< sc_lv<64> > p_i0_0_i1_cast1_fu_196_p1;
    sc_signal< sc_lv<64> > p_i0_0_i1_cast1_reg_254;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<7> > p_i0_5_fu_207_p2;
    sc_signal< sc_lv<7> > p_i0_5_reg_262;
    sc_signal< sc_lv<1> > tmp_s_fu_201_p2;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_ap_start;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_ap_done;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_ap_idle;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_ap_ready;
    sc_signal< sc_lv<9> > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_input_data_V_address0;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_input_data_V_ce0;
    sc_signal< sc_lv<7> > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_address0;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_ce0;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_we0;
    sc_signal< sc_lv<16> > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_d0;
    sc_signal< sc_lv<16> > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_W_data_V_address0;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_W_data_V_ce0;
    sc_signal< sc_lv<9> > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0;
    sc_signal< sc_lv<16> > grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0;
    sc_signal< sc_lv<7> > p_i0_0_i_reg_96;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<7> > p_z_assign_0_i_reg_107;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<7> > p_i0_0_i1_reg_118;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > grp_forward_conv_2_fu_129_ap_start_reg;
    sc_signal< sc_lv<16> > extLd_fu_213_p1;
    sc_signal< sc_lv<1> > tmp_72_fu_179_p3;
    sc_signal< sc_lv<15> > tmp_71_fu_175_p1;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<7> ap_const_lv7_78;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<15> ap_const_lv15_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
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
    void thread_conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_address0();
    void thread_conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_ce0();
    void thread_conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_d0();
    void thread_conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_we0();
    void thread_conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_address0();
    void thread_conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_ce0();
    void thread_conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_d0();
    void thread_conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_we0();
    void thread_exitcond_0_i_fu_158_p2();
    void thread_extLd_fu_213_p1();
    void thread_grp_forward_conv_2_fu_129_ap_start();
    void thread_iz_0_i_fu_164_p2();
    void thread_p_i0_0_i1_cast1_fu_196_p1();
    void thread_p_i0_0_i_cast3_fu_141_p1();
    void thread_p_i0_5_fu_207_p2();
    void thread_p_i0_fu_152_p2();
    void thread_tmp_10_0_i_fu_170_p1();
    void thread_tmp_71_fu_175_p1();
    void thread_tmp_72_fu_179_p3();
    void thread_tmp_fu_146_p2();
    void thread_tmp_s_fu_201_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
