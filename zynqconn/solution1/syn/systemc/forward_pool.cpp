// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "forward_pool.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic forward_pool::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic forward_pool::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> forward_pool::ap_ST_fsm_state1 = "1";
const sc_lv<8> forward_pool::ap_ST_fsm_state2 = "10";
const sc_lv<8> forward_pool::ap_ST_fsm_state3 = "100";
const sc_lv<8> forward_pool::ap_ST_fsm_state4 = "1000";
const sc_lv<8> forward_pool::ap_ST_fsm_state5 = "10000";
const sc_lv<8> forward_pool::ap_ST_fsm_state6 = "100000";
const sc_lv<8> forward_pool::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> forward_pool::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> forward_pool::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> forward_pool::ap_const_lv32_1 = "1";
const sc_lv<1> forward_pool::ap_const_lv1_0 = "0";
const sc_lv<32> forward_pool::ap_const_lv32_2 = "10";
const sc_lv<32> forward_pool::ap_const_lv32_3 = "11";
const sc_lv<32> forward_pool::ap_const_lv32_5 = "101";
const sc_lv<1> forward_pool::ap_const_lv1_1 = "1";
const sc_lv<32> forward_pool::ap_const_lv32_6 = "110";
const sc_lv<32> forward_pool::ap_const_lv32_7 = "111";
const sc_lv<4> forward_pool::ap_const_lv4_0 = "0000";
const sc_lv<3> forward_pool::ap_const_lv3_0 = "000";
const sc_lv<32> forward_pool::ap_const_lv32_4 = "100";
const sc_lv<10> forward_pool::ap_const_lv10_0 = "0000000000";
const sc_lv<13> forward_pool::ap_const_lv13_0 = "0000000000000";
const sc_lv<16> forward_pool::ap_const_lv16_0 = "0000000000000000";
const sc_lv<4> forward_pool::ap_const_lv4_E = "1110";
const sc_lv<4> forward_pool::ap_const_lv4_1 = "1";
const sc_lv<5> forward_pool::ap_const_lv5_2 = "10";
const sc_lv<13> forward_pool::ap_const_lv13_310 = "1100010000";
const sc_lv<10> forward_pool::ap_const_lv10_C4 = "11000100";
const sc_lv<3> forward_pool::ap_const_lv3_6 = "110";
const sc_lv<3> forward_pool::ap_const_lv3_1 = "1";
const sc_lv<32> forward_pool::ap_const_lv32_F = "1111";
const sc_lv<17> forward_pool::ap_const_lv17_0 = "00000000000000000";
const sc_lv<32> forward_pool::ap_const_lv32_10 = "10000";
const bool forward_pool::ap_const_boolean_1 = true;

