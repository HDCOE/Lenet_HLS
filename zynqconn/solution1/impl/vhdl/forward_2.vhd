-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity forward_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_input_data_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_layer_5_6_1_0_32_32_1_input_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_6_1_0_32_32_1_output_data_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_output_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_6_1_0_32_32_1_output_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_6_1_0_32_32_1_W_data_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    conv_layer_5_6_1_0_32_32_1_W_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_W_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_d0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_q0 : IN STD_LOGIC_VECTOR (14 downto 0) );
end;


architecture behav of forward_2 is 
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
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv13_1260 : STD_LOGIC_VECTOR (12 downto 0) := "1001001100000";
    constant ap_const_lv13_1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_const_lv5_1C : STD_LOGIC_VECTOR (4 downto 0) := "11100";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv13_310 : STD_LOGIC_VECTOR (12 downto 0) := "0001100010000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_i0_0_i_cast7_fu_198_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_i0_0_i_cast7_reg_361 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal p_i0_fu_209_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_i0_reg_369 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_x_assign_cast6_fu_215_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_x_assign_cast6_reg_379 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ix_fu_225_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ix_reg_387 : STD_LOGIC_VECTOR (4 downto 0);
    signal iy_fu_237_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal iy_reg_395 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_7_i_cast_fu_273_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_7_i_cast_reg_400 : STD_LOGIC_VECTOR (13 downto 0);
    signal exitcond4_i_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal iz_fu_287_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal iz_reg_408 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal next_mul_fu_293_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal next_mul_reg_413 : STD_LOGIC_VECTOR (12 downto 0);
    signal exitcond_i_fu_281_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_fu_313_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i_reg_418 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_i0_0_i1_cast2_fu_339_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_i0_0_i1_cast2_reg_428 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal p_i0_7_fu_350_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_i0_7_reg_436 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_s_fu_344_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_forward_conv_fu_186_ap_start : STD_LOGIC;
    signal grp_forward_conv_fu_186_ap_done : STD_LOGIC;
    signal grp_forward_conv_fu_186_ap_idle : STD_LOGIC;
    signal grp_forward_conv_fu_186_ap_ready : STD_LOGIC;
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_input_data_V_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_input_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_address0 : STD_LOGIC_VECTOR (12 downto 0);
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_we0 : STD_LOGIC;
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_W_data_V_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_W_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0 : STD_LOGIC;
    signal grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_i0_0_i_reg_120 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal p_x_assign_reg_131 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_y_assign_reg_142 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond3_i_fu_219_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_z_assign_reg_153 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal phi_mul_reg_164 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_i0_0_i1_reg_175 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_forward_conv_fu_186_ap_start_reg : STD_LOGIC := '0';
    signal extLd_fu_356_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_shl_i_fu_243_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl1_i_fu_255_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl_i_cast_fu_251_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl1_i_cast_fu_263_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_7_i_fu_267_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal phi_mul_cast_fu_277_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp1_fu_299_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_9_i_fu_304_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_9_i_cast_fu_309_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_76_fu_322_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_75_fu_318_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);

    component forward_conv IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        conv_layer_5_6_1_0_32_32_1_input_data_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        conv_layer_5_6_1_0_32_32_1_input_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_6_1_0_32_32_1_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_6_1_0_32_32_1_output_data_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
        conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_6_1_0_32_32_1_output_data_V_we0 : OUT STD_LOGIC;
        conv_layer_5_6_1_0_32_32_1_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_6_1_0_32_32_1_W_data_V_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        conv_layer_5_6_1_0_32_32_1_W_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_6_1_0_32_32_1_W_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0 : OUT STD_LOGIC;
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    grp_forward_conv_fu_186 : component forward_conv
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_forward_conv_fu_186_ap_start,
        ap_done => grp_forward_conv_fu_186_ap_done,
        ap_idle => grp_forward_conv_fu_186_ap_idle,
        ap_ready => grp_forward_conv_fu_186_ap_ready,
        conv_layer_5_6_1_0_32_32_1_input_data_V_address0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_input_data_V_address0,
        conv_layer_5_6_1_0_32_32_1_input_data_V_ce0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_input_data_V_ce0,
        conv_layer_5_6_1_0_32_32_1_input_data_V_q0 => conv_layer_5_6_1_0_32_32_1_input_data_V_q0,
        conv_layer_5_6_1_0_32_32_1_output_data_V_address0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_address0,
        conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_ce0,
        conv_layer_5_6_1_0_32_32_1_output_data_V_we0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_we0,
        conv_layer_5_6_1_0_32_32_1_output_data_V_d0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_d0,
        conv_layer_5_6_1_0_32_32_1_W_data_V_address0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_W_data_V_address0,
        conv_layer_5_6_1_0_32_32_1_W_data_V_ce0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_W_data_V_ce0,
        conv_layer_5_6_1_0_32_32_1_W_data_V_q0 => conv_layer_5_6_1_0_32_32_1_W_data_V_q0,
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0,
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0,
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0,
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0 => grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0,
        conv_layer_5_6_1_0_32_32_1_inpad_data_V_q0 => conv_layer_5_6_1_0_32_32_1_inpad_data_V_q0);





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


    grp_forward_conv_fu_186_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_forward_conv_fu_186_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_forward_conv_fu_186_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_forward_conv_fu_186_ap_ready = ap_const_logic_1)) then 
                    grp_forward_conv_fu_186_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    p_i0_0_i1_reg_175_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (exitcond3_i_fu_219_p2 = ap_const_lv1_1))) then 
                p_i0_0_i1_reg_175 <= ap_const_lv13_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                p_i0_0_i1_reg_175 <= p_i0_7_reg_436;
            end if; 
        end if;
    end process;

    p_i0_0_i_reg_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                p_i0_0_i_reg_120 <= p_i0_reg_369;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_forward_conv_fu_186_ap_done = ap_const_logic_1))) then 
                p_i0_0_i_reg_120 <= ap_const_lv13_0;
            end if; 
        end if;
    end process;

    p_x_assign_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_203_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_x_assign_reg_131 <= ap_const_lv5_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond4_i_fu_231_p2 = ap_const_lv1_1))) then 
                p_x_assign_reg_131 <= ix_reg_387;
            end if; 
        end if;
    end process;

    p_y_assign_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_i_fu_219_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_y_assign_reg_142 <= ap_const_lv5_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (exitcond_i_fu_281_p2 = ap_const_lv1_1))) then 
                p_y_assign_reg_142 <= iy_reg_395;
            end if; 
        end if;
    end process;

    p_z_assign_reg_153_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_i_fu_231_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                p_z_assign_reg_153 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                p_z_assign_reg_153 <= iz_reg_408;
            end if; 
        end if;
    end process;

    phi_mul_reg_164_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_i_fu_231_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                phi_mul_reg_164 <= ap_const_lv13_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                phi_mul_reg_164 <= next_mul_reg_413;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                ix_reg_387 <= ix_fu_225_p2;
                    p_x_assign_cast6_reg_379(4 downto 0) <= p_x_assign_cast6_fu_215_p1(4 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                iy_reg_395 <= iy_fu_237_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                iz_reg_408 <= iz_fu_287_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_i_fu_281_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                next_mul_reg_413 <= next_mul_fu_293_p2;
                    tmp_i_reg_418(31 downto 0) <= tmp_i_fu_313_p1(31 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                    p_i0_0_i1_cast2_reg_428(12 downto 0) <= p_i0_0_i1_cast2_fu_339_p1(12 downto 0);
                p_i0_7_reg_436 <= p_i0_7_fu_350_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    p_i0_0_i_cast7_reg_361(12 downto 0) <= p_i0_0_i_cast7_fu_198_p1(12 downto 0);
                p_i0_reg_369 <= p_i0_fu_209_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond4_i_fu_231_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    tmp_7_i_cast_reg_400(13 downto 2) <= tmp_7_i_cast_fu_273_p1(13 downto 2);
            end if;
        end if;
    end process;
    p_i0_0_i_cast7_reg_361(63 downto 13) <= "000000000000000000000000000000000000000000000000000";
    p_x_assign_cast6_reg_379(13 downto 5) <= "000000000";
    tmp_7_i_cast_reg_400(1 downto 0) <= "00";
    tmp_i_reg_418(63 downto 32) <= "00000000000000000000000000000000";
    p_i0_0_i1_cast2_reg_428(63 downto 13) <= "000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, tmp_fu_203_p2, ap_CS_fsm_state5, ap_CS_fsm_state6, exitcond4_i_fu_231_p2, ap_CS_fsm_state7, exitcond_i_fu_281_p2, ap_CS_fsm_state9, tmp_s_fu_344_p2, grp_forward_conv_fu_186_ap_done, ap_CS_fsm_state2, exitcond3_i_fu_219_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_forward_conv_fu_186_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_fu_203_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (exitcond3_i_fu_219_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond4_i_fu_231_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (exitcond_i_fu_281_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (tmp_s_fu_344_p2 = ap_const_lv1_1))) then
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state9, tmp_s_fu_344_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state9) and (tmp_s_fu_344_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state9, tmp_s_fu_344_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) and (tmp_s_fu_344_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_6_1_0_32_32_1_W_data_V_address0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_W_data_V_address0;
    conv_layer_5_6_1_0_32_32_1_W_data_V_ce0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_W_data_V_ce0;
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_address0;
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_ce0;
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_d0;
    conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_inpad_data_V_we0;
    conv_layer_5_6_1_0_32_32_1_input_data_V_address0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_input_data_V_address0;
    conv_layer_5_6_1_0_32_32_1_input_data_V_ce0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_input_data_V_ce0;

    conv_layer_5_6_1_0_32_32_1_output_data_V_address0_assign_proc : process(p_i0_0_i_cast7_fu_198_p1, ap_CS_fsm_state3, p_i0_0_i1_cast2_reg_428, grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_address0, ap_CS_fsm_state2, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_address0 <= p_i0_0_i1_cast2_reg_428(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_address0 <= p_i0_0_i_cast7_fu_198_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_address0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_address0;
        else 
            conv_layer_5_6_1_0_32_32_1_output_data_V_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_6_1_0_32_32_1_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state3, grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_ce0, ap_CS_fsm_state2, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state10))) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_ce0;
        else 
            conv_layer_5_6_1_0_32_32_1_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_6_1_0_32_32_1_output_data_V_d0_assign_proc : process(grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_d0, ap_CS_fsm_state2, ap_CS_fsm_state10, extLd_fu_356_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_d0 <= extLd_fu_356_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_d0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_d0;
        else 
            conv_layer_5_6_1_0_32_32_1_output_data_V_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_6_1_0_32_32_1_output_data_V_we0_assign_proc : process(grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_we0, ap_CS_fsm_state2, ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_6_1_0_32_32_1_output_data_V_we0 <= grp_forward_conv_fu_186_conv_layer_5_6_1_0_32_32_1_output_data_V_we0;
        else 
            conv_layer_5_6_1_0_32_32_1_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_address0_assign_proc : process(p_i0_0_i_cast7_reg_361, ap_CS_fsm_state7, tmp_i_fu_313_p1, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_address0 <= tmp_i_fu_313_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_address0 <= p_i0_0_i_cast7_reg_361(13 - 1 downto 0);
        else 
            conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_ce0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_ce0 <= ap_const_logic_1;
        else 
            conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_d0 <= conv_layer_5_6_1_0_32_32_1_output_data_V_q0;

    conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_we0 <= ap_const_logic_1;
        else 
            conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_address0_assign_proc : process(tmp_i_reg_418, p_i0_0_i1_cast2_fu_339_p1, ap_CS_fsm_state9, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_address0 <= p_i0_0_i1_cast2_fu_339_p1(13 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_address0 <= tmp_i_reg_418(13 - 1 downto 0);
        else 
            conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state9, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_ce0 <= ap_const_logic_1;
        else 
            conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_d0 <= 
        ap_const_lv15_0 when (tmp_76_fu_322_p3(0) = '1') else 
        tmp_75_fu_318_p1;

    conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_we0_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_we0 <= ap_const_logic_1;
        else 
            conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond3_i_fu_219_p2 <= "1" when (p_x_assign_reg_131 = ap_const_lv5_1C) else "0";
    exitcond4_i_fu_231_p2 <= "1" when (p_y_assign_reg_142 = ap_const_lv5_1C) else "0";
    exitcond_i_fu_281_p2 <= "1" when (p_z_assign_reg_153 = ap_const_lv3_6) else "0";
    extLd_fu_356_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(conv_layer_5_6_1_0_32_32_1_relu1_output_data_V_q0),16));
    grp_forward_conv_fu_186_ap_start <= grp_forward_conv_fu_186_ap_start_reg;
    ix_fu_225_p2 <= std_logic_vector(unsigned(p_x_assign_reg_131) + unsigned(ap_const_lv5_1));
    iy_fu_237_p2 <= std_logic_vector(unsigned(p_y_assign_reg_142) + unsigned(ap_const_lv5_1));
    iz_fu_287_p2 <= std_logic_vector(unsigned(p_z_assign_reg_153) + unsigned(ap_const_lv3_1));
    next_mul_fu_293_p2 <= std_logic_vector(unsigned(ap_const_lv13_310) + unsigned(phi_mul_reg_164));
    p_i0_0_i1_cast2_fu_339_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_i0_0_i1_reg_175),64));
    p_i0_0_i_cast7_fu_198_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_i0_0_i_reg_120),64));
    p_i0_7_fu_350_p2 <= std_logic_vector(unsigned(p_i0_0_i1_reg_175) + unsigned(ap_const_lv13_1));
    p_i0_fu_209_p2 <= std_logic_vector(unsigned(p_i0_0_i_reg_120) + unsigned(ap_const_lv13_1));
    p_shl1_i_cast_fu_263_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl1_i_fu_255_p3),11));
    p_shl1_i_fu_255_p3 <= (p_y_assign_reg_142 & ap_const_lv2_0);
    p_shl_i_cast_fu_251_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_i_fu_243_p3),11));
    p_shl_i_fu_243_p3 <= (p_y_assign_reg_142 & ap_const_lv5_0);
    p_x_assign_cast6_fu_215_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_x_assign_reg_131),14));
    phi_mul_cast_fu_277_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(phi_mul_reg_164),14));
    tmp1_fu_299_p2 <= std_logic_vector(signed(tmp_7_i_cast_reg_400) + signed(phi_mul_cast_fu_277_p1));
    tmp_75_fu_318_p1 <= conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_q0(15 - 1 downto 0);
    tmp_76_fu_322_p3 <= conv_layer_5_6_1_0_32_32_1_relu1_input_data_V_q0(15 downto 15);
        tmp_7_i_cast_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_7_i_fu_267_p2),14));

    tmp_7_i_fu_267_p2 <= std_logic_vector(unsigned(p_shl_i_cast_fu_251_p1) - unsigned(p_shl1_i_cast_fu_263_p1));
        tmp_9_i_cast_fu_309_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_9_i_fu_304_p2),32));

    tmp_9_i_fu_304_p2 <= std_logic_vector(unsigned(tmp1_fu_299_p2) + unsigned(p_x_assign_cast6_reg_379));
    tmp_fu_203_p2 <= "1" when (p_i0_0_i_reg_120 = ap_const_lv13_1260) else "0";
    tmp_i_fu_313_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_9_i_cast_fu_309_p1),64));
    tmp_s_fu_344_p2 <= "1" when (p_i0_0_i1_reg_175 = ap_const_lv13_1260) else "0";
end behav;
