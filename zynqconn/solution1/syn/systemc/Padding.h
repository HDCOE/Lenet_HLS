// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Padding_HH_
#define _Padding_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Padding : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > out_V_address0;
    sc_out< sc_logic > out_V_ce0;
    sc_out< sc_logic > out_V_we0;
    sc_out< sc_lv<16> > out_V_d0;
    sc_out< sc_lv<10> > in_V_address0;
    sc_out< sc_logic > in_V_ce0;
    sc_in< sc_lv<16> > in_V_q0;


    // Module declarations
    Padding(sc_module_name name);
    SC_HAS_PROCESS(Padding);

    ~Padding();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > idx_6_fu_152_p2;
    sc_signal< sc_lv<11> > idx_6_reg_236;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > ap_phi_mux_z_phi_fu_90_p4;
    sc_signal< sc_lv<6> > y_1_fu_164_p2;
    sc_signal< sc_lv<6> > y_1_reg_244;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<10> > tmp_s_fu_174_p3;
    sc_signal< sc_lv<10> > tmp_s_reg_249;
    sc_signal< sc_lv<1> > exitcond3_fu_158_p2;
    sc_signal< sc_lv<11> > tmp_54_fu_182_p2;
    sc_signal< sc_lv<11> > tmp_54_reg_254;
    sc_signal< sc_lv<11> > indvars_iv_next_fu_188_p2;
    sc_signal< sc_lv<6> > x_1_fu_204_p2;
    sc_signal< sc_lv<6> > x_1_reg_267;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<10> > tmp_fu_210_p2;
    sc_signal< sc_lv<10> > tmp_reg_272;
    sc_signal< sc_lv<1> > exitcond_fu_198_p2;
    sc_signal< sc_lv<11> > idx_4_fu_220_p2;
    sc_signal< sc_lv<11> > idx_4_reg_282;
    sc_signal< sc_lv<11> > indvars_iv_next2_fu_226_p2;
    sc_signal< sc_lv<11> > indvars_iv_reg_61;
    sc_signal< sc_lv<11> > idx_reg_73;
    sc_signal< sc_lv<1> > z_reg_85;
    sc_signal< sc_lv<11> > indvars_iv1_reg_98;
    sc_signal< sc_lv<11> > idx_1_reg_109;
    sc_signal< sc_lv<6> > y_reg_120;
    sc_signal< sc_lv<11> > idx_2_reg_131;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<6> > x_reg_141;
    sc_signal< sc_lv<64> > tmp_109_fu_215_p1;
    sc_signal< sc_lv<64> > tmp_108_fu_232_p1;
    sc_signal< sc_lv<5> > tmp_81_fu_170_p1;
    sc_signal< sc_lv<10> > x_cast_fu_194_p1;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_20;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<11> ap_const_lv11_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_z_phi_fu_90_p4();
    void thread_ap_ready();
    void thread_exitcond3_fu_158_p2();
    void thread_exitcond_fu_198_p2();
    void thread_idx_4_fu_220_p2();
    void thread_idx_6_fu_152_p2();
    void thread_in_V_address0();
    void thread_in_V_ce0();
    void thread_indvars_iv_next2_fu_226_p2();
    void thread_indvars_iv_next_fu_188_p2();
    void thread_out_V_address0();
    void thread_out_V_ce0();
    void thread_out_V_d0();
    void thread_out_V_we0();
    void thread_tmp_108_fu_232_p1();
    void thread_tmp_109_fu_215_p1();
    void thread_tmp_54_fu_182_p2();
    void thread_tmp_81_fu_170_p1();
    void thread_tmp_fu_210_p2();
    void thread_tmp_s_fu_174_p3();
    void thread_x_1_fu_204_p2();
    void thread_x_cast_fu_194_p1();
    void thread_y_1_fu_164_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