forward_pool::forward_pool(sc_module_name name) : sc_module(name), mVcdFile(0) {

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

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_189_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_189_p2 );

    SC_METHOD(thread_avg_V_fu_450_p2);
    sensitive << ( pool_layer_2_2_1_28_28_6_input_data_V_q0 );
    sensitive << ( p_Val2_s_reg_164 );

    SC_METHOD(thread_ch_fu_301_p2);
    sensitive << ( p_z_assign_reg_108 );

    SC_METHOD(thread_exitcond1_fu_223_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( p_y_assign_1_reg_97 );

    SC_METHOD(thread_exitcond2_fu_189_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_x_assign_reg_86 );

    SC_METHOD(thread_exitcond_fu_295_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( p_z_assign_reg_108 );

    SC_METHOD(thread_h_2_cast4_fu_243_p1);
    sensitive << ( h_2_fu_235_p3 );

    SC_METHOD(thread_h_2_cast_fu_247_p1);
    sensitive << ( h_2_fu_235_p3 );

    SC_METHOD(thread_h_2_fu_235_p3);
    sensitive << ( p_y_assign_1_reg_97 );

    SC_METHOD(thread_h_fu_434_p2);
    sensitive << ( p_y_assign_2_reg_176 );

    SC_METHOD(thread_next_mul2_fu_283_p2);
    sensitive << ( phi_mul1_reg_131 );

    SC_METHOD(thread_next_mul_fu_289_p2);
    sensitive << ( phi_mul_reg_119 );

    SC_METHOD(thread_o_x_fu_229_p2);
    sensitive << ( p_y_assign_1_reg_97 );

    SC_METHOD(thread_o_y_fu_195_p2);
    sensitive << ( p_x_assign_reg_86 );

    SC_METHOD(thread_p_neg_fu_347_p2);
    sensitive << ( tmp_27_tr_fu_335_p1 );

    SC_METHOD(thread_p_shl2_cast_fu_269_p1);
    sensitive << ( p_shl2_fu_261_p3 );

    SC_METHOD(thread_p_shl2_fu_261_p3);
    sensitive << ( p_y_assign_1_reg_97 );

    SC_METHOD(thread_p_x_assign_3_cast_fu_209_p1);
    sensitive << ( v_fu_201_p3 );

    SC_METHOD(thread_p_x_assign_cast6_fu_185_p1);
    sensitive << ( p_x_assign_reg_86 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_input_data_V_address0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_20_fu_446_p1 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_input_data_V_ce0);
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_output_data_V_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_4_fu_330_p1 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_output_data_V_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_output_data_V_d0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_59_fu_339_p3 );
    sensitive << ( tmp_15_fu_381_p2 );
    sensitive << ( tmp_16_fu_387_p1 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_output_data_V_we0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_9_fu_311_p2 );

    SC_METHOD(thread_tmp1_cast_fu_321_p1);
    sensitive << ( tmp1_fu_316_p2 );

    SC_METHOD(thread_tmp1_fu_316_p2);
    sensitive << ( p_x_assign_cast6_reg_456 );
    sensitive << ( phi_mul_reg_119 );

    SC_METHOD(thread_tmp_10_fu_363_p1);
    sensitive << ( tmp_s_fu_353_p4 );

    SC_METHOD(thread_tmp_11_fu_400_p2);
    sensitive << ( tmp_1_cast_reg_492 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( p_y_assign_2_reg_176 );

    SC_METHOD(thread_tmp_13_fu_367_p4);
    sensitive << ( t_V_reg_142 );

    SC_METHOD(thread_tmp_14_fu_377_p1);
    sensitive << ( tmp_13_fu_367_p4 );

    SC_METHOD(thread_tmp_15_fu_381_p2);
    sensitive << ( tmp_10_fu_363_p1 );

    SC_METHOD(thread_tmp_16_fu_387_p1);
    sensitive << ( tmp_14_fu_377_p1 );

    SC_METHOD(thread_tmp_18_fu_417_p2);
    sensitive << ( tmp_60_fu_405_p2 );
    sensitive << ( tmp_61_fu_411_p2 );

    SC_METHOD(thread_tmp_19_fu_429_p2);
    sensitive << ( tmp_cast7_reg_520 );
    sensitive << ( tmp_fu_423_p2 );

    SC_METHOD(thread_tmp_1_cast_fu_257_p1);
    sensitive << ( tmp_1_fu_251_p2 );

    SC_METHOD(thread_tmp_1_fu_251_p2);
    sensitive << ( h_2_fu_235_p3 );

    SC_METHOD(thread_tmp_20_fu_446_p1);
    sensitive << ( tmp_19_reg_531 );

    SC_METHOD(thread_tmp_27_tr_fu_335_p1);
    sensitive << ( t_V_reg_142 );

    SC_METHOD(thread_tmp_3_cast_fu_279_p1);
    sensitive << ( tmp_3_fu_273_p2 );

    SC_METHOD(thread_tmp_3_fu_273_p2);
    sensitive << ( p_shl2_cast_fu_269_p1 );
    sensitive << ( h_2_cast_fu_247_p1 );

    SC_METHOD(thread_tmp_4_fu_330_p1);
    sensitive << ( tmp_7_fu_325_p2 );

    SC_METHOD(thread_tmp_59_fu_339_p3);
    sensitive << ( t_V_reg_142 );

    SC_METHOD(thread_tmp_60_fu_405_p2);
    sensitive << ( p_y_assign_2_reg_176 );

    SC_METHOD(thread_tmp_61_fu_411_p2);
    sensitive << ( p_y_assign_2_reg_176 );

    SC_METHOD(thread_tmp_7_fu_325_p2);
    sensitive << ( tmp_3_cast_reg_497 );
    sensitive << ( tmp1_cast_fu_321_p1 );

    SC_METHOD(thread_tmp_8_cast_fu_219_p1);
    sensitive << ( tmp_8_fu_213_p2 );

    SC_METHOD(thread_tmp_8_fu_213_p2);
    sensitive << ( v_fu_201_p3 );

    SC_METHOD(thread_tmp_9_fu_311_p2);
    sensitive << ( tmp_8_cast_reg_474 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( p_x_assign_1_reg_154 );

    SC_METHOD(thread_tmp_cast7_fu_307_p1);
    sensitive << ( phi_mul1_reg_131 );

    SC_METHOD(thread_tmp_fu_423_p2);
    sensitive << ( p_x_assign_1_reg_154 );
    sensitive << ( tmp_18_fu_417_p2 );

    SC_METHOD(thread_tmp_s_fu_353_p4);
    sensitive << ( p_neg_fu_347_p2 );

    SC_METHOD(thread_v_1_fu_440_p2);
    sensitive << ( p_x_assign_1_reg_154 );

    SC_METHOD(thread_v_fu_201_p3);
    sensitive << ( p_x_assign_reg_86 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_189_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond1_fu_223_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_295_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_11_fu_400_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_9_fu_311_p2 );

    ap_CS_fsm = "00000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "forward_pool_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_input_data_V_address0, "(port)pool_layer_2_2_1_28_28_6_input_data_V_address0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_input_data_V_ce0, "(port)pool_layer_2_2_1_28_28_6_input_data_V_ce0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_input_data_V_q0, "(port)pool_layer_2_2_1_28_28_6_input_data_V_q0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_output_data_V_address0, "(port)pool_layer_2_2_1_28_28_6_output_data_V_address0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_output_data_V_ce0, "(port)pool_layer_2_2_1_28_28_6_output_data_V_ce0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_output_data_V_we0, "(port)pool_layer_2_2_1_28_28_6_output_data_V_we0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_output_data_V_d0, "(port)pool_layer_2_2_1_28_28_6_output_data_V_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, p_x_assign_cast6_fu_185_p1, "p_x_assign_cast6_fu_185_p1");
    sc_trace(mVcdFile, p_x_assign_cast6_reg_456, "p_x_assign_cast6_reg_456");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, o_y_fu_195_p2, "o_y_fu_195_p2");
    sc_trace(mVcdFile, o_y_reg_464, "o_y_reg_464");
    sc_trace(mVcdFile, p_x_assign_3_cast_fu_209_p1, "p_x_assign_3_cast_fu_209_p1");
    sc_trace(mVcdFile, p_x_assign_3_cast_reg_469, "p_x_assign_3_cast_reg_469");
    sc_trace(mVcdFile, exitcond2_fu_189_p2, "exitcond2_fu_189_p2");
    sc_trace(mVcdFile, tmp_8_cast_fu_219_p1, "tmp_8_cast_fu_219_p1");
    sc_trace(mVcdFile, tmp_8_cast_reg_474, "tmp_8_cast_reg_474");
    sc_trace(mVcdFile, o_x_fu_229_p2, "o_x_fu_229_p2");
    sc_trace(mVcdFile, o_x_reg_482, "o_x_reg_482");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, h_2_cast4_fu_243_p1, "h_2_cast4_fu_243_p1");
    sc_trace(mVcdFile, h_2_cast4_reg_487, "h_2_cast4_reg_487");
    sc_trace(mVcdFile, exitcond1_fu_223_p2, "exitcond1_fu_223_p2");
    sc_trace(mVcdFile, tmp_1_cast_fu_257_p1, "tmp_1_cast_fu_257_p1");
    sc_trace(mVcdFile, tmp_1_cast_reg_492, "tmp_1_cast_reg_492");
    sc_trace(mVcdFile, tmp_3_cast_fu_279_p1, "tmp_3_cast_fu_279_p1");
    sc_trace(mVcdFile, tmp_3_cast_reg_497, "tmp_3_cast_reg_497");
    sc_trace(mVcdFile, next_mul2_fu_283_p2, "next_mul2_fu_283_p2");
    sc_trace(mVcdFile, next_mul2_reg_502, "next_mul2_reg_502");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, next_mul_fu_289_p2, "next_mul_fu_289_p2");
    sc_trace(mVcdFile, next_mul_reg_507, "next_mul_reg_507");
    sc_trace(mVcdFile, ch_fu_301_p2, "ch_fu_301_p2");
    sc_trace(mVcdFile, ch_reg_515, "ch_reg_515");
    sc_trace(mVcdFile, tmp_cast7_fu_307_p1, "tmp_cast7_fu_307_p1");
    sc_trace(mVcdFile, tmp_cast7_reg_520, "tmp_cast7_reg_520");
    sc_trace(mVcdFile, exitcond_fu_295_p2, "exitcond_fu_295_p2");
    sc_trace(mVcdFile, tmp_19_fu_429_p2, "tmp_19_fu_429_p2");
    sc_trace(mVcdFile, tmp_19_reg_531, "tmp_19_reg_531");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_11_fu_400_p2, "tmp_11_fu_400_p2");
    sc_trace(mVcdFile, h_fu_434_p2, "h_fu_434_p2");
    sc_trace(mVcdFile, h_reg_536, "h_reg_536");
    sc_trace(mVcdFile, v_1_fu_440_p2, "v_1_fu_440_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, avg_V_fu_450_p2, "avg_V_fu_450_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, p_x_assign_reg_86, "p_x_assign_reg_86");
    sc_trace(mVcdFile, p_y_assign_1_reg_97, "p_y_assign_1_reg_97");
    sc_trace(mVcdFile, p_z_assign_reg_108, "p_z_assign_reg_108");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_9_fu_311_p2, "tmp_9_fu_311_p2");
    sc_trace(mVcdFile, phi_mul_reg_119, "phi_mul_reg_119");
    sc_trace(mVcdFile, phi_mul1_reg_131, "phi_mul1_reg_131");
    sc_trace(mVcdFile, t_V_reg_142, "t_V_reg_142");
    sc_trace(mVcdFile, p_x_assign_1_reg_154, "p_x_assign_1_reg_154");
    sc_trace(mVcdFile, p_Val2_s_reg_164, "p_Val2_s_reg_164");
    sc_trace(mVcdFile, p_y_assign_2_reg_176, "p_y_assign_2_reg_176");
    sc_trace(mVcdFile, tmp_4_fu_330_p1, "tmp_4_fu_330_p1");
    sc_trace(mVcdFile, tmp_20_fu_446_p1, "tmp_20_fu_446_p1");
    sc_trace(mVcdFile, v_fu_201_p3, "v_fu_201_p3");
    sc_trace(mVcdFile, tmp_8_fu_213_p2, "tmp_8_fu_213_p2");
    sc_trace(mVcdFile, h_2_fu_235_p3, "h_2_fu_235_p3");
    sc_trace(mVcdFile, tmp_1_fu_251_p2, "tmp_1_fu_251_p2");
    sc_trace(mVcdFile, p_shl2_fu_261_p3, "p_shl2_fu_261_p3");
    sc_trace(mVcdFile, p_shl2_cast_fu_269_p1, "p_shl2_cast_fu_269_p1");
    sc_trace(mVcdFile, h_2_cast_fu_247_p1, "h_2_cast_fu_247_p1");
    sc_trace(mVcdFile, tmp_3_fu_273_p2, "tmp_3_fu_273_p2");
    sc_trace(mVcdFile, tmp1_fu_316_p2, "tmp1_fu_316_p2");
    sc_trace(mVcdFile, tmp1_cast_fu_321_p1, "tmp1_cast_fu_321_p1");
    sc_trace(mVcdFile, tmp_7_fu_325_p2, "tmp_7_fu_325_p2");
    sc_trace(mVcdFile, tmp_27_tr_fu_335_p1, "tmp_27_tr_fu_335_p1");
    sc_trace(mVcdFile, p_neg_fu_347_p2, "p_neg_fu_347_p2");
    sc_trace(mVcdFile, tmp_s_fu_353_p4, "tmp_s_fu_353_p4");
    sc_trace(mVcdFile, tmp_13_fu_367_p4, "tmp_13_fu_367_p4");
    sc_trace(mVcdFile, tmp_10_fu_363_p1, "tmp_10_fu_363_p1");
    sc_trace(mVcdFile, tmp_14_fu_377_p1, "tmp_14_fu_377_p1");
    sc_trace(mVcdFile, tmp_59_fu_339_p3, "tmp_59_fu_339_p3");
    sc_trace(mVcdFile, tmp_15_fu_381_p2, "tmp_15_fu_381_p2");
    sc_trace(mVcdFile, tmp_16_fu_387_p1, "tmp_16_fu_387_p1");
    sc_trace(mVcdFile, tmp_60_fu_405_p2, "tmp_60_fu_405_p2");
    sc_trace(mVcdFile, tmp_61_fu_411_p2, "tmp_61_fu_411_p2");
    sc_trace(mVcdFile, tmp_18_fu_417_p2, "tmp_18_fu_417_p2");
    sc_trace(mVcdFile, tmp_fu_423_p2, "tmp_fu_423_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

forward_pool::~forward_pool() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void forward_pool::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_9_fu_311_p2.read()))) {
        p_Val2_s_reg_164 = t_V_reg_142.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        p_Val2_s_reg_164 = avg_V_fu_450_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_11_fu_400_p2.read()))) {
        p_x_assign_1_reg_154 = v_1_fu_440_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_295_p2.read()))) {
        p_x_assign_1_reg_154 = p_x_assign_3_cast_reg_469.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_223_p2.read(), ap_const_lv1_1))) {
        p_x_assign_reg_86 = o_y_reg_464.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_x_assign_reg_86 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_295_p2.read(), ap_const_lv1_1))) {
        p_y_assign_1_reg_97 = o_x_reg_482.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(exitcond2_fu_189_p2.read(), ap_const_lv1_0))) {
        p_y_assign_1_reg_97 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_9_fu_311_p2.read()))) {
        p_y_assign_2_reg_176 = h_2_cast4_reg_487.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        p_y_assign_2_reg_176 = h_reg_536.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_311_p2.read()))) {
        p_z_assign_reg_108 = ch_reg_515.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_223_p2.read()))) {
        p_z_assign_reg_108 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_311_p2.read()))) {
        phi_mul1_reg_131 = next_mul2_reg_502.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_223_p2.read()))) {
        phi_mul1_reg_131 = ap_const_lv13_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_311_p2.read()))) {
        phi_mul_reg_119 = next_mul_reg_507.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_223_p2.read()))) {
        phi_mul_reg_119 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_11_fu_400_p2.read()))) {
        t_V_reg_142 = p_Val2_s_reg_164.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_295_p2.read()))) {
        t_V_reg_142 = ap_const_lv16_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ch_reg_515 = ch_fu_301_p2.read();
        next_mul2_reg_502 = next_mul2_fu_283_p2.read();
        next_mul_reg_507 = next_mul_fu_289_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_223_p2.read()))) {
        h_2_cast4_reg_487 = h_2_cast4_fu_243_p1.read();
        tmp_1_cast_reg_492 = tmp_1_cast_fu_257_p1.read();
        tmp_3_cast_reg_497 = tmp_3_cast_fu_279_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(tmp_11_fu_400_p2.read(), ap_const_lv1_1))) {
        h_reg_536 = h_fu_434_p2.read();
        tmp_19_reg_531 = tmp_19_fu_429_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        o_x_reg_482 = o_x_fu_229_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        o_y_reg_464 = o_y_fu_195_p2.read();
        p_x_assign_cast6_reg_456 = p_x_assign_cast6_fu_185_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_189_p2.read(), ap_const_lv1_0))) {
        p_x_assign_3_cast_reg_469 = p_x_assign_3_cast_fu_209_p1.read();
        tmp_8_cast_reg_474 = tmp_8_cast_fu_219_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_295_p2.read()))) {
        tmp_cast7_reg_520 = tmp_cast7_fu_307_p1.read();
    }
}

