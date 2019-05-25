// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Padding_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Padding_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Padding_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> Padding_1::ap_ST_fsm_state1 = "1";
const sc_lv<5> Padding_1::ap_ST_fsm_state2 = "10";
const sc_lv<5> Padding_1::ap_ST_fsm_state3 = "100";
const sc_lv<5> Padding_1::ap_ST_fsm_state4 = "1000";
const sc_lv<5> Padding_1::ap_ST_fsm_state5 = "10000";
const sc_lv<32> Padding_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Padding_1::ap_const_lv32_1 = "1";
const sc_lv<1> Padding_1::ap_const_lv1_0 = "0";
const sc_lv<32> Padding_1::ap_const_lv32_2 = "10";
const sc_lv<1> Padding_1::ap_const_lv1_1 = "1";
const sc_lv<32> Padding_1::ap_const_lv32_3 = "11";
const sc_lv<11> Padding_1::ap_const_lv11_E = "1110";
const sc_lv<11> Padding_1::ap_const_lv11_0 = "00000000000";
const sc_lv<3> Padding_1::ap_const_lv3_0 = "000";
const sc_lv<4> Padding_1::ap_const_lv4_0 = "0000";
const sc_lv<32> Padding_1::ap_const_lv32_4 = "100";
const sc_lv<11> Padding_1::ap_const_lv11_C4 = "11000100";
const sc_lv<3> Padding_1::ap_const_lv3_6 = "110";
const sc_lv<3> Padding_1::ap_const_lv3_1 = "1";
const sc_lv<4> Padding_1::ap_const_lv4_E = "1110";
const sc_lv<4> Padding_1::ap_const_lv4_1 = "1";
const sc_lv<11> Padding_1::ap_const_lv11_1 = "1";
const bool Padding_1::ap_const_boolean_1 = true;

