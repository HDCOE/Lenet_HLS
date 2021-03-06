// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Padding (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_V_address0,
        out_V_ce0,
        out_V_we0,
        out_V_d0,
        in_V_address0,
        in_V_ce0,
        in_V_q0
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] out_V_address0;
output   out_V_ce0;
output   out_V_we0;
output  [15:0] out_V_d0;
output  [9:0] in_V_address0;
output   in_V_ce0;
input  [15:0] in_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_V_ce0;
reg out_V_we0;
reg in_V_ce0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [10:0] idx_6_fu_152_p2;
reg   [10:0] idx_6_reg_236;
wire    ap_CS_fsm_state2;
wire   [0:0] ap_phi_mux_z_phi_fu_90_p4;
wire   [5:0] y_1_fu_164_p2;
reg   [5:0] y_1_reg_244;
wire    ap_CS_fsm_state3;
wire   [9:0] tmp_s_fu_174_p3;
reg   [9:0] tmp_s_reg_249;
wire   [0:0] exitcond3_fu_158_p2;
wire   [10:0] tmp_54_fu_182_p2;
reg   [10:0] tmp_54_reg_254;
wire   [10:0] indvars_iv_next_fu_188_p2;
wire   [5:0] x_1_fu_204_p2;
reg   [5:0] x_1_reg_267;
wire    ap_CS_fsm_state4;
wire   [9:0] tmp_fu_210_p2;
reg   [9:0] tmp_reg_272;
wire   [0:0] exitcond_fu_198_p2;
wire   [10:0] idx_4_fu_220_p2;
reg   [10:0] idx_4_reg_282;
wire   [10:0] indvars_iv_next2_fu_226_p2;
reg   [10:0] indvars_iv_reg_61;
reg   [10:0] idx_reg_73;
reg   [0:0] z_reg_85;
reg   [10:0] indvars_iv1_reg_98;
reg   [10:0] idx_1_reg_109;
reg   [5:0] y_reg_120;
reg   [10:0] idx_2_reg_131;
wire    ap_CS_fsm_state5;
reg   [5:0] x_reg_141;
wire   [63:0] tmp_109_fu_215_p1;
wire   [63:0] tmp_108_fu_232_p1;
wire   [4:0] tmp_81_fu_170_p1;
wire   [9:0] x_cast_fu_194_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_z_phi_fu_90_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_1_reg_109 <= idx_reg_73;
    end else if (((exitcond_fu_198_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        idx_1_reg_109 <= tmp_54_reg_254;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        idx_2_reg_131 <= idx_1_reg_109;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        idx_2_reg_131 <= idx_4_reg_282;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        idx_reg_73 <= 11'd0;
    end else if (((exitcond3_fu_158_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        idx_reg_73 <= idx_6_reg_236;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_z_phi_fu_90_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv1_reg_98 <= indvars_iv_reg_61;
    end else if (((exitcond_fu_198_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv1_reg_98 <= indvars_iv_next2_fu_226_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv_reg_61 <= 11'd32;
    end else if (((exitcond3_fu_158_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv_reg_61 <= indvars_iv_next_fu_188_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        x_reg_141 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_reg_141 <= x_1_reg_267;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_z_phi_fu_90_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        y_reg_120 <= 6'd0;
    end else if (((exitcond_fu_198_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        y_reg_120 <= y_1_reg_244;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        z_reg_85 <= 1'd0;
    end else if (((exitcond3_fu_158_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        z_reg_85 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_198_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        idx_4_reg_282 <= idx_4_fu_220_p2;
        tmp_reg_272 <= tmp_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_z_phi_fu_90_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_6_reg_236 <= idx_6_fu_152_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_158_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_54_reg_254 <= tmp_54_fu_182_p2;
        tmp_s_reg_249[9 : 5] <= tmp_s_fu_174_p3[9 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        x_1_reg_267 <= x_1_fu_204_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        y_1_reg_244 <= y_1_fu_164_p2;
    end
end

always @ (*) begin
    if ((((ap_phi_mux_z_phi_fu_90_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_phi_mux_z_phi_fu_90_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        in_V_ce0 = 1'b1;
    end else begin
        in_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_V_ce0 = 1'b1;
    end else begin
        out_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_V_we0 = 1'b1;
    end else begin
        out_V_we0 = 1'b0;
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
            if (((ap_phi_mux_z_phi_fu_90_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond3_fu_158_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_fu_198_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
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

assign ap_phi_mux_z_phi_fu_90_p4 = z_reg_85;

assign exitcond3_fu_158_p2 = ((y_reg_120 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond_fu_198_p2 = ((idx_2_reg_131 == indvars_iv1_reg_98) ? 1'b1 : 1'b0);

assign idx_4_fu_220_p2 = (idx_2_reg_131 + 11'd1);

assign idx_6_fu_152_p2 = (idx_reg_73 ^ 11'd1024);

assign in_V_address0 = tmp_109_fu_215_p1;

assign indvars_iv_next2_fu_226_p2 = (indvars_iv1_reg_98 + 11'd32);

assign indvars_iv_next_fu_188_p2 = (indvars_iv_reg_61 ^ 11'd1024);

assign out_V_address0 = tmp_108_fu_232_p1;

assign out_V_d0 = in_V_q0;

assign tmp_108_fu_232_p1 = tmp_reg_272;

assign tmp_109_fu_215_p1 = idx_2_reg_131;

assign tmp_54_fu_182_p2 = (11'd32 + idx_1_reg_109);

assign tmp_81_fu_170_p1 = y_reg_120[4:0];

assign tmp_fu_210_p2 = (tmp_s_reg_249 + x_cast_fu_194_p1);

assign tmp_s_fu_174_p3 = {{tmp_81_fu_170_p1}, {5'd0}};

assign x_1_fu_204_p2 = (x_reg_141 + 6'd1);

assign x_cast_fu_194_p1 = x_reg_141;

assign y_1_fu_164_p2 = (y_reg_120 + 6'd1);

always @ (posedge ap_clk) begin
    tmp_s_reg_249[4:0] <= 5'b00000;
end

endmodule //Padding
