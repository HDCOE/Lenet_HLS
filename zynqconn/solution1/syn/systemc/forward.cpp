// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "forward.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic forward::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic forward::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<10> forward::ap_ST_fsm_state1 = "1";
const sc_lv<10> forward::ap_ST_fsm_state2 = "10";
const sc_lv<10> forward::ap_ST_fsm_state3 = "100";
const sc_lv<10> forward::ap_ST_fsm_state4 = "1000";
const sc_lv<10> forward::ap_ST_fsm_state5 = "10000";
const sc_lv<10> forward::ap_ST_fsm_state6 = "100000";
const sc_lv<10> forward::ap_ST_fsm_state7 = "1000000";
const sc_lv<10> forward::ap_ST_fsm_state8 = "10000000";
const sc_lv<10> forward::ap_ST_fsm_state9 = "100000000";
const sc_lv<10> forward::ap_ST_fsm_state10 = "1000000000";
const sc_lv<32> forward::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> forward::ap_const_lv32_2 = "10";
const sc_lv<1> forward::ap_const_lv1_0 = "0";
const sc_lv<32> forward::ap_const_lv32_4 = "100";
const sc_lv<32> forward::ap_const_lv32_5 = "101";
const sc_lv<32> forward::ap_const_lv32_6 = "110";
const sc_lv<32> forward::ap_const_lv32_8 = "1000";
const sc_lv<11> forward::ap_const_lv11_0 = "00000000000";
const sc_lv<32> forward::ap_const_lv32_1 = "1";
const sc_lv<32> forward::ap_const_lv32_3 = "11";
const sc_lv<1> forward::ap_const_lv1_1 = "1";
const sc_lv<4> forward::ap_const_lv4_0 = "0000";
const sc_lv<32> forward::ap_const_lv32_7 = "111";
const sc_lv<3> forward::ap_const_lv3_0 = "000";
const sc_lv<32> forward::ap_const_lv32_9 = "1001";
const sc_lv<11> forward::ap_const_lv11_498 = "10010011000";
const sc_lv<11> forward::ap_const_lv11_1 = "1";
const sc_lv<4> forward::ap_const_lv4_E = "1110";
const sc_lv<4> forward::ap_const_lv4_1 = "1";
const sc_lv<3> forward::ap_const_lv3_6 = "110";
const sc_lv<3> forward::ap_const_lv3_1 = "1";
const sc_lv<11> forward::ap_const_lv11_C4 = "11000100";
const sc_lv<32> forward::ap_const_lv32_F = "1111";
const sc_lv<15> forward::ap_const_lv15_0 = "000000000000000";
const bool forward::ap_const_boolean_1 = true;