Padding_1::Padding_1(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond5_fu_175_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond5_fu_175_p2 );

    SC_METHOD(thread_exitcond4_fu_193_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( y_reg_133 );

    SC_METHOD(thread_exitcond5_fu_175_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( z_reg_89 );

    SC_METHOD(thread_exitcond_fu_251_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( indvars_iv2_reg_111 );
    sensitive << ( idx_2_reg_144 );

    SC_METHOD(thread_idx_4_fu_282_p2);
    sensitive << ( idx_2_reg_144 );

    SC_METHOD(thread_idx_5_fu_187_p2);
    sensitive << ( idx_reg_77 );

    SC_METHOD(thread_in_V_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_107_fu_277_p1 );

    SC_METHOD(thread_in_V_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_indvars_iv_next3_fu_288_p2);
    sensitive << ( indvars_iv2_reg_111 );

    SC_METHOD(thread_indvars_iv_next_fu_241_p2);
    sensitive << ( indvars_iv_reg_65 );

    SC_METHOD(thread_next_mul_fu_169_p2);
    sensitive << ( phi_mul_reg_100 );

    SC_METHOD(thread_out_V_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_106_fu_297_p1 );

    SC_METHOD(thread_out_V_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_out_V_d0);
    sensitive << ( in_V_q0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_out_V_we0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_p_shl1_cast_fu_225_p1);
    sensitive << ( p_shl1_fu_217_p3 );

    SC_METHOD(thread_p_shl1_fu_217_p3);
    sensitive << ( y_reg_133 );

    SC_METHOD(thread_p_shl_cast_fu_213_p1);
    sensitive << ( p_shl_fu_205_p3 );

    SC_METHOD(thread_p_shl_fu_205_p3);
    sensitive << ( y_reg_133 );

    SC_METHOD(thread_phi_mul_cast_fu_165_p1);
    sensitive << ( phi_mul_reg_100 );

    SC_METHOD(thread_tmp_105_fu_272_p2);
    sensitive << ( phi_mul_cast_reg_302 );
    sensitive << ( tmp_cast_fu_268_p1 );

    SC_METHOD(thread_tmp_106_fu_297_p1);
    sensitive << ( tmp_169_cast_fu_294_p1 );

    SC_METHOD(thread_tmp_107_fu_277_p1);
    sensitive << ( idx_2_reg_144 );

    SC_METHOD(thread_tmp_169_cast_fu_294_p1);
    sensitive << ( tmp_105_reg_356 );

    SC_METHOD(thread_tmp_52_fu_235_p2);
    sensitive << ( idx_1_reg_122 );

    SC_METHOD(thread_tmp_cast_fu_268_p1);
    sensitive << ( tmp_fu_263_p2 );

    SC_METHOD(thread_tmp_fu_263_p2);
    sensitive << ( tmp_s_reg_333 );
    sensitive << ( x_cast_fu_247_p1 );

    SC_METHOD(thread_tmp_s_fu_229_p2);
    sensitive << ( p_shl_cast_fu_213_p1 );
    sensitive << ( p_shl1_cast_fu_225_p1 );

    SC_METHOD(thread_x_1_fu_257_p2);
    sensitive << ( x_reg_154 );

    SC_METHOD(thread_x_cast_fu_247_p1);
    sensitive << ( x_reg_154 );

    SC_METHOD(thread_y_1_fu_199_p2);
    sensitive << ( y_reg_133 );

    SC_METHOD(thread_z_1_fu_181_p2);
    sensitive << ( z_reg_89 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond5_fu_175_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond4_fu_193_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_251_p2 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Padding_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, out_V_address0, "(port)out_V_address0");
    sc_trace(mVcdFile, out_V_ce0, "(port)out_V_ce0");
    sc_trace(mVcdFile, out_V_we0, "(port)out_V_we0");
    sc_trace(mVcdFile, out_V_d0, "(port)out_V_d0");
    sc_trace(mVcdFile, in_V_address0, "(port)in_V_address0");
    sc_trace(mVcdFile, in_V_ce0, "(port)in_V_ce0");
    sc_trace(mVcdFile, in_V_q0, "(port)in_V_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, phi_mul_cast_fu_165_p1, "phi_mul_cast_fu_165_p1");
    sc_trace(mVcdFile, phi_mul_cast_reg_302, "phi_mul_cast_reg_302");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, next_mul_fu_169_p2, "next_mul_fu_169_p2");
    sc_trace(mVcdFile, next_mul_reg_307, "next_mul_reg_307");
    sc_trace(mVcdFile, z_1_fu_181_p2, "z_1_fu_181_p2");
    sc_trace(mVcdFile, z_1_reg_315, "z_1_reg_315");
    sc_trace(mVcdFile, idx_5_fu_187_p2, "idx_5_fu_187_p2");
    sc_trace(mVcdFile, idx_5_reg_320, "idx_5_reg_320");
    sc_trace(mVcdFile, exitcond5_fu_175_p2, "exitcond5_fu_175_p2");
    sc_trace(mVcdFile, y_1_fu_199_p2, "y_1_fu_199_p2");
    sc_trace(mVcdFile, y_1_reg_328, "y_1_reg_328");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_s_fu_229_p2, "tmp_s_fu_229_p2");
    sc_trace(mVcdFile, tmp_s_reg_333, "tmp_s_reg_333");
    sc_trace(mVcdFile, exitcond4_fu_193_p2, "exitcond4_fu_193_p2");
    sc_trace(mVcdFile, tmp_52_fu_235_p2, "tmp_52_fu_235_p2");
    sc_trace(mVcdFile, tmp_52_reg_338, "tmp_52_reg_338");
    sc_trace(mVcdFile, indvars_iv_next_fu_241_p2, "indvars_iv_next_fu_241_p2");
    sc_trace(mVcdFile, x_1_fu_257_p2, "x_1_fu_257_p2");
    sc_trace(mVcdFile, x_1_reg_351, "x_1_reg_351");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_105_fu_272_p2, "tmp_105_fu_272_p2");
    sc_trace(mVcdFile, tmp_105_reg_356, "tmp_105_reg_356");
    sc_trace(mVcdFile, exitcond_fu_251_p2, "exitcond_fu_251_p2");
    sc_trace(mVcdFile, idx_4_fu_282_p2, "idx_4_fu_282_p2");
    sc_trace(mVcdFile, idx_4_reg_366, "idx_4_reg_366");
    sc_trace(mVcdFile, indvars_iv_next3_fu_288_p2, "indvars_iv_next3_fu_288_p2");
    sc_trace(mVcdFile, indvars_iv_reg_65, "indvars_iv_reg_65");
    sc_trace(mVcdFile, idx_reg_77, "idx_reg_77");
    sc_trace(mVcdFile, z_reg_89, "z_reg_89");
    sc_trace(mVcdFile, phi_mul_reg_100, "phi_mul_reg_100");
    sc_trace(mVcdFile, indvars_iv2_reg_111, "indvars_iv2_reg_111");
    sc_trace(mVcdFile, idx_1_reg_122, "idx_1_reg_122");
    sc_trace(mVcdFile, y_reg_133, "y_reg_133");
    sc_trace(mVcdFile, idx_2_reg_144, "idx_2_reg_144");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, x_reg_154, "x_reg_154");
    sc_trace(mVcdFile, tmp_107_fu_277_p1, "tmp_107_fu_277_p1");
    sc_trace(mVcdFile, tmp_106_fu_297_p1, "tmp_106_fu_297_p1");
    sc_trace(mVcdFile, p_shl_fu_205_p3, "p_shl_fu_205_p3");
    sc_trace(mVcdFile, p_shl1_fu_217_p3, "p_shl1_fu_217_p3");
    sc_trace(mVcdFile, p_shl_cast_fu_213_p1, "p_shl_cast_fu_213_p1");
    sc_trace(mVcdFile, p_shl1_cast_fu_225_p1, "p_shl1_cast_fu_225_p1");
    sc_trace(mVcdFile, x_cast_fu_247_p1, "x_cast_fu_247_p1");
    sc_trace(mVcdFile, tmp_fu_263_p2, "tmp_fu_263_p2");
    sc_trace(mVcdFile, tmp_cast_fu_268_p1, "tmp_cast_fu_268_p1");
    sc_trace(mVcdFile, tmp_169_cast_fu_294_p1, "tmp_169_cast_fu_294_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Padding_1::~Padding_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Padding_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond5_fu_175_p2.read(), ap_const_lv1_0))) {
        idx_1_reg_122 = idx_reg_77.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_251_p2.read()))) {
        idx_1_reg_122 = tmp_52_reg_338.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_fu_193_p2.read()))) {
        idx_2_reg_144 = idx_1_reg_122.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        idx_2_reg_144 = idx_4_reg_366.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        idx_reg_77 = ap_const_lv11_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(exitcond4_fu_193_p2.read(), ap_const_lv1_1))) {
        idx_reg_77 = idx_5_reg_320.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond5_fu_175_p2.read(), ap_const_lv1_0))) {
        indvars_iv2_reg_111 = indvars_iv_reg_65.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_251_p2.read()))) {
        indvars_iv2_reg_111 = indvars_iv_next3_fu_288_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        indvars_iv_reg_65 = ap_const_lv11_E;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(exitcond4_fu_193_p2.read(), ap_const_lv1_1))) {
        indvars_iv_reg_65 = indvars_iv_next_fu_241_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        phi_mul_reg_100 = ap_const_lv11_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(exitcond4_fu_193_p2.read(), ap_const_lv1_1))) {
        phi_mul_reg_100 = next_mul_reg_307.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_fu_193_p2.read()))) {
        x_reg_154 = ap_const_lv4_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        x_reg_154 = x_1_reg_351.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond5_fu_175_p2.read(), ap_const_lv1_0))) {
        y_reg_133 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_251_p2.read()))) {
        y_reg_133 = y_1_reg_328.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        z_reg_89 = ap_const_lv3_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(exitcond4_fu_193_p2.read(), ap_const_lv1_1))) {
        z_reg_89 = z_1_reg_315.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_251_p2.read()))) {
        idx_4_reg_366 = idx_4_fu_282_p2.read();
        tmp_105_reg_356 = tmp_105_fu_272_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond5_fu_175_p2.read(), ap_const_lv1_0))) {
        idx_5_reg_320 = idx_5_fu_187_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        next_mul_reg_307 = next_mul_fu_169_p2.read();
        phi_mul_cast_reg_302 = phi_mul_cast_fu_165_p1.read();
        z_1_reg_315 = z_1_fu_181_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond4_fu_193_p2.read()))) {
        tmp_52_reg_338 = tmp_52_fu_235_p2.read();
        tmp_s_reg_333 = tmp_s_fu_229_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        x_1_reg_351 = x_1_fu_257_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        y_1_reg_328 = y_1_fu_199_p2.read();
    }
}

