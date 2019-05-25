-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity forward_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_input_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    conv_layer_5_16_1_0_14_14_6_input_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_16_1_0_14_14_6_output_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    conv_layer_5_16_1_0_14_14_6_output_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_output_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_16_1_0_14_14_6_output_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_16_1_0_14_14_6_W_data_V_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    conv_layer_5_16_1_0_14_14_6_W_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_W_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_d0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_q0 : IN STD_LOGIC_VECTOR (14 downto 0) );
end;


architecture behav of forward_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv11_640 : STD_LOGIC_VECTOR (10 downto 0) := "11001000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv11_64 : STD_LOGIC_VECTOR (10 downto 0) := "00001100100";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_i0_0_i_cast7_fu_200_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_i0_0_i_cast7_reg_351 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal p_i0_fu_211_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_i0_reg_359 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_x_assign_cast6_fu_217_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_x_assign_cast6_reg_369 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ix_fu_227_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ix_reg_377 : STD_LOGIC_VECTOR (3 downto 0);
    signal iy_fu_239_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal iy_reg_385 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp1_cast_fu_271_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp1_cast_reg_390 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond8_i_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal iz_fu_281_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal iz_reg_398 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal next_mul_fu_287_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal next_mul_reg_403 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond_i_fu_275_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_i_fu_303_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_i_reg_408 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_i0_0_i1_cast3_fu_329_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_i0_0_i1_cast3_reg_418 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal p_i0_6_fu_340_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_i0_6_reg_426 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_s_fu_334_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_forward_conv_1_fu_188_ap_start : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_ap_done : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_ap_idle : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_ap_ready : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_input_data_V_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_input_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_we0 : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_W_data_V_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_W_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_we0 : STD_LOGIC;
    signal grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_i0_0_i_reg_122 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal p_x_assign_reg_133 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_y_assign_reg_144 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond7_i_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_z_assign_reg_155 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal phi_mul_reg_166 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_i0_0_i1_reg_177 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_forward_conv_1_fu_188_ap_start_reg : STD_LOGIC := '0';
    signal extLd_fu_346_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_shl1_i_fu_253_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_shl1_i_cast_fu_261_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl_i_fu_245_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp1_fu_265_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp2_fu_293_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_7_i_fu_298_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_74_fu_312_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_73_fu_308_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);

    component forward_conv_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        conv_layer_5_16_1_0_14_14_6_input_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
        conv_layer_5_16_1_0_14_14_6_input_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_16_1_0_14_14_6_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_16_1_0_14_14_6_output_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
        conv_layer_5_16_1_0_14_14_6_output_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_16_1_0_14_14_6_output_data_V_we0 : OUT STD_LOGIC;
        conv_layer_5_16_1_0_14_14_6_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_16_1_0_14_14_6_W_data_V_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        conv_layer_5_16_1_0_14_14_6_W_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_16_1_0_14_14_6_W_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_we0 : OUT STD_LOGIC;
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    grp_forward_conv_1_fu_188 : component forward_conv_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_forward_conv_1_fu_188_ap_start,
        ap_done => grp_forward_conv_1_fu_188_ap_done,
        ap_idle => grp_forward_conv_1_fu_188_ap_idle,
        ap_ready => grp_forward_conv_1_fu_188_ap_ready,
        conv_layer_5_16_1_0_14_14_6_input_data_V_address0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_input_data_V_address0,
        conv_layer_5_16_1_0_14_14_6_input_data_V_ce0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_input_data_V_ce0,
        conv_layer_5_16_1_0_14_14_6_input_data_V_q0 => conv_layer_5_16_1_0_14_14_6_input_data_V_q0,
        conv_layer_5_16_1_0_14_14_6_output_data_V_address0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_address0,
        conv_layer_5_16_1_0_14_14_6_output_data_V_ce0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_ce0,
        conv_layer_5_16_1_0_14_14_6_output_data_V_we0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_we0,
        conv_layer_5_16_1_0_14_14_6_output_data_V_d0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_d0,
        conv_layer_5_16_1_0_14_14_6_W_data_V_address0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_W_data_V_address0,
        conv_layer_5_16_1_0_14_14_6_W_data_V_ce0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_W_data_V_ce0,
        conv_layer_5_16_1_0_14_14_6_W_data_V_q0 => conv_layer_5_16_1_0_14_14_6_W_data_V_q0,
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_address0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_address0,
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_ce0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_ce0,
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_we0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_we0,
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_d0 => grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_d0,
        conv_layer_5_16_1_0_14_14_6_inpad_data_V_q0 => conv_layer_5_16_1_0_14_14_6_inpad_data_V_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_forward_conv_1_fu_188_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_forward_conv_1_fu_188_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_forward_conv_1_fu_188_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_forward_conv_1_fu_188_ap_ready = ap_const_logic_1)) then 
                    grp_forward_conv_1_fu_188_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    p_i0_0_i1_reg_177_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (exitcond7_i_fu_221_p2 = ap_const_lv1_1))) then 
                p_i0_0_i1_reg_177 <= ap_const_lv11_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                p_i0_0_i1_reg_177 <= p_i0_6_reg_426;
            end if; 
        end if;
    end process;

    p_i0_0_i_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                p_i0_0_i_reg_122 <= p_i0_reg_359;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_forward_conv_1_fu_188_ap_done = ap_const_logic_1))) then 
                p_i0_0_i_reg_122 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    p_x_assign_reg_133_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_205_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_x_assign_reg_133 <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond8_i_fu_233_p2 = ap_const_lv1_1))) then 
                p_x_assign_reg_133 <= ix_reg_377;
            end if; 
        end if;
    end process;

    p_y_assign_reg_144_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond7_i_fu_221_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_y_assign_reg_144 <= ap_const_lv4_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (exitcond_i_fu_275_p2 = ap_const_lv1_1))) then 
                p_y_assign_reg_144 <= iy_reg_385;
            end if; 
        end if;
    end process;

    p_z_assign_reg_155_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond8_i_fu_233_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                p_z_assign_reg_155 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                p_z_assign_reg_155 <= iz_reg_398;
            end if; 
        end if;
    end process;

    phi_mul_reg_166_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond8_i_fu_233_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                phi_mul_reg_166 <= ap_const_lv11_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                phi_mul_reg_166 <= next_mul_reg_403;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                ix_reg_377 <= ix_fu_227_p2;
                    p_x_assign_cast6_reg_369(3 downto 0) <= p_x_assign_cast6_fu_217_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                iy_reg_385 <= iy_fu_239_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                iz_reg_398 <= iz_fu_281_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_i_fu_275_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                next_mul_reg_403 <= next_mul_fu_287_p2;
                    tmp_8_i_reg_408(10 downto 0) <= tmp_8_i_fu_303_p1(10 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                    p_i0_0_i1_cast3_reg_418(10 downto 0) <= p_i0_0_i1_cast3_fu_329_p1(10 downto 0);
                p_i0_6_reg_426 <= p_i0_6_fu_340_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    p_i0_0_i_cast7_reg_351(10 downto 0) <= p_i0_0_i_cast7_fu_200_p1(10 downto 0);
                p_i0_reg_359 <= p_i0_fu_211_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond8_i_fu_233_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    tmp1_cast_reg_390(6 downto 1) <= tmp1_cast_fu_271_p1(6 downto 1);
            end if;
        end if;
    end process;
    p_i0_0_i_cast7_reg_351(63 downto 11) <= "00000000000000000000000000000000000000000000000000000";
    p_x_assign_cast6_reg_369(10 downto 4) <= "0000000";
    tmp1_cast_reg_390(0) <= '0';
    tmp1_cast_reg_390(10 downto 7) <= "0000";
    tmp_8_i_reg_408(63 downto 11) <= "00000000000000000000000000000000000000000000000000000";
    p_i0_0_i1_cast3_reg_418(63 downto 11) <= "00000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, tmp_fu_205_p2, ap_CS_fsm_state5, ap_CS_fsm_state6, exitcond8_i_fu_233_p2, ap_CS_fsm_state7, exitcond_i_fu_275_p2, ap_CS_fsm_state9, tmp_s_fu_334_p2, grp_forward_conv_1_fu_188_ap_done, ap_CS_fsm_state2, exitcond7_i_fu_221_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_forward_conv_1_fu_188_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_fu_205_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (exitcond7_i_fu_221_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond8_i_fu_233_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (exitcond_i_fu_275_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (tmp_s_fu_334_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state9, tmp_s_fu_334_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state9) and (tmp_s_fu_334_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state9, tmp_s_fu_334_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) and (tmp_s_fu_334_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_16_1_0_14_14_6_W_data_V_address0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_W_data_V_address0;
    conv_layer_5_16_1_0_14_14_6_W_data_V_ce0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_W_data_V_ce0;
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_address0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_address0;
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_ce0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_ce0;
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_d0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_d0;
    conv_layer_5_16_1_0_14_14_6_inpad_data_V_we0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_inpad_data_V_we0;
    conv_layer_5_16_1_0_14_14_6_input_data_V_address0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_input_data_V_address0;
    conv_layer_5_16_1_0_14_14_6_input_data_V_ce0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_input_data_V_ce0;

    conv_layer_5_16_1_0_14_14_6_output_data_V_address0_assign_proc : process(p_i0_0_i_cast7_fu_200_p1, ap_CS_fsm_state3, p_i0_0_i1_cast3_reg_418, grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_address0, ap_CS_fsm_state2, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_address0 <= p_i0_0_i1_cast3_reg_418(11 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_address0 <= p_i0_0_i_cast7_fu_200_p1(11 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_address0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_address0;
        else 
            conv_layer_5_16_1_0_14_14_6_output_data_V_address0 <= "XXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_16_1_0_14_14_6_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state3, grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_ce0, ap_CS_fsm_state2, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_ce0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_ce0;
        else 
            conv_layer_5_16_1_0_14_14_6_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_16_1_0_14_14_6_output_data_V_d0_assign_proc : process(grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_d0, ap_CS_fsm_state2, ap_CS_fsm_state10, extLd_fu_346_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_d0 <= extLd_fu_346_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_d0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_d0;
        else 
            conv_layer_5_16_1_0_14_14_6_output_data_V_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_16_1_0_14_14_6_output_data_V_we0_assign_proc : process(grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_we0, ap_CS_fsm_state2, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_16_1_0_14_14_6_output_data_V_we0 <= grp_forward_conv_1_fu_188_conv_layer_5_16_1_0_14_14_6_output_data_V_we0;
        else 
            conv_layer_5_16_1_0_14_14_6_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_address0_assign_proc : process(p_i0_0_i_cast7_reg_351, ap_CS_fsm_state7, tmp_8_i_fu_303_p1, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_address0 <= tmp_8_i_fu_303_p1(11 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_address0 <= p_i0_0_i_cast7_reg_351(11 - 1 downto 0);
        else 
            conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_address0 <= "XXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_ce0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_ce0 <= ap_const_logic_1;
        else 
            conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_d0 <= conv_layer_5_16_1_0_14_14_6_output_data_V_q0;

    conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_we0 <= ap_const_logic_1;
        else 
            conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_address0_assign_proc : process(tmp_8_i_reg_408, p_i0_0_i1_cast3_fu_329_p1, ap_CS_fsm_state9, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_address0 <= p_i0_0_i1_cast3_fu_329_p1(11 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_address0 <= tmp_8_i_reg_408(11 - 1 downto 0);
        else 
            conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_address0 <= "XXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state9, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_ce0 <= ap_const_logic_1;
        else 
            conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_d0 <= 
        ap_const_lv15_0 when (tmp_74_fu_312_p3(0) = '1') else 
        tmp_73_fu_308_p1;

    conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_we0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_we0 <= ap_const_logic_1;
        else 
            conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond7_i_fu_221_p2 <= "1" when (p_x_assign_reg_133 = ap_const_lv4_A) else "0";
    exitcond8_i_fu_233_p2 <= "1" when (p_y_assign_reg_144 = ap_const_lv4_A) else "0";
    exitcond_i_fu_275_p2 <= "1" when (p_z_assign_reg_155 = ap_const_lv5_10) else "0";
    extLd_fu_346_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(conv_layer_5_16_1_0_14_14_6_relu1_output_data_V_q0),16));
    grp_forward_conv_1_fu_188_ap_start <= grp_forward_conv_1_fu_188_ap_start_reg;
    ix_fu_227_p2 <= std_logic_vector(unsigned(p_x_assign_reg_133) + unsigned(ap_const_lv4_1));
    iy_fu_239_p2 <= std_logic_vector(unsigned(p_y_assign_reg_144) + unsigned(ap_const_lv4_1));
    iz_fu_281_p2 <= std_logic_vector(unsigned(p_z_assign_reg_155) + unsigned(ap_const_lv5_1));
    next_mul_fu_287_p2 <= std_logic_vector(unsigned(ap_const_lv11_64) + unsigned(phi_mul_reg_166));
    p_i0_0_i1_cast3_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_i0_0_i1_reg_177),64));
    p_i0_0_i_cast7_fu_200_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_i0_0_i_reg_122),64));
    p_i0_6_fu_340_p2 <= std_logic_vector(unsigned(p_i0_0_i1_reg_177) + unsigned(ap_const_lv11_1));
    p_i0_fu_211_p2 <= std_logic_vector(unsigned(p_i0_0_i_reg_122) + unsigned(ap_const_lv11_1));
    p_shl1_i_cast_fu_261_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl1_i_fu_253_p3),7));
    p_shl1_i_fu_253_p3 <= (p_y_assign_reg_144 & ap_const_lv1_0);
    p_shl_i_fu_245_p3 <= (p_y_assign_reg_144 & ap_const_lv3_0);
    p_x_assign_cast6_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_x_assign_reg_133),11));
    tmp1_cast_fu_271_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_fu_265_p2),11));
    tmp1_fu_265_p2 <= std_logic_vector(unsigned(p_shl1_i_cast_fu_261_p1) + unsigned(p_shl_i_fu_245_p3));
    tmp2_fu_293_p2 <= std_logic_vector(unsigned(p_x_assign_cast6_reg_369) + unsigned(phi_mul_reg_166));
    tmp_73_fu_308_p1 <= conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_q0(15 - 1 downto 0);
    tmp_74_fu_312_p3 <= conv_layer_5_16_1_0_14_14_6_relu1_input_data_V_q0(15 downto 15);
    tmp_7_i_fu_298_p2 <= std_logic_vector(unsigned(tmp2_fu_293_p2) + unsigned(tmp1_cast_reg_390));
    tmp_8_i_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_7_i_fu_298_p2),64));
    tmp_fu_205_p2 <= "1" when (p_i0_0_i_reg_122 = ap_const_lv11_640) else "0";
    tmp_s_fu_334_p2 <= "1" when (p_i0_0_i1_reg_177 = ap_const_lv11_640) else "0";
end behav;