forward::forward(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_forward_pool_fu_182 = new forward_pool("grp_forward_pool_fu_182");
    grp_forward_pool_fu_182->ap_clk(ap_clk);
    grp_forward_pool_fu_182->ap_rst(ap_rst);
    grp_forward_pool_fu_182->ap_start(grp_forward_pool_fu_182_ap_start);
    grp_forward_pool_fu_182->ap_done(grp_forward_pool_fu_182_ap_done);
    grp_forward_pool_fu_182->ap_idle(grp_forward_pool_fu_182_ap_idle);
    grp_forward_pool_fu_182->ap_ready(grp_forward_pool_fu_182_ap_ready);
    grp_forward_pool_fu_182->pool_layer_2_2_1_28_28_6_input_data_V_address0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_address0);
    grp_forward_pool_fu_182->pool_layer_2_2_1_28_28_6_input_data_V_ce0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_ce0);
    grp_forward_pool_fu_182->pool_layer_2_2_1_28_28_6_input_data_V_q0(pool_layer_2_2_1_28_28_6_input_data_V_q0);
    grp_forward_pool_fu_182->pool_layer_2_2_1_28_28_6_output_data_V_address0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_address0);
    grp_forward_pool_fu_182->pool_layer_2_2_1_28_28_6_output_data_V_ce0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_ce0);
    grp_forward_pool_fu_182->pool_layer_2_2_1_28_28_6_output_data_V_we0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_we0);
    grp_forward_pool_fu_182->pool_layer_2_2_1_28_28_6_output_data_V_d0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_d0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
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

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_s_fu_336_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_s_fu_336_p2 );

    SC_METHOD(thread_exitcond5_i_fu_211_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( p_x_assign_reg_127 );

    SC_METHOD(thread_exitcond6_i_fu_223_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( p_y_assign_reg_138 );

    SC_METHOD(thread_exitcond_i_fu_273_p2);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( p_z_assign_reg_149 );

    SC_METHOD(thread_extLd_fu_348_p1);
    sensitive << ( pool_layer_2_2_1_28_28_6_relu1_output_data_V_q0 );

    SC_METHOD(thread_grp_forward_pool_fu_182_ap_start);
    sensitive << ( grp_forward_pool_fu_182_ap_start_reg );

    SC_METHOD(thread_ix_fu_217_p2);
    sensitive << ( p_x_assign_reg_127 );

    SC_METHOD(thread_iy_fu_229_p2);
    sensitive << ( p_y_assign_reg_138 );

    SC_METHOD(thread_iz_fu_279_p2);
    sensitive << ( p_z_assign_reg_149 );

    SC_METHOD(thread_next_mul_fu_285_p2);
    sensitive << ( phi_mul_reg_160 );

    SC_METHOD(thread_p_i0_0_i1_cast2_fu_331_p1);
    sensitive << ( p_i0_0_i1_reg_171 );

    SC_METHOD(thread_p_i0_0_i_cast6_fu_190_p1);
    sensitive << ( p_i0_0_i_reg_116 );

    SC_METHOD(thread_p_i0_1_fu_342_p2);
    sensitive << ( p_i0_0_i1_reg_171 );

    SC_METHOD(thread_p_i0_fu_201_p2);
    sensitive << ( p_i0_0_i_reg_116 );

    SC_METHOD(thread_p_shl1_i_cast_fu_255_p1);
    sensitive << ( p_shl1_i_fu_247_p3 );

    SC_METHOD(thread_p_shl1_i_fu_247_p3);
    sensitive << ( p_y_assign_reg_138 );

    SC_METHOD(thread_p_shl_i_cast_fu_243_p1);
    sensitive << ( p_shl_i_fu_235_p3 );

    SC_METHOD(thread_p_shl_i_fu_235_p3);
    sensitive << ( p_y_assign_reg_138 );

    SC_METHOD(thread_p_x_assign_cast5_fu_207_p1);
    sensitive << ( p_x_assign_reg_127 );

    SC_METHOD(thread_phi_mul_cast_fu_269_p1);
    sensitive << ( phi_mul_reg_160 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_input_data_V_address0);
    sensitive << ( grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_address0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_input_data_V_ce0);
    sensitive << ( grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_ce0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_output_data_V_address0);
    sensitive << ( p_i0_0_i_cast6_fu_190_p1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( p_i0_0_i1_cast2_reg_420 );
    sensitive << ( grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_address0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_output_data_V_ce0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_ce0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_output_data_V_d0);
    sensitive << ( grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_d0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( extLd_fu_348_p1 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_output_data_V_we0);
    sensitive << ( grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_we0 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0);
    sensitive << ( p_i0_0_i_cast6_reg_353 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_4_i_fu_305_p1 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_relu1_input_data_V_d0);
    sensitive << ( pool_layer_2_2_1_28_28_6_output_data_V_q0 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0);
    sensitive << ( tmp_4_i_reg_410 );
    sensitive << ( p_i0_0_i1_cast2_fu_331_p1 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_relu1_output_data_V_d0);
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_80_fu_314_p3 );
    sensitive << ( tmp_79_fu_310_p1 );

    SC_METHOD(thread_pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_tmp1_fu_291_p2);
    sensitive << ( tmp_i_cast_reg_392 );
    sensitive << ( phi_mul_cast_fu_269_p1 );

    SC_METHOD(thread_tmp_3_i_cast_fu_301_p1);
    sensitive << ( tmp_3_i_fu_296_p2 );

    SC_METHOD(thread_tmp_3_i_fu_296_p2);
    sensitive << ( p_x_assign_cast5_reg_371 );
    sensitive << ( tmp1_fu_291_p2 );

    SC_METHOD(thread_tmp_4_i_fu_305_p1);
    sensitive << ( tmp_3_i_cast_fu_301_p1 );

    SC_METHOD(thread_tmp_79_fu_310_p1);
    sensitive << ( pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0 );

    SC_METHOD(thread_tmp_80_fu_314_p3);
    sensitive << ( pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0 );

    SC_METHOD(thread_tmp_fu_195_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( p_i0_0_i_reg_116 );

    SC_METHOD(thread_tmp_i_cast_fu_265_p1);
    sensitive << ( tmp_i_fu_259_p2 );

    SC_METHOD(thread_tmp_i_fu_259_p2);
    sensitive << ( p_shl_i_cast_fu_243_p1 );
    sensitive << ( p_shl1_i_cast_fu_255_p1 );

    SC_METHOD(thread_tmp_s_fu_336_p2);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( p_i0_0_i1_reg_171 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_fu_195_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( exitcond6_i_fu_223_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( exitcond_i_fu_273_p2 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_s_fu_336_p2 );
    sensitive << ( grp_forward_pool_fu_182_ap_done );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond5_i_fu_211_p2 );

    ap_CS_fsm = "0000000001";
    grp_forward_pool_fu_182_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "forward_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_output_data_V_q0, "(port)pool_layer_2_2_1_28_28_6_output_data_V_q0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0, "(port)pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0, "(port)pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0, "(port)pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_input_data_V_d0, "(port)pool_layer_2_2_1_28_28_6_relu1_input_data_V_d0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0, "(port)pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0, "(port)pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0, "(port)pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0, "(port)pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_output_data_V_d0, "(port)pool_layer_2_2_1_28_28_6_relu1_output_data_V_d0");
    sc_trace(mVcdFile, pool_layer_2_2_1_28_28_6_relu1_output_data_V_q0, "(port)pool_layer_2_2_1_28_28_6_relu1_output_data_V_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, p_i0_0_i_cast6_fu_190_p1, "p_i0_0_i_cast6_fu_190_p1");
    sc_trace(mVcdFile, p_i0_0_i_cast6_reg_353, "p_i0_0_i_cast6_reg_353");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, p_i0_fu_201_p2, "p_i0_fu_201_p2");
    sc_trace(mVcdFile, p_i0_reg_361, "p_i0_reg_361");
    sc_trace(mVcdFile, tmp_fu_195_p2, "tmp_fu_195_p2");
    sc_trace(mVcdFile, p_x_assign_cast5_fu_207_p1, "p_x_assign_cast5_fu_207_p1");
    sc_trace(mVcdFile, p_x_assign_cast5_reg_371, "p_x_assign_cast5_reg_371");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ix_fu_217_p2, "ix_fu_217_p2");
    sc_trace(mVcdFile, ix_reg_379, "ix_reg_379");
    sc_trace(mVcdFile, iy_fu_229_p2, "iy_fu_229_p2");
    sc_trace(mVcdFile, iy_reg_387, "iy_reg_387");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_i_cast_fu_265_p1, "tmp_i_cast_fu_265_p1");
    sc_trace(mVcdFile, tmp_i_cast_reg_392, "tmp_i_cast_reg_392");
    sc_trace(mVcdFile, exitcond6_i_fu_223_p2, "exitcond6_i_fu_223_p2");
    sc_trace(mVcdFile, iz_fu_279_p2, "iz_fu_279_p2");
    sc_trace(mVcdFile, iz_reg_400, "iz_reg_400");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, next_mul_fu_285_p2, "next_mul_fu_285_p2");
    sc_trace(mVcdFile, next_mul_reg_405, "next_mul_reg_405");
    sc_trace(mVcdFile, exitcond_i_fu_273_p2, "exitcond_i_fu_273_p2");
    sc_trace(mVcdFile, tmp_4_i_fu_305_p1, "tmp_4_i_fu_305_p1");
    sc_trace(mVcdFile, tmp_4_i_reg_410, "tmp_4_i_reg_410");
    sc_trace(mVcdFile, p_i0_0_i1_cast2_fu_331_p1, "p_i0_0_i1_cast2_fu_331_p1");
    sc_trace(mVcdFile, p_i0_0_i1_cast2_reg_420, "p_i0_0_i1_cast2_reg_420");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, p_i0_1_fu_342_p2, "p_i0_1_fu_342_p2");
    sc_trace(mVcdFile, p_i0_1_reg_428, "p_i0_1_reg_428");
    sc_trace(mVcdFile, tmp_s_fu_336_p2, "tmp_s_fu_336_p2");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_ap_start, "grp_forward_pool_fu_182_ap_start");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_ap_done, "grp_forward_pool_fu_182_ap_done");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_ap_idle, "grp_forward_pool_fu_182_ap_idle");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_ap_ready, "grp_forward_pool_fu_182_ap_ready");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_address0, "grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_address0");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_ce0, "grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_ce0");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_address0, "grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_address0");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_ce0, "grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_ce0");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_we0, "grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_we0");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_d0, "grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_d0");
    sc_trace(mVcdFile, p_i0_0_i_reg_116, "p_i0_0_i_reg_116");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, p_x_assign_reg_127, "p_x_assign_reg_127");
    sc_trace(mVcdFile, p_y_assign_reg_138, "p_y_assign_reg_138");
    sc_trace(mVcdFile, exitcond5_i_fu_211_p2, "exitcond5_i_fu_211_p2");
    sc_trace(mVcdFile, p_z_assign_reg_149, "p_z_assign_reg_149");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, phi_mul_reg_160, "phi_mul_reg_160");
    sc_trace(mVcdFile, p_i0_0_i1_reg_171, "p_i0_0_i1_reg_171");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, grp_forward_pool_fu_182_ap_start_reg, "grp_forward_pool_fu_182_ap_start_reg");
    sc_trace(mVcdFile, extLd_fu_348_p1, "extLd_fu_348_p1");
    sc_trace(mVcdFile, p_shl_i_fu_235_p3, "p_shl_i_fu_235_p3");
    sc_trace(mVcdFile, p_shl1_i_fu_247_p3, "p_shl1_i_fu_247_p3");
    sc_trace(mVcdFile, p_shl_i_cast_fu_243_p1, "p_shl_i_cast_fu_243_p1");
    sc_trace(mVcdFile, p_shl1_i_cast_fu_255_p1, "p_shl1_i_cast_fu_255_p1");
    sc_trace(mVcdFile, tmp_i_fu_259_p2, "tmp_i_fu_259_p2");
    sc_trace(mVcdFile, phi_mul_cast_fu_269_p1, "phi_mul_cast_fu_269_p1");
    sc_trace(mVcdFile, tmp1_fu_291_p2, "tmp1_fu_291_p2");
    sc_trace(mVcdFile, tmp_3_i_fu_296_p2, "tmp_3_i_fu_296_p2");
    sc_trace(mVcdFile, tmp_3_i_cast_fu_301_p1, "tmp_3_i_cast_fu_301_p1");
    sc_trace(mVcdFile, tmp_80_fu_314_p3, "tmp_80_fu_314_p3");
    sc_trace(mVcdFile, tmp_79_fu_310_p1, "tmp_79_fu_310_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

forward::~forward() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_forward_pool_fu_182;
}