void Padding_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Padding_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Padding_1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void Padding_1::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void Padding_1::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void Padding_1::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond5_fu_175_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void Padding_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Padding_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond5_fu_175_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Padding_1::thread_exitcond4_fu_193_p2() {
    exitcond4_fu_193_p2 = (!y_reg_133.read().is_01() || !ap_const_lv4_E.is_01())? sc_lv<1>(): sc_lv<1>(y_reg_133.read() == ap_const_lv4_E);
}

void Padding_1::thread_exitcond5_fu_175_p2() {
    exitcond5_fu_175_p2 = (!z_reg_89.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(z_reg_89.read() == ap_const_lv3_6);
}

void Padding_1::thread_exitcond_fu_251_p2() {
    exitcond_fu_251_p2 = (!idx_2_reg_144.read().is_01() || !indvars_iv2_reg_111.read().is_01())? sc_lv<1>(): sc_lv<1>(idx_2_reg_144.read() == indvars_iv2_reg_111.read());
}

void Padding_1::thread_idx_4_fu_282_p2() {
    idx_4_fu_282_p2 = (!idx_2_reg_144.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(idx_2_reg_144.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void Padding_1::thread_idx_5_fu_187_p2() {
    idx_5_fu_187_p2 = (!idx_reg_77.read().is_01() || !ap_const_lv11_C4.is_01())? sc_lv<11>(): (sc_biguint<11>(idx_reg_77.read()) + sc_biguint<11>(ap_const_lv11_C4));
}

void Padding_1::thread_in_V_address0() {
    in_V_address0 =  (sc_lv<11>) (tmp_107_fu_277_p1.read());
}

void Padding_1::thread_in_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        in_V_ce0 = ap_const_logic_1;
    } else {
        in_V_ce0 = ap_const_logic_0;
    }
}

void Padding_1::thread_indvars_iv_next3_fu_288_p2() {
    indvars_iv_next3_fu_288_p2 = (!indvars_iv2_reg_111.read().is_01() || !ap_const_lv11_E.is_01())? sc_lv<11>(): (sc_biguint<11>(indvars_iv2_reg_111.read()) + sc_biguint<11>(ap_const_lv11_E));
}

void Padding_1::thread_indvars_iv_next_fu_241_p2() {
    indvars_iv_next_fu_241_p2 = (!indvars_iv_reg_65.read().is_01() || !ap_const_lv11_C4.is_01())? sc_lv<11>(): (sc_biguint<11>(indvars_iv_reg_65.read()) + sc_biguint<11>(ap_const_lv11_C4));
}

void Padding_1::thread_next_mul_fu_169_p2() {
    next_mul_fu_169_p2 = (!phi_mul_reg_100.read().is_01() || !ap_const_lv11_C4.is_01())? sc_lv<11>(): (sc_biguint<11>(phi_mul_reg_100.read()) + sc_biguint<11>(ap_const_lv11_C4));
}

void Padding_1::thread_out_V_address0() {
    out_V_address0 =  (sc_lv<11>) (tmp_106_fu_297_p1.read());
}

void Padding_1::thread_out_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        out_V_ce0 = ap_const_logic_1;
    } else {
        out_V_ce0 = ap_const_logic_0;
    }
}

