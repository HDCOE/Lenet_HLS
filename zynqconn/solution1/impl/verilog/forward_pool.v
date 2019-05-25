// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module forward_pool (
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
        pool_layer_2_2_1_28_28_6_output_data_V_d0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

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

reg ap_done;
reg ap_idle;
reg ap_ready;
reg pool_layer_2_2_1_28_28_6_input_data_V_ce0;
reg pool_layer_2_2_1_28_28_6_output_data_V_ce0;
reg pool_layer_2_2_1_28_28_6_output_data_V_we0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] p_x_assign_cast6_fu_185_p1;
reg   [9:0] p_x_assign_cast6_reg_456;
wire    ap_CS_fsm_state2;
wire   [3:0] o_y_fu_195_p2;
reg   [3:0] o_y_reg_464;
wire   [31:0] p_x_assign_3_cast_fu_209_p1;
reg   [31:0] p_x_assign_3_cast_reg_469;
wire   [0:0] exitcond2_fu_189_p2;
wire   [31:0] tmp_8_cast_fu_219_p1;
reg   [31:0] tmp_8_cast_reg_474;
wire   [3:0] o_x_fu_229_p2;
reg   [3:0] o_x_reg_482;
wire    ap_CS_fsm_state3;
wire   [31:0] h_2_cast4_fu_243_p1;
reg   [31:0] h_2_cast4_reg_487;
wire   [0:0] exitcond1_fu_223_p2;
wire   [31:0] tmp_1_cast_fu_257_p1;
reg   [31:0] tmp_1_cast_reg_492;
wire  signed [11:0] tmp_3_cast_fu_279_p1;
reg  signed [11:0] tmp_3_cast_reg_497;
wire   [12:0] next_mul2_fu_283_p2;
reg   [12:0] next_mul2_reg_502;
wire    ap_CS_fsm_state4;
wire   [9:0] next_mul_fu_289_p2;
reg   [9:0] next_mul_reg_507;
wire   [2:0] ch_fu_301_p2;
reg   [2:0] ch_reg_515;
wire   [31:0] tmp_cast7_fu_307_p1;
reg   [31:0] tmp_cast7_reg_520;
wire   [0:0] exitcond_fu_295_p2;
wire   [31:0] tmp_19_fu_429_p2;
reg   [31:0] tmp_19_reg_531;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_11_fu_400_p2;
wire   [31:0] h_fu_434_p2;
reg   [31:0] h_reg_536;
wire   [31:0] v_1_fu_440_p2;
wire    ap_CS_fsm_state7;
wire   [15:0] avg_V_fu_450_p2;
wire    ap_CS_fsm_state8;
reg   [3:0] p_x_assign_reg_86;
reg   [3:0] p_y_assign_1_reg_97;
reg   [2:0] p_z_assign_reg_108;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_9_fu_311_p2;
reg   [9:0] phi_mul_reg_119;
reg   [12:0] phi_mul1_reg_131;
reg  signed [15:0] t_V_reg_142;
reg   [31:0] p_x_assign_1_reg_154;
reg   [15:0] p_Val2_s_reg_164;
reg   [31:0] p_y_assign_2_reg_176;
wire  signed [63:0] tmp_4_fu_330_p1;
wire  signed [63:0] tmp_20_fu_446_p1;
wire   [4:0] v_fu_201_p3;
wire   [4:0] tmp_8_fu_213_p2;
wire   [4:0] h_2_fu_235_p3;
wire   [4:0] tmp_1_fu_251_p2;
wire   [7:0] p_shl2_fu_261_p3;
wire   [8:0] p_shl2_cast_fu_269_p1;
wire   [8:0] h_2_cast_fu_247_p1;
wire   [8:0] tmp_3_fu_273_p2;
wire   [9:0] tmp1_fu_316_p2;
wire   [11:0] tmp1_cast_fu_321_p1;
wire   [11:0] tmp_7_fu_325_p2;
wire  signed [16:0] tmp_27_tr_fu_335_p1;
wire   [16:0] p_neg_fu_347_p2;
wire   [14:0] tmp_s_fu_353_p4;
wire   [13:0] tmp_13_fu_367_p4;
wire   [15:0] tmp_10_fu_363_p1;
wire  signed [14:0] tmp_14_fu_377_p1;
wire   [0:0] tmp_59_fu_339_p3;
wire   [15:0] tmp_15_fu_381_p2;
wire   [15:0] tmp_16_fu_387_p1;
wire   [31:0] tmp_60_fu_405_p2;
wire   [31:0] tmp_61_fu_411_p2;
wire   [31:0] tmp_18_fu_417_p2;
wire   [31:0] tmp_fu_423_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_fu_311_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        p_Val2_s_reg_164 <= t_V_reg_142;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        p_Val2_s_reg_164 <= avg_V_fu_450_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_11_fu_400_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        p_x_assign_1_reg_154 <= v_1_fu_440_p2;
    end else if (((exitcond_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        p_x_assign_1_reg_154 <= p_x_assign_3_cast_reg_469;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_x_assign_reg_86 <= o_y_reg_464;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        p_x_assign_reg_86 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_295_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        p_y_assign_1_reg_97 <= o_x_reg_482;
    end else if (((exitcond2_fu_189_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_y_assign_1_reg_97 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_fu_311_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        p_y_assign_2_reg_176 <= h_2_cast4_reg_487;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        p_y_assign_2_reg_176 <= h_reg_536;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_fu_311_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        p_z_assign_reg_108 <= ch_reg_515;
    end else if (((exitcond1_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        p_z_assign_reg_108 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_fu_311_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        phi_mul1_reg_131 <= next_mul2_reg_502;
    end else if (((exitcond1_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul1_reg_131 <= 13'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_fu_311_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        phi_mul_reg_119 <= next_mul_reg_507;
    end else if (((exitcond1_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_reg_119 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_11_fu_400_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        t_V_reg_142 <= p_Val2_s_reg_164;
    end else if (((exitcond_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        t_V_reg_142 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ch_reg_515 <= ch_fu_301_p2;
        next_mul2_reg_502 <= next_mul2_fu_283_p2;
        next_mul_reg_507 <= next_mul_fu_289_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_223_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        h_2_cast4_reg_487[4 : 1] <= h_2_cast4_fu_243_p1[4 : 1];
        tmp_1_cast_reg_492[4 : 1] <= tmp_1_cast_fu_257_p1[4 : 1];
        tmp_3_cast_reg_497[11 : 1] <= tmp_3_cast_fu_279_p1[11 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_11_fu_400_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        h_reg_536 <= h_fu_434_p2;
        tmp_19_reg_531 <= tmp_19_fu_429_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        o_x_reg_482 <= o_x_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        o_y_reg_464 <= o_y_fu_195_p2;
        p_x_assign_cast6_reg_456[3 : 0] <= p_x_assign_cast6_fu_185_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_189_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_x_assign_3_cast_reg_469[4 : 1] <= p_x_assign_3_cast_fu_209_p1[4 : 1];
        tmp_8_cast_reg_474[4 : 1] <= tmp_8_cast_fu_219_p1[4 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_295_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_cast7_reg_520[12 : 0] <= tmp_cast7_fu_307_p1[12 : 0];
    end
end

always @ (*) begin
    if ((((exitcond2_fu_189_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((exitcond2_fu_189_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        pool_layer_2_2_1_28_28_6_input_data_V_ce0 = 1'b1;
    end else begin
        pool_layer_2_2_1_28_28_6_input_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = 1'b1;
    end else begin
        pool_layer_2_2_1_28_28_6_output_data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_9_fu_311_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = 1'b1;
    end else begin
        pool_layer_2_2_1_28_28_6_output_data_V_we0 = 1'b0;
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
            if (((exitcond2_fu_189_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond1_fu_223_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_fu_295_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_9_fu_311_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((tmp_11_fu_400_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign avg_V_fu_450_p2 = (pool_layer_2_2_1_28_28_6_input_data_V_q0 + p_Val2_s_reg_164);

assign ch_fu_301_p2 = (p_z_assign_reg_108 + 3'd1);

assign exitcond1_fu_223_p2 = ((p_y_assign_1_reg_97 == 4'd14) ? 1'b1 : 1'b0);

assign exitcond2_fu_189_p2 = ((p_x_assign_reg_86 == 4'd14) ? 1'b1 : 1'b0);

assign exitcond_fu_295_p2 = ((p_z_assign_reg_108 == 3'd6) ? 1'b1 : 1'b0);

assign h_2_cast4_fu_243_p1 = h_2_fu_235_p3;

assign h_2_cast_fu_247_p1 = h_2_fu_235_p3;

assign h_2_fu_235_p3 = {{p_y_assign_1_reg_97}, {1'd0}};

assign h_fu_434_p2 = (32'd1 + p_y_assign_2_reg_176);

assign next_mul2_fu_283_p2 = (phi_mul1_reg_131 + 13'd784);

assign next_mul_fu_289_p2 = (phi_mul_reg_119 + 10'd196);

assign o_x_fu_229_p2 = (p_y_assign_1_reg_97 + 4'd1);

assign o_y_fu_195_p2 = (p_x_assign_reg_86 + 4'd1);

assign p_neg_fu_347_p2 = ($signed(17'd0) - $signed(tmp_27_tr_fu_335_p1));

assign p_shl2_cast_fu_269_p1 = p_shl2_fu_261_p3;

assign p_shl2_fu_261_p3 = {{p_y_assign_1_reg_97}, {4'd0}};

assign p_x_assign_3_cast_fu_209_p1 = v_fu_201_p3;

assign p_x_assign_cast6_fu_185_p1 = p_x_assign_reg_86;

assign pool_layer_2_2_1_28_28_6_input_data_V_address0 = tmp_20_fu_446_p1;

assign pool_layer_2_2_1_28_28_6_output_data_V_address0 = tmp_4_fu_330_p1;

assign pool_layer_2_2_1_28_28_6_output_data_V_d0 = ((tmp_59_fu_339_p3[0:0] === 1'b1) ? tmp_15_fu_381_p2 : tmp_16_fu_387_p1);

assign tmp1_cast_fu_321_p1 = tmp1_fu_316_p2;

assign tmp1_fu_316_p2 = (p_x_assign_cast6_reg_456 + phi_mul_reg_119);

assign tmp_10_fu_363_p1 = tmp_s_fu_353_p4;

assign tmp_11_fu_400_p2 = (($signed(p_y_assign_2_reg_176) < $signed(tmp_1_cast_reg_492)) ? 1'b1 : 1'b0);

assign tmp_13_fu_367_p4 = {{t_V_reg_142[15:2]}};

assign tmp_14_fu_377_p1 = $signed(tmp_13_fu_367_p4);

assign tmp_15_fu_381_p2 = (16'd0 - tmp_10_fu_363_p1);

assign tmp_16_fu_387_p1 = $unsigned(tmp_14_fu_377_p1);

assign tmp_18_fu_417_p2 = (tmp_60_fu_405_p2 - tmp_61_fu_411_p2);

assign tmp_19_fu_429_p2 = (tmp_fu_423_p2 + tmp_cast7_reg_520);

assign tmp_1_cast_fu_257_p1 = tmp_1_fu_251_p2;

assign tmp_1_fu_251_p2 = (h_2_fu_235_p3 + 5'd2);

assign tmp_20_fu_446_p1 = $signed(tmp_19_reg_531);

assign tmp_27_tr_fu_335_p1 = t_V_reg_142;

assign tmp_3_cast_fu_279_p1 = $signed(tmp_3_fu_273_p2);

assign tmp_3_fu_273_p2 = (p_shl2_cast_fu_269_p1 - h_2_cast_fu_247_p1);

assign tmp_4_fu_330_p1 = $signed(tmp_7_fu_325_p2);

assign tmp_59_fu_339_p3 = t_V_reg_142[32'd15];

assign tmp_60_fu_405_p2 = p_y_assign_2_reg_176 << 32'd5;

assign tmp_61_fu_411_p2 = p_y_assign_2_reg_176 << 32'd2;

assign tmp_7_fu_325_p2 = ($signed(tmp1_cast_fu_321_p1) + $signed(tmp_3_cast_reg_497));

assign tmp_8_cast_fu_219_p1 = tmp_8_fu_213_p2;

assign tmp_8_fu_213_p2 = (v_fu_201_p3 + 5'd2);

assign tmp_9_fu_311_p2 = (($signed(p_x_assign_1_reg_154) < $signed(tmp_8_cast_reg_474)) ? 1'b1 : 1'b0);

assign tmp_cast7_fu_307_p1 = phi_mul1_reg_131;

assign tmp_fu_423_p2 = (p_x_assign_1_reg_154 + tmp_18_fu_417_p2);

assign tmp_s_fu_353_p4 = {{p_neg_fu_347_p2[16:2]}};

assign v_1_fu_440_p2 = (p_x_assign_1_reg_154 + 32'd1);

assign v_fu_201_p3 = {{p_x_assign_reg_86}, {1'd0}};

always @ (posedge ap_clk) begin
    p_x_assign_cast6_reg_456[9:4] <= 6'b000000;
    p_x_assign_3_cast_reg_469[0] <= 1'b0;
    p_x_assign_3_cast_reg_469[31:5] <= 27'b000000000000000000000000000;
    tmp_8_cast_reg_474[0] <= 1'b0;
    tmp_8_cast_reg_474[31:5] <= 27'b000000000000000000000000000;
    h_2_cast4_reg_487[0] <= 1'b0;
    h_2_cast4_reg_487[31:5] <= 27'b000000000000000000000000000;
    tmp_1_cast_reg_492[0] <= 1'b0;
    tmp_1_cast_reg_492[31:5] <= 27'b000000000000000000000000000;
    tmp_3_cast_reg_497[0] <= 1'b0;
    tmp_cast7_reg_520[31:13] <= 19'b0000000000000000000;
end

endmodule //forward_pool