void forward_pool::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void forward_pool::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void forward_pool::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void forward_pool::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void forward_pool::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void forward_pool::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void forward_pool::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void forward_pool::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void forward_pool::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond2_fu_189_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void forward_pool::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void forward_pool::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond2_fu_189_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void forward_pool::thread_avg_V_fu_450_p2() {
    avg_V_fu_450_p2 = (!pool_layer_2_2_1_28_28_6_input_data_V_q0.read().is_01() || !p_Val2_s_reg_164.read().is_01())? sc_lv<16>(): (sc_biguint<16>(pool_layer_2_2_1_28_28_6_input_data_V_q0.read()) + sc_biguint<16>(p_Val2_s_reg_164.read()));
}

void forward_pool::thread_ch_fu_301_p2() {
    ch_fu_301_p2 = (!p_z_assign_reg_108.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(p_z_assign_reg_108.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void forward_pool::thread_exitcond1_fu_223_p2() {
    exitcond1_fu_223_p2 = (!p_y_assign_1_reg_97.read().is_01() || !ap_const_lv4_E.is_01())? sc_lv<1>(): sc_lv<1>(p_y_assign_1_reg_97.read() == ap_const_lv4_E);
}

void forward_pool::thread_exitcond2_fu_189_p2() {
    exitcond2_fu_189_p2 = (!p_x_assign_reg_86.read().is_01() || !ap_const_lv4_E.is_01())? sc_lv<1>(): sc_lv<1>(p_x_assign_reg_86.read() == ap_const_lv4_E);
}

void forward_pool::thread_exitcond_fu_295_p2() {
    exitcond_fu_295_p2 = (!p_z_assign_reg_108.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(p_z_assign_reg_108.read() == ap_const_lv3_6);
}

void forward_pool::thread_h_2_cast4_fu_243_p1() {
    h_2_cast4_fu_243_p1 = esl_zext<32,5>(h_2_fu_235_p3.read());
}

void forward_pool::thread_h_2_cast_fu_247_p1() {
    h_2_cast_fu_247_p1 = esl_zext<9,5>(h_2_fu_235_p3.read());
}

void forward_pool::thread_h_2_fu_235_p3() {
    h_2_fu_235_p3 = esl_concat<4,1>(p_y_assign_1_reg_97.read(), ap_const_lv1_0);
}

void forward_pool::thread_h_fu_434_p2() {
    h_fu_434_p2 = (!ap_const_lv32_1.is_01() || !p_y_assign_2_reg_176.read().is_01())? sc_lv<32>(): (sc_biguint<32>(ap_const_lv32_1) + sc_biguint<32>(p_y_assign_2_reg_176.read()));
}

void forward_pool::thread_next_mul2_fu_283_p2() {
    next_mul2_fu_283_p2 = (!phi_mul1_reg_131.read().is_01() || !ap_const_lv13_310.is_01())? sc_lv<13>(): (sc_biguint<13>(phi_mul1_reg_131.read()) + sc_biguint<13>(ap_const_lv13_310));
}

void forward_pool::thread_next_mul_fu_289_p2() {
    next_mul_fu_289_p2 = (!phi_mul_reg_119.read().is_01() || !ap_const_lv10_C4.is_01())? sc_lv<10>(): (sc_biguint<10>(phi_mul_reg_119.read()) + sc_biguint<10>(ap_const_lv10_C4));
}

void forward_pool::thread_o_x_fu_229_p2() {
    o_x_fu_229_p2 = (!p_y_assign_1_reg_97.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(p_y_assign_1_reg_97.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void forward_pool::thread_o_y_fu_195_p2() {
    o_y_fu_195_p2 = (!p_x_assign_reg_86.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(p_x_assign_reg_86.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void forward_pool::thread_p_neg_fu_347_p2() {
    p_neg_fu_347_p2 = (!ap_const_lv17_0.is_01() || !tmp_27_tr_fu_335_p1.read().is_01())? sc_lv<17>(): (sc_biguint<17>(ap_const_lv17_0) - sc_bigint<17>(tmp_27_tr_fu_335_p1.read()));
}

void forward_pool::thread_p_shl2_cast_fu_269_p1() {
    p_shl2_cast_fu_269_p1 = esl_zext<9,8>(p_shl2_fu_261_p3.read());
}

void forward_pool::thread_p_shl2_fu_261_p3() {
    p_shl2_fu_261_p3 = esl_concat<4,4>(p_y_assign_1_reg_97.read(), ap_const_lv4_0);
}

void forward_pool::thread_p_x_assign_3_cast_fu_209_p1() {
    p_x_assign_3_cast_fu_209_p1 = esl_zext<32,5>(v_fu_201_p3.read());
}

void forward_pool::thread_p_x_assign_cast6_fu_185_p1() {
    p_x_assign_cast6_fu_185_p1 = esl_zext<10,4>(p_x_assign_reg_86.read());
}

void forward_pool::thread_pool_layer_2_2_1_28_28_6_input_data_V_address0() {
    pool_layer_2_2_1_28_28_6_input_data_V_address0 =  (sc_lv<13>) (tmp_20_fu_446_p1.read());
}

void forward_pool::thread_pool_layer_2_2_1_28_28_6_input_data_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        pool_layer_2_2_1_28_28_6_input_data_V_ce0 = ap_const_logic_1;
    } else {
        pool_layer_2_2_1_28_28_6_input_data_V_ce0 = ap_const_logic_0;
    }
}

void forward_pool::thread_pool_layer_2_2_1_28_28_6_output_data_V_address0() {
    pool_layer_2_2_1_28_28_6_output_data_V_address0 =  (sc_lv<11>) (tmp_4_fu_330_p1.read());
}

void forward_pool::thread_pool_layer_2_2_1_28_28_6_output_data_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = ap_const_logic_1;
    } else {
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = ap_const_logic_0;
    }
}

void forward_pool::thread_pool_layer_2_2_1_28_28_6_output_data_V_d0() {
    pool_layer_2_2_1_28_28_6_output_data_V_d0 = (!tmp_59_fu_339_p3.read()[0].is_01())? sc_lv<16>(): ((tmp_59_fu_339_p3.read()[0].to_bool())? tmp_15_fu_381_p2.read(): tmp_16_fu_387_p1.read());
}

void forward_pool::thread_pool_layer_2_2_1_28_28_6_output_data_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_311_p2.read()))) {
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = ap_const_logic_1;
    } else {
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = ap_const_logic_0;
    }
}

void forward_pool::thread_tmp1_cast_fu_321_p1() {
    tmp1_cast_fu_321_p1 = esl_zext<12,10>(tmp1_fu_316_p2.read());
}

void forward_pool::thread_tmp1_fu_316_p2() {
    tmp1_fu_316_p2 = (!p_x_assign_cast6_reg_456.read().is_01() || !phi_mul_reg_119.read().is_01())? sc_lv<10>(): (sc_biguint<10>(p_x_assign_cast6_reg_456.read()) + sc_biguint<10>(phi_mul_reg_119.read()));
}

void forward_pool::thread_tmp_10_fu_363_p1() {
    tmp_10_fu_363_p1 = esl_zext<16,15>(tmp_s_fu_353_p4.read());
}

void forward_pool::thread_tmp_11_fu_400_p2() {
    tmp_11_fu_400_p2 = (!p_y_assign_2_reg_176.read().is_01() || !tmp_1_cast_reg_492.read().is_01())? sc_lv<1>(): (sc_bigint<32>(p_y_assign_2_reg_176.read()) < sc_bigint<32>(tmp_1_cast_reg_492.read()));
}

void forward_pool::thread_tmp_13_fu_367_p4() {
    tmp_13_fu_367_p4 = t_V_reg_142.read().range(15, 2);
}

void forward_pool::thread_tmp_14_fu_377_p1() {
    tmp_14_fu_377_p1 = esl_sext<15,14>(tmp_13_fu_367_p4.read());
}

void forward_pool::thread_tmp_15_fu_381_p2() {
    tmp_15_fu_381_p2 = (!ap_const_lv16_0.is_01() || !tmp_10_fu_363_p1.read().is_01())? sc_lv<16>(): (sc_biguint<16>(ap_const_lv16_0) - sc_biguint<16>(tmp_10_fu_363_p1.read()));
}

void forward_pool::thread_tmp_16_fu_387_p1() {
    tmp_16_fu_387_p1 = esl_zext<16,15>(tmp_14_fu_377_p1.read());
}

void forward_pool::thread_tmp_18_fu_417_p2() {
    tmp_18_fu_417_p2 = (!tmp_60_fu_405_p2.read().is_01() || !tmp_61_fu_411_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_60_fu_405_p2.read()) - sc_biguint<32>(tmp_61_fu_411_p2.read()));
}

void forward_pool::thread_tmp_19_fu_429_p2() {
    tmp_19_fu_429_p2 = (!tmp_fu_423_p2.read().is_01() || !tmp_cast7_reg_520.read().is_01())? sc_lv<32>(): (sc_biguint<32>(tmp_fu_423_p2.read()) + sc_biguint<32>(tmp_cast7_reg_520.read()));
}

void forward_pool::thread_tmp_1_cast_fu_257_p1() {
    tmp_1_cast_fu_257_p1 = esl_zext<32,5>(tmp_1_fu_251_p2.read());
}

void forward_pool::thread_tmp_1_fu_251_p2() {
    tmp_1_fu_251_p2 = (!h_2_fu_235_p3.read().is_01() || !ap_const_lv5_2.is_01())? sc_lv<5>(): (sc_biguint<5>(h_2_fu_235_p3.read()) + sc_biguint<5>(ap_const_lv5_2));
}

void forward_pool::thread_tmp_20_fu_446_p1() {
    tmp_20_fu_446_p1 = esl_sext<64,32>(tmp_19_reg_531.read());
}

void forward_pool::thread_tmp_27_tr_fu_335_p1() {
    tmp_27_tr_fu_335_p1 = esl_sext<17,16>(t_V_reg_142.read());
}

void forward_pool::thread_tmp_3_cast_fu_279_p1() {
    tmp_3_cast_fu_279_p1 = esl_sext<12,9>(tmp_3_fu_273_p2.read());
}

void forward_pool::thread_tmp_3_fu_273_p2() {
    tmp_3_fu_273_p2 = (!p_shl2_cast_fu_269_p1.read().is_01() || !h_2_cast_fu_247_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(p_shl2_cast_fu_269_p1.read()) - sc_biguint<9>(h_2_cast_fu_247_p1.read()));
}

void forward_pool::thread_tmp_4_fu_330_p1() {
    tmp_4_fu_330_p1 = esl_sext<64,12>(tmp_7_fu_325_p2.read());
}

void forward_pool::thread_tmp_59_fu_339_p3() {
    tmp_59_fu_339_p3 = t_V_reg_142.read().range(15, 15);
}

void forward_pool::thread_tmp_60_fu_405_p2() {
    tmp_60_fu_405_p2 = (!ap_const_lv32_5.is_01())? sc_lv<32>(): p_y_assign_2_reg_176.read() << (unsigned short)ap_const_lv32_5.to_uint();
}

void forward_pool::thread_tmp_61_fu_411_p2() {
    tmp_61_fu_411_p2 = (!ap_const_lv32_2.is_01())? sc_lv<32>(): p_y_assign_2_reg_176.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void forward_pool::thread_tmp_7_fu_325_p2() {
    tmp_7_fu_325_p2 = (!tmp1_cast_fu_321_p1.read().is_01() || !tmp_3_cast_reg_497.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp1_cast_fu_321_p1.read()) + sc_bigint<12>(tmp_3_cast_reg_497.read()));
}

void forward_pool::thread_tmp_8_cast_fu_219_p1() {
    tmp_8_cast_fu_219_p1 = esl_zext<32,5>(tmp_8_fu_213_p2.read());
}

void forward_pool::thread_tmp_8_fu_213_p2() {
    tmp_8_fu_213_p2 = (!v_fu_201_p3.read().is_01() || !ap_const_lv5_2.is_01())? sc_lv<5>(): (sc_biguint<5>(v_fu_201_p3.read()) + sc_biguint<5>(ap_const_lv5_2));
}

void forward_pool::thread_tmp_9_fu_311_p2() {
    tmp_9_fu_311_p2 = (!p_x_assign_1_reg_154.read().is_01() || !tmp_8_cast_reg_474.read().is_01())? sc_lv<1>(): (sc_bigint<32>(p_x_assign_1_reg_154.read()) < sc_bigint<32>(tmp_8_cast_reg_474.read()));
}

void forward_pool::thread_tmp_cast7_fu_307_p1() {
    tmp_cast7_fu_307_p1 = esl_zext<32,13>(phi_mul1_reg_131.read());
}

void forward_pool::thread_tmp_fu_423_p2() {
    tmp_fu_423_p2 = (!p_x_assign_1_reg_154.read().is_01() || !tmp_18_fu_417_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(p_x_assign_1_reg_154.read()) + sc_biguint<32>(tmp_18_fu_417_p2.read()));
}

void forward_pool::thread_tmp_s_fu_353_p4() {
    tmp_s_fu_353_p4 = p_neg_fu_347_p2.read().range(16, 2);
}

void forward_pool::thread_v_1_fu_440_p2() {
    v_1_fu_440_p2 = (!p_x_assign_1_reg_154.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(p_x_assign_1_reg_154.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void forward_pool::thread_v_fu_201_p3() {
    v_fu_201_p3 = esl_concat<4,1>(p_x_assign_reg_86.read(), ap_const_lv1_0);
}

void forward_pool::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond2_fu_189_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(exitcond1_fu_223_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_295_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_311_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_11_fu_400_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXX";
            break;
    }
}

}
