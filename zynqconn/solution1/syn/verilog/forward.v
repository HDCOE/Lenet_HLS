// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module forward (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        pool_layer_2_2_1_28_28_6_input_data_V_address0,
        pool_layer_2_2_1_28_28_6_input_data_V_ce0,
        pool_layer_2_2_1_28_28_6_input_data_V_q0,
        pool_layer_2_2_1_28_28_6_output_data_V_address0,
        pool_layer_2_2_1_28_28_6_output_data_V_ce0,
        pool_layer_2_2_1_28_28_6_output_data_V_we0,
        pool_layer_2_2_1_28_28_6_output_data_V_d0,
        pool_layer_2_2_1_28_28_6_output_data_V_q0,
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0,
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0,
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0,
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_d0,
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0,
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0,
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0,
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0,
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_d0,
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_q0
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] pool_layer_2_2_1_28_28_6_input_data_V_address0;
output   pool_layer_2_2_1_28_28_6_input_data_V_ce0;
input  [15:0] pool_layer_2_2_1_28_28_6_input_data_V_q0;
output  [10:0] pool_layer_2_2_1_28_28_6_output_data_V_address0;
output   pool_layer_2_2_1_28_28_6_output_data_V_ce0;
output   pool_layer_2_2_1_28_28_6_output_data_V_we0;
output  [15:0] pool_layer_2_2_1_28_28_6_output_data_V_d0;
input  [15:0] pool_layer_2_2_1_28_28_6_output_data_V_q0;
output  [10:0] pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0;
output   pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0;
output   pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0;
output  [15:0] pool_layer_2_2_1_28_28_6_relu1_input_data_V_d0;
input  [15:0] pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0;
output  [10:0] pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0;
output   pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0;
output   pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0;
output  [14:0] pool_layer_2_2_1_28_28_6_relu1_output_data_V_d0;
input  [14:0] pool_layer_2_2_1_28_28_6_relu1_output_data_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] pool_layer_2_2_1_28_28_6_output_data_V_address0;
reg pool_layer_2_2_1_28_28_6_output_data_V_ce0;
reg pool_layer_2_2_1_28_28_6_output_data_V_we0;
reg[15:0] pool_layer_2_2_1_28_28_6_output_data_V_d0;
reg[10:0] pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0;
reg pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0;
reg pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0;
reg[10:0] pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0;
reg pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0;
reg pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] p_i0_0_i_cast6_fu_190_p1;
reg   [63:0] p_i0_0_i_cast6_reg_353;
wire    ap_CS_fsm_state3;
wire   [10:0] p_i0_fu_201_p2;
reg   [10:0] p_i0_reg_361;
wire   [0:0] tmp_fu_195_p2;
wire   [11:0] p_x_assign_cast5_fu_207_p1;
reg   [11:0] p_x_assign_cast5_reg_371;
wire    ap_CS_fsm_state5;
wire   [3:0] ix_fu_217_p2;
reg   [3:0] ix_reg_379;
wire   [3:0] iy_fu_229_p2;
reg   [3:0] iy_reg_387;
wire    ap_CS_fsm_state6;
wire  signed [11:0] tmp_i_cast_fu_265_p1;
reg  signed [11:0] tmp_i_cast_reg_392;
wire   [0:0] exitcond6_i_fu_223_p2;
wire   [2:0] iz_fu_279_p2;
reg   [2:0] iz_reg_400;
wire    ap_CS_fsm_state7;
wire   [10:0] next_mul_fu_285_p2;
reg   [10:0] next_mul_reg_405;
wire   [0:0] exitcond_i_fu_273_p2;
wire   [63:0] tmp_4_i_fu_305_p1;
reg   [63:0] tmp_4_i_reg_410;
wire   [63:0] p_i0_0_i1_cast2_fu_331_p1;
reg   [63:0] p_i0_0_i1_cast2_reg_420;
wire    ap_CS_fsm_state9;
wire   [10:0] p_i0_1_fu_342_p2;
reg   [10:0] p_i0_1_reg_428;
wire   [0:0] tmp_s_fu_336_p2;
wire    grp_forward_pool_fu_182_ap_start;
wire    grp_forward_pool_fu_182_ap_done;
wire    grp_forward_pool_fu_182_ap_idle;
wire    grp_forward_pool_fu_182_ap_ready;
wire   [12:0] grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_address0;
wire    grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_ce0;
wire   [10:0] grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_address0;
wire    grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_ce0;
wire    grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_we0;
wire   [15:0] grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_d0;
reg   [10:0] p_i0_0_i_reg_116;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state4;
reg   [3:0] p_x_assign_reg_127;
reg   [3:0] p_y_assign_reg_138;
wire   [0:0] exitcond5_i_fu_211_p2;
reg   [2:0] p_z_assign_reg_149;
wire    ap_CS_fsm_state8;
reg   [10:0] phi_mul_reg_160;
reg   [10:0] p_i0_0_i1_reg_171;
wire    ap_CS_fsm_state10;
reg    grp_forward_pool_fu_182_ap_start_reg;
wire   [15:0] extLd_fu_348_p1;
wire   [7:0] p_shl_i_fu_235_p3;
wire   [4:0] p_shl1_i_fu_247_p3;
wire   [8:0] p_shl_i_cast_fu_243_p1;
wire   [8:0] p_shl1_i_cast_fu_255_p1;
wire   [8:0] tmp_i_fu_259_p2;
wire   [11:0] phi_mul_cast_fu_269_p1;
wire   [11:0] tmp1_fu_291_p2;
wire   [11:0] tmp_3_i_fu_296_p2;
wire  signed [31:0] tmp_3_i_cast_fu_301_p1;
wire   [0:0] tmp_80_fu_314_p3;
wire   [14:0] tmp_79_fu_310_p1;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_forward_pool_fu_182_ap_start_reg = 1'b0;
end