void Padding_1::thread_out_V_d0() {
    out_V_d0 = in_V_q0.read();
}

void Padding_1::thread_out_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        out_V_we0 = ap_const_logic_1;
    } else {
        out_V_we0 = ap_const_logic_0;
    }
}

void Padding_1::thread_p_shl1_cast_fu_225_p1() {
    p_shl1_cast_fu_225_p1 = esl_zext<9,5>(p_shl1_fu_217_p3.read());
}

void Padding_1::thread_p_shl1_fu_217_p3() {
    p_shl1_fu_217_p3 = esl_concat<4,1>(y_reg_133.read(), ap_const_lv1_0);
}

void Padding_1::thread_p_shl_cast_fu_213_p1() {
    p_shl_cast_fu_213_p1 = esl_zext<9,8>(p_shl_fu_205_p3.read());
}

void Padding_1::thread_p_shl_fu_205_p3() {
    p_shl_fu_205_p3 = esl_concat<4,4>(y_reg_133.read(), ap_const_lv4_0);
}

void Padding_1::thread_phi_mul_cast_fu_165_p1() {
    phi_mul_cast_fu_165_p1 = esl_zext<12,11>(phi_mul_reg_100.read());
}

void Padding_1::thread_tmp_105_fu_272_p2() {
    tmp_105_fu_272_p2 = (!tmp_cast_fu_268_p1.read().is_01() || !phi_mul_cast_reg_302.read().is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_cast_fu_268_p1.read()) + sc_biguint<12>(phi_mul_cast_reg_302.read()));
}

