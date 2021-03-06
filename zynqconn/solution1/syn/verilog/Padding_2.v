// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Padding_2 (
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
output  [8:0] out_V_address0;
output   out_V_ce0;
output   out_V_we0;
output  [15:0] out_V_d0;
output  [8:0] in_V_address0;
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
wire   [8:0] next_mul_fu_164_p2;
reg   [8:0] next_mul_reg_282;
wire    ap_CS_fsm_state2;
wire   [4:0] z_1_fu_176_p2;
reg   [4:0] z_1_reg_290;
wire   [8:0] idx_3_fu_182_p2;
reg   [8:0] idx_3_reg_295;
wire   [0:0] exitcond4_fu_170_p2;
wire   [2:0] y_1_fu_198_p2;
reg   [2:0] y_1_reg_303;
wire    ap_CS_fsm_state3;
wire   [8:0] tmp_50_fu_212_p2;
reg   [8:0] tmp_50_reg_308;
wire   [0:0] exitcond3_fu_192_p2;
wire   [8:0] tmp_cast_fu_224_p1;
reg   [8:0] tmp_cast_reg_313;
wire   [8:0] indvars_iv_next_fu_228_p2;
wire   [2:0] x_1_fu_244_p2;
reg   [2:0] x_1_reg_326;
wire    ap_CS_fsm_state4;
wire   [8:0] tmp_s_fu_256_p2;
reg   [8:0] tmp_s_reg_331;
wire   [0:0] exitcond_fu_238_p2;
wire   [8:0] idx_4_fu_266_p2;
reg   [8:0] idx_4_reg_341;
wire   [8:0] indvars_iv_next2_fu_272_p2;
reg   [8:0] indvars_iv_reg_63;
reg   [8:0] idx_reg_75;
reg   [4:0] z_reg_87;
reg   [8:0] phi_mul_reg_98;
reg   [8:0] indvars_iv1_reg_110;
reg   [8:0] idx_1_reg_121;
reg   [2:0] y_reg_132;
reg   [8:0] idx_2_reg_143;
wire    ap_CS_fsm_state5;
reg   [2:0] x_reg_153;
wire   [63:0] tmp_104_fu_261_p1;
wire   [63:0] tmp_103_fu_278_p1;
wire   [4:0] y_cast3_fu_188_p1;
wire   [4:0] p_shl_fu_204_p3;
wire   [4:0] tmp_fu_218_p2;
wire   [8:0] x_cast_fu_234_p1;
wire   [8:0] tmp1_fu_250_p2;
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
    if (((exitcond4_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_1_reg_121 <= idx_reg_75;
    end else if (((exitcond_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        idx_1_reg_121 <= tmp_50_reg_308;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        idx_2_reg_143 <= idx_1_reg_121;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        idx_2_reg_143 <= idx_4_reg_341;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        idx_reg_75 <= 9'd0;
    end else if (((exitcond3_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        idx_reg_75 <= idx_3_reg_295;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        indvars_iv1_reg_110 <= indvars_iv_reg_63;
    end else if (((exitcond_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv1_reg_110 <= indvars_iv_next2_fu_272_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv_reg_63 <= 9'd5;
    end else if (((exitcond3_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv_reg_63 <= indvars_iv_next_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul_reg_98 <= 9'd0;
    end else if (((exitcond3_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_reg_98 <= next_mul_reg_282;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        x_reg_153 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_reg_153 <= x_1_reg_326;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        y_reg_132 <= 3'd0;
    end else if (((exitcond_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        y_reg_132 <= y_1_reg_303;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        z_reg_87 <= 5'd0;
    end else if (((exitcond3_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        z_reg_87 <= z_1_reg_290;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_170_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        idx_3_reg_295 <= idx_3_fu_182_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_238_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        idx_4_reg_341 <= idx_4_fu_266_p2;
        tmp_s_reg_331 <= tmp_s_fu_256_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        next_mul_reg_282 <= next_mul_fu_164_p2;
        z_1_reg_290 <= z_1_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_50_reg_308 <= tmp_50_fu_212_p2;
        tmp_cast_reg_313[4 : 0] <= tmp_cast_fu_224_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        x_1_reg_326 <= x_1_fu_244_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        y_1_reg_303 <= y_1_fu_198_p2;
    end
end

always @ (*) begin
    if ((((exitcond4_fu_170_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((exitcond4_fu_170_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((exitcond4_fu_170_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond3_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
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

assign exitcond3_fu_192_p2 = ((y_reg_132 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond4_fu_170_p2 = ((z_reg_87 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_fu_238_p2 = ((idx_2_reg_143 == indvars_iv1_reg_110) ? 1'b1 : 1'b0);

assign idx_3_fu_182_p2 = (idx_reg_75 + 9'd25);

assign idx_4_fu_266_p2 = (idx_2_reg_143 + 9'd1);

assign in_V_address0 = tmp_104_fu_261_p1;

assign indvars_iv_next2_fu_272_p2 = (indvars_iv1_reg_110 + 9'd5);

assign indvars_iv_next_fu_228_p2 = (indvars_iv_reg_63 + 9'd25);

assign next_mul_fu_164_p2 = (phi_mul_reg_98 + 9'd25);

assign out_V_address0 = tmp_103_fu_278_p1;

assign out_V_d0 = in_V_q0;

assign p_shl_fu_204_p3 = {{y_reg_132}, {2'd0}};

assign tmp1_fu_250_p2 = (phi_mul_reg_98 + x_cast_fu_234_p1);

assign tmp_103_fu_278_p1 = tmp_s_reg_331;

assign tmp_104_fu_261_p1 = idx_2_reg_143;

assign tmp_50_fu_212_p2 = (idx_1_reg_121 + 9'd5);

assign tmp_cast_fu_224_p1 = tmp_fu_218_p2;

assign tmp_fu_218_p2 = (y_cast3_fu_188_p1 + p_shl_fu_204_p3);

assign tmp_s_fu_256_p2 = (tmp1_fu_250_p2 + tmp_cast_reg_313);

assign x_1_fu_244_p2 = (x_reg_153 + 3'd1);

assign x_cast_fu_234_p1 = x_reg_153;

assign y_1_fu_198_p2 = (y_reg_132 + 3'd1);

assign y_cast3_fu_188_p1 = y_reg_132;

assign z_1_fu_176_p2 = (z_reg_87 + 5'd1);

always @ (posedge ap_clk) begin
    tmp_cast_reg_313[8:5] <= 4'b0000;
end

endmodule //Padding_2