void forward::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_forward_pool_fu_182_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            grp_forward_pool_fu_182_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_forward_pool_fu_182_ap_ready.read())) {
            grp_forward_pool_fu_182_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, exitcond5_i_fu_211_p2.read()))) {
        p_i0_0_i1_reg_171 = ap_const_lv11_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        p_i0_0_i1_reg_171 = p_i0_1_reg_428.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        p_i0_0_i_reg_116 = p_i0_reg_361.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(grp_forward_pool_fu_182_ap_done.read(), ap_const_logic_1))) {
        p_i0_0_i_reg_116 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(tmp_fu_195_p2.read(), ap_const_lv1_1))) {
        p_x_assign_reg_127 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
                esl_seteq<1,1,1>(exitcond6_i_fu_223_p2.read(), ap_const_lv1_1))) {
        p_x_assign_reg_127 = ix_reg_379.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond5_i_fu_211_p2.read()))) {
        p_y_assign_reg_138 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
                esl_seteq<1,1,1>(exitcond_i_fu_273_p2.read(), ap_const_lv1_1))) {
        p_y_assign_reg_138 = iy_reg_387.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond6_i_fu_223_p2.read()))) {
        p_z_assign_reg_149 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        p_z_assign_reg_149 = iz_reg_400.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond6_i_fu_223_p2.read()))) {
        phi_mul_reg_160 = ap_const_lv11_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        phi_mul_reg_160 = next_mul_reg_405.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ix_reg_379 = ix_fu_217_p2.read();
        p_x_assign_cast5_reg_371 = p_x_assign_cast5_fu_207_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        iy_reg_387 = iy_fu_229_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        iz_reg_400 = iz_fu_279_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_i_fu_273_p2.read()))) {
        next_mul_reg_405 = next_mul_fu_285_p2.read();
        tmp_4_i_reg_410 = tmp_4_i_fu_305_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        p_i0_0_i1_cast2_reg_420 = p_i0_0_i1_cast2_fu_331_p1.read();
        p_i0_1_reg_428 = p_i0_1_fu_342_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        p_i0_0_i_cast6_reg_353 = p_i0_0_i_cast6_fu_190_p1.read();
        p_i0_reg_361 = p_i0_fu_201_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond6_i_fu_223_p2.read()))) {
        tmp_i_cast_reg_392 = tmp_i_cast_fu_265_p1.read();
    }
}