void Padding_1::thread_tmp_106_fu_297_p1() {
    tmp_106_fu_297_p1 = esl_zext<64,32>(tmp_169_cast_fu_294_p1.read());
}

void Padding_1::thread_tmp_107_fu_277_p1() {
    tmp_107_fu_277_p1 = esl_zext<64,11>(idx_2_reg_144.read());
}

void Padding_1::thread_tmp_169_cast_fu_294_p1() {
    tmp_169_cast_fu_294_p1 = esl_sext<32,12>(tmp_105_reg_356.read());
}

void Padding_1::thread_tmp_52_fu_235_p2() {
    tmp_52_fu_235_p2 = (!idx_1_reg_122.read().is_01() || !ap_const_lv11_E.is_01())? sc_lv<11>(): (sc_biguint<11>(idx_1_reg_122.read()) + sc_biguint<11>(ap_const_lv11_E));
}

void Padding_1::thread_tmp_cast_fu_268_p1() {
    tmp_cast_fu_268_p1 = esl_sext<12,9>(tmp_fu_263_p2.read());
}

void Padding_1::thread_tmp_fu_263_p2() {
    tmp_fu_263_p2 = (!tmp_s_reg_333.read().is_01() || !x_cast_fu_247_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_s_reg_333.read()) + sc_biguint<9>(x_cast_fu_247_p1.read()));
}

void Padding_1::thread_tmp_s_fu_229_p2() {
    tmp_s_fu_229_p2 = (!p_shl_cast_fu_213_p1.read().is_01() || !p_shl1_cast_fu_225_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(p_shl_cast_fu_213_p1.read()) - sc_biguint<9>(p_shl1_cast_fu_225_p1.read()));
}

void Padding_1::thread_x_1_fu_257_p2() {
    x_1_fu_257_p2 = (!x_reg_154.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(x_reg_154.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void Padding_1::thread_x_cast_fu_247_p1() {
    x_cast_fu_247_p1 = esl_zext<9,4>(x_reg_154.read());
}

void Padding_1::thread_y_1_fu_199_p2() {
    y_1_fu_199_p2 = (!y_reg_133.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(y_reg_133.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void Padding_1::thread_z_1_fu_181_p2() {
    z_1_fu_181_p2 = (!z_reg_89.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(z_reg_89.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void Padding_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond5_fu_175_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond4_fu_193_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond_fu_251_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}