forward_pool grp_forward_pool_fu_182(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_forward_pool_fu_182_ap_start),
    .ap_done(grp_forward_pool_fu_182_ap_done),
    .ap_idle(grp_forward_pool_fu_182_ap_idle),
    .ap_ready(grp_forward_pool_fu_182_ap_ready),
    .pool_layer_2_2_1_28_28_6_input_data_V_address0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_address0),
    .pool_layer_2_2_1_28_28_6_input_data_V_ce0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_ce0),
    .pool_layer_2_2_1_28_28_6_input_data_V_q0(pool_layer_2_2_1_28_28_6_input_data_V_q0),
    .pool_layer_2_2_1_28_28_6_output_data_V_address0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_address0),
    .pool_layer_2_2_1_28_28_6_output_data_V_ce0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_ce0),
    .pool_layer_2_2_1_28_28_6_output_data_V_we0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_we0),
    .pool_layer_2_2_1_28_28_6_output_data_V_d0(grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_forward_pool_fu_182_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_forward_pool_fu_182_ap_start_reg <= 1'b1;
        end else if ((grp_forward_pool_fu_182_ap_ready == 1'b1)) begin
            grp_forward_pool_fu_182_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (exitcond5_i_fu_211_p2 == 1'd1))) begin
        p_i0_0_i1_reg_171 <= 11'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        p_i0_0_i1_reg_171 <= p_i0_1_reg_428;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_i0_0_i_reg_116 <= p_i0_reg_361;
    end else if (((1'b1 == ap_CS_fsm_state2) & (grp_forward_pool_fu_182_ap_done == 1'b1))) begin
        p_i0_0_i_reg_116 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_x_assign_reg_127 <= 4'd0;
    end else if (((exitcond6_i_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        p_x_assign_reg_127 <= ix_reg_379;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_i_fu_211_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        p_y_assign_reg_138 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (exitcond_i_fu_273_p2 == 1'd1))) begin
        p_y_assign_reg_138 <= iy_reg_387;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_i_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        p_z_assign_reg_149 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        p_z_assign_reg_149 <= iz_reg_400;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_i_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        phi_mul_reg_160 <= 11'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        phi_mul_reg_160 <= next_mul_reg_405;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ix_reg_379 <= ix_fu_217_p2;
        p_x_assign_cast5_reg_371[3 : 0] <= p_x_assign_cast5_fu_207_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        iy_reg_387 <= iy_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        iz_reg_400 <= iz_fu_279_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_273_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        next_mul_reg_405 <= next_mul_fu_285_p2;
        tmp_4_i_reg_410[31 : 0] <= tmp_4_i_fu_305_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_i0_0_i1_cast2_reg_420[10 : 0] <= p_i0_0_i1_cast2_fu_331_p1[10 : 0];
        p_i0_1_reg_428 <= p_i0_1_fu_342_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        p_i0_0_i_cast6_reg_353[10 : 0] <= p_i0_0_i_cast6_fu_190_p1[10 : 0];
        p_i0_reg_361 <= p_i0_fu_201_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_i_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_i_cast_reg_392[11 : 1] <= tmp_i_cast_fu_265_p1[11 : 1];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state9) & (tmp_s_fu_336_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (tmp_s_fu_336_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_address0 = p_i0_0_i1_cast2_reg_420;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_address0 = p_i0_0_i_cast6_fu_190_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_address0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_address0;
    end else begin
        pool_layer_2_2_1_28_28_6_output_data_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10))) begin
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_ce0;
    end else begin
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_d0 = extLd_fu_348_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_d0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_d0;
    end else begin
        pool_layer_2_2_1_28_28_6_output_data_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_output_data_V_we0;
    end else begin
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0 = tmp_4_i_fu_305_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0 = p_i0_0_i_cast6_reg_353;
    end else begin
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7))) begin
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0 = 1'b1;
    end else begin
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0 = 1'b1;
    end else begin
        pool_layer_2_2_1_28_28_6_relu1_input_data_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0 = p_i0_0_i1_cast2_fu_331_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0 = tmp_4_i_reg_410;
    end else begin
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0 = 1'b1;
    end else begin
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0 = 1'b1;
    end else begin
        pool_layer_2_2_1_28_28_6_relu1_output_data_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_forward_pool_fu_182_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (exitcond5_i_fu_211_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond6_i_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (exitcond_i_fu_273_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (tmp_s_fu_336_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond5_i_fu_211_p2 = ((p_x_assign_reg_127 == 4'd14) ? 1'b1 : 1'b0);

assign exitcond6_i_fu_223_p2 = ((p_y_assign_reg_138 == 4'd14) ? 1'b1 : 1'b0);

assign exitcond_i_fu_273_p2 = ((p_z_assign_reg_149 == 3'd6) ? 1'b1 : 1'b0);

assign extLd_fu_348_p1 = pool_layer_2_2_1_28_28_6_relu1_output_data_V_q0;

assign grp_forward_pool_fu_182_ap_start = grp_forward_pool_fu_182_ap_start_reg;

assign ix_fu_217_p2 = (p_x_assign_reg_127 + 4'd1);

assign iy_fu_229_p2 = (p_y_assign_reg_138 + 4'd1);

assign iz_fu_279_p2 = (p_z_assign_reg_149 + 3'd1);

assign next_mul_fu_285_p2 = (11'd196 + phi_mul_reg_160);

assign p_i0_0_i1_cast2_fu_331_p1 = p_i0_0_i1_reg_171;

assign p_i0_0_i_cast6_fu_190_p1 = p_i0_0_i_reg_116;

assign p_i0_1_fu_342_p2 = (p_i0_0_i1_reg_171 + 11'd1);

assign p_i0_fu_201_p2 = (p_i0_0_i_reg_116 + 11'd1);

assign p_shl1_i_cast_fu_255_p1 = p_shl1_i_fu_247_p3;

assign p_shl1_i_fu_247_p3 = {{p_y_assign_reg_138}, {1'd0}};

assign p_shl_i_cast_fu_243_p1 = p_shl_i_fu_235_p3;

assign p_shl_i_fu_235_p3 = {{p_y_assign_reg_138}, {4'd0}};

assign p_x_assign_cast5_fu_207_p1 = p_x_assign_reg_127;

assign phi_mul_cast_fu_269_p1 = phi_mul_reg_160;

assign pool_layer_2_2_1_28_28_6_input_data_V_address0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_address0;

assign pool_layer_2_2_1_28_28_6_input_data_V_ce0 = grp_forward_pool_fu_182_pool_layer_2_2_1_28_28_6_input_data_V_ce0;

assign pool_layer_2_2_1_28_28_6_relu1_input_data_V_d0 = pool_layer_2_2_1_28_28_6_output_data_V_q0;

assign pool_layer_2_2_1_28_28_6_relu1_output_data_V_d0 = ((tmp_80_fu_314_p3[0:0] === 1'b1) ? 15'd0 : tmp_79_fu_310_p1);

assign tmp1_fu_291_p2 = ($signed(tmp_i_cast_reg_392) + $signed(phi_mul_cast_fu_269_p1));

assign tmp_3_i_cast_fu_301_p1 = $signed(tmp_3_i_fu_296_p2);

assign tmp_3_i_fu_296_p2 = (tmp1_fu_291_p2 + p_x_assign_cast5_reg_371);

assign tmp_4_i_fu_305_p1 = $unsigned(tmp_3_i_cast_fu_301_p1);

assign tmp_79_fu_310_p1 = pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0[14:0];

assign tmp_80_fu_314_p3 = pool_layer_2_2_1_28_28_6_relu1_input_data_V_q0[32'd15];

assign tmp_fu_195_p2 = ((p_i0_0_i_reg_116 == 11'd1176) ? 1'b1 : 1'b0);

assign tmp_i_cast_fu_265_p1 = $signed(tmp_i_fu_259_p2);

assign tmp_i_fu_259_p2 = (p_shl_i_cast_fu_243_p1 - p_shl1_i_cast_fu_255_p1);

assign tmp_s_fu_336_p2 = ((p_i0_0_i1_reg_171 == 11'd1176) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    p_i0_0_i_cast6_reg_353[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    p_x_assign_cast5_reg_371[11:4] <= 8'b00000000;
    tmp_i_cast_reg_392[0] <= 1'b0;
    tmp_4_i_reg_410[63:32] <= 32'b00000000000000000000000000000000;
    p_i0_0_i1_cast2_reg_420[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end

endmodule //forward
