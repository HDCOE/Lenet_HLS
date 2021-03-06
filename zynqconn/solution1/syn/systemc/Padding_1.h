// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Padding_1_HH_
#define _Padding_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Padding_1 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<11> > out_V_address0;
    sc_out< sc_logic > out_V_ce0;
    sc_out< sc_logic > out_V_we0;
    sc_out< sc_lv<16> > out_V_d0;
    sc_out< sc_lv<11> > in_V_address0;
    sc_out< sc_logic > in_V_ce0;
    sc_in< sc_lv<16> > in_V_q0;


    // Module declarations
    Padding_1(sc_module_name name);
    SC_HAS_PROCESS(Padding_1);

    ~Padding_1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<12> > phi_mul_cast_fu_165_p1;
    sc_signal< sc_lv<12> > phi_mul_cast_reg_302;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > next_mul_fu_169_p2;
    sc_signal< sc_lv<11> > next_mul_reg_307;
    sc_signal< sc_lv<3> > z_1_fu_181_p2;
    sc_signal< sc_lv<3> > z_1_reg_315;
    sc_signal< sc_lv<11> > idx_5_fu_187_p2;
    sc_signal< sc_lv<11> > idx_5_reg_320;
    sc_signal< sc_lv<1> > exitcond5_fu_175_p2;
    sc_signal< sc_lv<4> > y_1_fu_199_p2;
    sc_signal< sc_lv<4> > y_1_reg_328;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<9> > tmp_s_fu_229_p2;
    sc_signal< sc_lv<9> > tmp_s_reg_333;
    sc_signal< sc_lv<1> > exitcond4_fu_193_p2;
    sc_signal< sc_lv<11> > tmp_52_fu_235_p2;
    sc_signal< sc_lv<11> > tmp_52_reg_338;
    sc_signal< sc_lv<11> > indvars_iv_next_fu_241_p2;
    sc_signal< sc_lv<4> > x_1_fu_257_p2;
    sc_signal< sc_lv<4> > x_1_reg_351;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<12> > tmp_105_fu_272_p2;
    sc_signal< sc_lv<12> > tmp_105_reg_356;
    sc_signal< sc_lv<1> > exitcond_fu_251_p2;
    sc_signal< sc_lv<11> > idx_4_fu_282_p2;
    sc_signal< sc_lv<11> > idx_4_reg_366;
    sc_signal< sc_lv<11> > indvars_iv_next3_fu_288_p2;
    sc_signal< sc_lv<11> > indvars_iv_reg_65;
    sc_signal< sc_lv<11> > idx_reg_77;
    sc_signal< sc_lv<3> > z_reg_89;
    sc_signal< sc_lv<11> > phi_mul_reg_100;
    sc_signal< sc_lv<11> > indvars_iv2_reg_111;
    sc_signal< sc_lv<11> > idx_1_reg_122;
    sc_signal< sc_lv<4> > y_reg_133;
    sc_signal< sc_lv<11> > idx_2_reg_144;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<4> > x_reg_154;
    sc_signal< sc_lv<64> > tmp_107_fu_277_p1;
    sc_signal< sc_lv<64> > tmp_106_fu_297_p1;
    sc_signal< sc_lv<8> > p_shl_fu_205_p3;
    sc_signal< sc_lv<5> > p_shl1_fu_217_p3;
    sc_signal< sc_lv<9> > p_shl_cast_fu_213_p1;
    sc_signal< sc_lv<9> > p_shl1_cast_fu_225_p1;
    sc_signal< sc_lv<9> > x_cast_fu_247_p1;
    sc_signal< sc_lv<9> > tmp_fu_263_p2;
    sc_signal< sc_lv<12> > tmp_cast_fu_268_p1;
    sc_signal< sc_lv<32> > tmp_169_cast_fu_294_p1;
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
    static const sc_lv<11> ap_const_lv11_E;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<11> ap_const_lv11_C4;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_E;
    static const sc_lv<4> ap_const_lv4_1;
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
    void thread_ap_ready();
    void thread_exitcond4_fu_193_p2();
    void thread_exitcond5_fu_175_p2();
    void thread_exitcond_fu_251_p2();
    void thread_idx_4_fu_282_p2();
    void thread_idx_5_fu_187_p2();
    void thread_in_V_address0();
    void thread_in_V_ce0();
    void thread_indvars_iv_next3_fu_288_p2();
    void thread_indvars_iv_next_fu_241_p2();
    void thread_next_mul_fu_169_p2();
    void thread_out_V_address0();
    void thread_out_V_ce0();
    void thread_out_V_d0();
    void thread_out_V_we0();
    void thread_p_shl1_cast_fu_225_p1();
    void thread_p_shl1_fu_217_p3();
    void thread_p_shl_cast_fu_213_p1();
    void thread_p_shl_fu_205_p3();
    void thread_phi_mul_cast_fu_165_p1();
    void thread_tmp_105_fu_272_p2();
    void thread_tmp_106_fu_297_p1();
    void thread_tmp_107_fu_277_p1();
    void thread_tmp_169_cast_fu_294_p1();
    void thread_tmp_52_fu_235_p2();
    void thread_tmp_cast_fu_268_p1();
    void thread_tmp_fu_263_p2();
    void thread_tmp_s_fu_229_p2();
    void thread_x_1_fu_257_p2();
    void thread_x_cast_fu_247_p1();
    void thread_y_1_fu_199_p2();
    void thread_z_1_fu_181_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