void forward::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void forward::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void forward::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void forward::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void forward::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void forward::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void forward::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void forward::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void forward::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void forward::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void forward::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
          esl_seteq<1,1,1>(tmp_s_fu_336_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void forward::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void forward::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
         esl_seteq<1,1,1>(tmp_s_fu_336_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void forward::thread_exitcond5_i_fu_211_p2() {
    exitcond5_i_fu_211_p2 = (!p_x_assign_reg_127.read().is_01() || !ap_const_lv4_E.is_01())? sc_lv<1>(): sc_lv<1>(p_x_assign_reg_127.read() == ap_const_lv4_E);
}

void forward::thread_exitcond6_i_fu_223_p2() {
    exitcond6_i_fu_223_p2 = (!p_y_assign_reg_138.read().is_01() || !ap_const_lv4_E.is_01())? sc_lv<1>(): sc_lv<1>(p_y_assign_reg_138.read() == ap_const_lv4_E);
}

void forward::thread_exitcond_i_fu_273_p2() {
    exitcond_i_fu_273_p2 = (!p_z_assign_reg_149.read().is_01() || !ap_const_lv3_6.is_01())? sc_lv<1>(): sc_lv<1>(p_z_assign_reg_149.read() == ap_const_lv3_6);
}

void forward::thread_extLd_fu_348_p1() {
    extLd_fu_348_p1 = esl_zext<16,15>(pool_layer_2_2_1_28_28_6_relu1_output_data_V_q0.read());
}

void forward::thread_grp_forward_pool_fu_182_ap_start() {
    grp_forward_pool_fu_182_ap_start = grp_forward_pool_fu_182_ap_start_reg.read();
}

void forward::thread_ix_fu_217_p2() {
    ix_fu_217_p2 = (!p_x_assign_reg_127.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(p_x_assign_reg_127.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void forward::thread_iy_fu_229_p2() {
    iy_fu_229_p2 = (!p_y_assign_reg_138.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(p_y_assign_reg_138.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void forward::thread_iz_fu_279_p2() {
    iz_fu_279_p2 = (!p_z_assign_reg_149.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(p_z_assign_reg_149.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void forward::thread_next_mul_fu_285_p2() {
    next_mul_fu_285_p2 = (!ap_const_lv11_C4.is_01() || !phi_mul_reg_160.read().is_01())? sc_lv<11>(): (sc_biguint<11>(ap_const_lv11_C4) + sc_biguint<11>(phi_mul_reg_160.read()));
}

void forward::thread_p_i0_0_i1_cast2_fu_331_p1() {
    p_i0_0_i1_cast2_fu_331_p1 = esl_zext<64,11>(p_i0_0_i1_reg_171.read());
}

void forward::thread_p_i0_0_i_cast6_fu_190_p1() {
    p_i0_0_i_cast6_fu_190_p1 = esl_zext<64,11>(p_i0_0_i_reg_116.read());
}

void forward::thread_p_i0_1_fu_342_p2() {
    p_i0_1_fu_342_p2 = (!p_i0_0_i1_reg_171.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(p_i0_0_i1_reg_171.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void forward::thread_p_i0_fu_201_p2() {
    p_i0_fu_201_p2 = (!p_i0_0_i_reg_116.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(p_i0_0_i_reg_116.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void forward::thread_p_shl1_i_cast_fu_255_p1() {
    p_shl1_i_cast_fu_255_p1 = esl_zext<9,5>(p_shl1_i_fu_247_p3.read());
}

void forward::thread_p_shl1_i_fu_247_p3() {
    p_shl1_i_fu_247_p3 = esl_concat<4,1>(p_y_assign_reg_138.read(), ap_const_lv1_0);
}

void forward::thread_p_shl_i_cast_fu_243_p1() {
    p_shl_i_cast_fu_243_p1 = esl_zext<9,8>(p_shl_i_fu_235_p3.read());
}

void forward::thread_p_shl_i_fu_235_p3() {
    p_shl_i_fu_235_p3 = esl_concat<4,4>(p_y_assign_reg_138.read(), ap_const_lv4_0);
}

void forward::thread_p_x_assign_cast5_fu_207_p1() {
    p_x_assign_cast5_fu_207_p1 = esl_zext<12,4>(p_x_assign_reg_127.read());
}

void forward::thread_phi_mul_cast_fu_269_p1() {
    phi_mul_cast_fu_269_p1 = esl_zext<12,11>(phi_mul_reg_160.read());
}

void forward::thread_pool_layer_2_2_1_28_28_6_input_data_V_address0() {
    pool_layer_2_2_1_28_28_6_input_data_V_address0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_address0.read();
}

void forward::thread_pool_layer_2_2_1_28_28_6_input_data_V_ce0() {
    pool_layer_2_2_1_28_28_6_input_data_V_ce0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_ce0.read();
}

void forward::thread_pool_layer_2_2_1_28_28_6_output_data_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_address0 =  (sc_lv<11>) (p_i0_0_i1_cast2_reg_420.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_address0 =  (sc_lv<11>) (p_i0_0_i_cast6_fu_190_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_address0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_address0.read();
    } else {
        pool_layer_2_2_1_28_28_6_output_data_V_address0 = "XXXXXXXXXXX";
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_output_data_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_ce0.read();
    } else {
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = ap_const_logic_0;
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_output_data_V_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_d0 = extLd_fu_348_p1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_d0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_d0.read();
    } else {
        pool_layer_2_2_1_28_28_6_output_data_V_d0 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_output_data_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_we0.read();
    } else {
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = ap_const_logic_0;
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0 =  (sc_lv<11>) (tmp_4_i_fu_305_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0 =  (sc_lv<11>) (p_i0_0_i_cast6_reg_353.read());
    } else {
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0 = "XXXXXXXXXXX";
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0 = ap_const_logic_1;
    } else {
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0 = ap_const_logic_0;
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_relu1_input_data_V_d0() {
    pool_layer_2_2_1_28_28_6_relu1_input_data_V_d0 = pool_layer_2_2_1_28_28_6_output_data_V_q0.read();
}

void forward::thread_pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0 = ap_const_logic_1;
    } else {
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0 = ap_const_logic_0;
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0 =  (sc_lv<11>) (p_i0_0_i1_cast2_fu_331_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0 =  (sc_lv<11>) (tmp_4_i_reg_410.read());
    } else {
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0 = "XXXXXXXXXXX";
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0 = ap_const_logic_1;
    } else {
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0 = ap_const_logic_0;
    }
}

void forward::thread_pool_layer_2_2_1_28_28_6_relu1_output_data_V_d0() {
    pool_layer_2_2_1_28_28_6_relu1_output_data_V_d0 = (!tmp_80_fu_314_p3.read()[0].is_01())? sc_lv<15>(): ((tmp_80_fu_314_p3.read()[0].to_bool())? ap_const_lv15_0: tmp_79_fu_310_p1.read());
}

void forward::thread_pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0 = ap_const_logic_1;
    } else {
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0 = ap_const_logic_0;
    }
}

void forward::thread_tmp1_fu_291_p2() {
    tmp1_fu_291_p2 = (!tmp_i_cast_reg_392.read().is_01() || !phi_mul_cast_fu_269_p1.read().is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_i_cast_reg_392.read()) + sc_biguint<12>(phi_mul_cast_fu_269_p1.read()));
}

void forward::thread_tmp_3_i_cast_fu_301_p1() {
    tmp_3_i_cast_fu_301_p1 = esl_sext<32,12>(tmp_3_i_fu_296_p2.read());
}

void forward::thread_tmp_3_i_fu_296_p2() {
    tmp_3_i_fu_296_p2 = (!tmp1_fu_291_p2.read().is_01() || !p_x_assign_cast5_reg_371.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp1_fu_291_p2.read()) + sc_biguint<12>(p_x_assign_cast5_reg_371.read()));
}

void forward::thread_tmp_4_i_fu_305_p1() {
    tmp_4_i_fu_305_p1 = esl_zext<64,32>(tmp_3_i_cast_fu_301_p1.read());
}

void forward::thread_tmp_79_fu_310_p1() {
    tmp_79_fu_310_p1 = pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0.read().range(15-1, 0);
}

void forward::thread_tmp_80_fu_314_p3() {
    tmp_80_fu_314_p3 = pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0.read().range(15, 15);
}

void forward::thread_tmp_fu_195_p2() {
    tmp_fu_195_p2 = (!p_i0_0_i_reg_116.read().is_01() || !ap_const_lv11_498.is_01())? sc_lv<1>(): sc_lv<1>(p_i0_0_i_reg_116.read() == ap_const_lv11_498);
}

void forward::thread_tmp_i_cast_fu_265_p1() {
    tmp_i_cast_fu_265_p1 = esl_sext<12,9>(tmp_i_fu_259_p2.read());
}

void forward::thread_tmp_i_fu_259_p2() {
    tmp_i_fu_259_p2 = (!p_shl_i_cast_fu_243_p1.read().is_01() || !p_shl1_i_cast_fu_255_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(p_shl_i_cast_fu_243_p1.read()) - sc_biguint<9>(p_shl1_i_cast_fu_255_p1.read()));
}

void forward::thread_tmp_s_fu_336_p2() {
    tmp_s_fu_336_p2 = (!p_i0_0_i1_reg_171.read().is_01() || !ap_const_lv11_498.is_01())? sc_lv<1>(): sc_lv<1>(p_i0_0_i1_reg_171.read() == ap_const_lv11_498);
}

void forward::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_forward_pool_fu_182_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_fu_195_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, exitcond5_i_fu_211_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(exitcond6_i_fu_223_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(exitcond_i_fu_273_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 256 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(tmp_s_fu_336_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<10>) ("XXXXXXXXXX");
            break;
    }
}

}
