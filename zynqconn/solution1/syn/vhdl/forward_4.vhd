-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity forward_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_input_data_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    conv_layer_5_120_1_0_5_5_16_input_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_output_data_V_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    conv_layer_5_120_1_0_5_5_16_output_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_output_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_output_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_W_data_V_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_W_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_W_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_ce0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_we0 : OUT STD_LOGIC;
    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_d0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_q0 : IN STD_LOGIC_VECTOR (14 downto 0) );
end;


architecture behav of forward_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv7_78 : STD_LOGIC_VECTOR (6 downto 0) := "1111000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_i0_0_i_cast3_fu_141_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_i0_0_i_cast3_reg_218 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal p_i0_fu_152_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_i0_reg_226 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal iz_0_i_fu_164_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal iz_0_i_reg_239 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_10_0_i_fu_170_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_10_0_i_reg_244 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond_0_i_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_i0_0_i1_cast1_fu_196_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_i0_0_i1_cast1_reg_254 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal p_i0_5_fu_207_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_i0_5_reg_262 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_s_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_forward_conv_2_fu_129_ap_start : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_ap_done : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_ap_idle : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_ap_ready : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_input_data_V_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_input_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_we0 : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_W_data_V_address0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_W_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0 : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0 : STD_LOGIC;
    signal grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_i0_0_i_reg_96 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal p_z_assign_0_i_reg_107 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal p_i0_0_i1_reg_118 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_forward_conv_2_fu_129_ap_start_reg : STD_LOGIC := '0';
    signal extLd_fu_213_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_72_fu_179_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_71_fu_175_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);

    component forward_conv_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        conv_layer_5_120_1_0_5_5_16_input_data_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        conv_layer_5_120_1_0_5_5_16_input_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_120_1_0_5_5_16_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_120_1_0_5_5_16_output_data_V_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        conv_layer_5_120_1_0_5_5_16_output_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_120_1_0_5_5_16_output_data_V_we0 : OUT STD_LOGIC;
        conv_layer_5_120_1_0_5_5_16_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_120_1_0_5_5_16_W_data_V_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_120_1_0_5_5_16_W_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_120_1_0_5_5_16_W_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0 : OUT STD_LOGIC;
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0 : OUT STD_LOGIC;
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    grp_forward_conv_2_fu_129 : component forward_conv_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_forward_conv_2_fu_129_ap_start,
        ap_done => grp_forward_conv_2_fu_129_ap_done,
        ap_idle => grp_forward_conv_2_fu_129_ap_idle,
        ap_ready => grp_forward_conv_2_fu_129_ap_ready,
        conv_layer_5_120_1_0_5_5_16_input_data_V_address0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_input_data_V_address0,
        conv_layer_5_120_1_0_5_5_16_input_data_V_ce0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_input_data_V_ce0,
        conv_layer_5_120_1_0_5_5_16_input_data_V_q0 => conv_layer_5_120_1_0_5_5_16_input_data_V_q0,
        conv_layer_5_120_1_0_5_5_16_output_data_V_address0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_address0,
        conv_layer_5_120_1_0_5_5_16_output_data_V_ce0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_ce0,
        conv_layer_5_120_1_0_5_5_16_output_data_V_we0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_we0,
        conv_layer_5_120_1_0_5_5_16_output_data_V_d0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_d0,
        conv_layer_5_120_1_0_5_5_16_W_data_V_address0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_W_data_V_address0,
        conv_layer_5_120_1_0_5_5_16_W_data_V_ce0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_W_data_V_ce0,
        conv_layer_5_120_1_0_5_5_16_W_data_V_q0 => conv_layer_5_120_1_0_5_5_16_W_data_V_q0,
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0,
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0,
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0,
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0 => grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0,
        conv_layer_5_120_1_0_5_5_16_inpad_data_V_q0 => conv_layer_5_120_1_0_5_5_16_inpad_data_V_q0);





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


    grp_forward_conv_2_fu_129_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_forward_conv_2_fu_129_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_forward_conv_2_fu_129_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_forward_conv_2_fu_129_ap_ready = ap_const_logic_1)) then 
                    grp_forward_conv_2_fu_129_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    p_i0_0_i1_reg_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_0_i_fu_158_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_i0_0_i1_reg_118 <= ap_const_lv7_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                p_i0_0_i1_reg_118 <= p_i0_5_reg_262;
            end if; 
        end if;
    end process;

    p_i0_0_i_reg_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                p_i0_0_i_reg_96 <= p_i0_reg_226;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_forward_conv_2_fu_129_ap_done = ap_const_logic_1))) then 
                p_i0_0_i_reg_96 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    p_z_assign_0_i_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_146_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_z_assign_0_i_reg_107 <= ap_const_lv7_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                p_z_assign_0_i_reg_107 <= iz_0_i_reg_239;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                iz_0_i_reg_239 <= iz_0_i_fu_164_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                    p_i0_0_i1_cast1_reg_254(6 downto 0) <= p_i0_0_i1_cast1_fu_196_p1(6 downto 0);
                p_i0_5_reg_262 <= p_i0_5_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    p_i0_0_i_cast3_reg_218(6 downto 0) <= p_i0_0_i_cast3_fu_141_p1(6 downto 0);
                p_i0_reg_226 <= p_i0_fu_152_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_0_i_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    tmp_10_0_i_reg_244(6 downto 0) <= tmp_10_0_i_fu_170_p1(6 downto 0);
            end if;
        end if;
    end process;
    p_i0_0_i_cast3_reg_218(63 downto 7) <= "000000000000000000000000000000000000000000000000000000000";
    tmp_10_0_i_reg_244(63 downto 7) <= "000000000000000000000000000000000000000000000000000000000";
    p_i0_0_i1_cast1_reg_254(63 downto 7) <= "000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state3, tmp_fu_146_p2, ap_CS_fsm_state5, exitcond_0_i_fu_158_p2, ap_CS_fsm_state7, tmp_s_fu_201_p2, grp_forward_conv_2_fu_129_ap_done, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_forward_conv_2_fu_129_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((tmp_fu_146_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state5 => 
                if (((exitcond_0_i_fu_158_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (tmp_s_fu_201_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state7, tmp_s_fu_201_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state7) and (tmp_s_fu_201_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state7, tmp_s_fu_201_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) and (tmp_s_fu_201_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_120_1_0_5_5_16_W_data_V_address0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_W_data_V_address0;
    conv_layer_5_120_1_0_5_5_16_W_data_V_ce0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_W_data_V_ce0;
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_address0;
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_ce0;
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_d0;
    conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_inpad_data_V_we0;
    conv_layer_5_120_1_0_5_5_16_input_data_V_address0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_input_data_V_address0;
    conv_layer_5_120_1_0_5_5_16_input_data_V_ce0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_input_data_V_ce0;

    conv_layer_5_120_1_0_5_5_16_output_data_V_address0_assign_proc : process(p_i0_0_i_cast3_fu_141_p1, ap_CS_fsm_state3, p_i0_0_i1_cast1_reg_254, grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_address0, ap_CS_fsm_state2, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_address0 <= p_i0_0_i1_cast1_reg_254(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_address0 <= p_i0_0_i_cast3_fu_141_p1(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_address0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_address0;
        else 
            conv_layer_5_120_1_0_5_5_16_output_data_V_address0 <= "XXXXXXX";
        end if; 
    end process;


    conv_layer_5_120_1_0_5_5_16_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state3, grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_ce0, ap_CS_fsm_state2, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_ce0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_ce0;
        else 
            conv_layer_5_120_1_0_5_5_16_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_120_1_0_5_5_16_output_data_V_d0_assign_proc : process(grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_d0, ap_CS_fsm_state2, ap_CS_fsm_state8, extLd_fu_213_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_d0 <= extLd_fu_213_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_d0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_d0;
        else 
            conv_layer_5_120_1_0_5_5_16_output_data_V_d0 <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    conv_layer_5_120_1_0_5_5_16_output_data_V_we0_assign_proc : process(grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_we0, ap_CS_fsm_state2, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            conv_layer_5_120_1_0_5_5_16_output_data_V_we0 <= grp_forward_conv_2_fu_129_conv_layer_5_120_1_0_5_5_16_output_data_V_we0;
        else 
            conv_layer_5_120_1_0_5_5_16_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_address0_assign_proc : process(p_i0_0_i_cast3_reg_218, ap_CS_fsm_state5, tmp_10_0_i_fu_170_p1, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_address0 <= tmp_10_0_i_fu_170_p1(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_address0 <= p_i0_0_i_cast3_reg_218(7 - 1 downto 0);
        else 
            conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_address0 <= "XXXXXXX";
        end if; 
    end process;


    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_ce0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_ce0 <= ap_const_logic_1;
        else 
            conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_d0 <= conv_layer_5_120_1_0_5_5_16_output_data_V_q0;

    conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_we0 <= ap_const_logic_1;
        else 
            conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_address0_assign_proc : process(tmp_10_0_i_reg_244, p_i0_0_i1_cast1_fu_196_p1, ap_CS_fsm_state7, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_address0 <= p_i0_0_i1_cast1_fu_196_p1(7 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_address0 <= tmp_10_0_i_reg_244(7 - 1 downto 0);
        else 
            conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_address0 <= "XXXXXXX";
        end if; 
    end process;


    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_ce0 <= ap_const_logic_1;
        else 
            conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_d0 <= 
        ap_const_lv15_0 when (tmp_72_fu_179_p3(0) = '1') else 
        tmp_71_fu_175_p1;

    conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_we0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_we0 <= ap_const_logic_1;
        else 
            conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_0_i_fu_158_p2 <= "1" when (p_z_assign_0_i_reg_107 = ap_const_lv7_78) else "0";
    extLd_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(conv_layer_5_120_1_0_5_5_16_relu1_output_data_V_q0),16));
    grp_forward_conv_2_fu_129_ap_start <= grp_forward_conv_2_fu_129_ap_start_reg;
    iz_0_i_fu_164_p2 <= std_logic_vector(unsigned(p_z_assign_0_i_reg_107) + unsigned(ap_const_lv7_1));
    p_i0_0_i1_cast1_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_i0_0_i1_reg_118),64));
    p_i0_0_i_cast3_fu_141_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_i0_0_i_reg_96),64));
    p_i0_5_fu_207_p2 <= std_logic_vector(unsigned(p_i0_0_i1_reg_118) + unsigned(ap_const_lv7_1));
    p_i0_fu_152_p2 <= std_logic_vector(unsigned(p_i0_0_i_reg_96) + unsigned(ap_const_lv7_1));
    tmp_10_0_i_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_z_assign_0_i_reg_107),64));
    tmp_71_fu_175_p1 <= conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_q0(15 - 1 downto 0);
    tmp_72_fu_179_p3 <= conv_layer_5_120_1_0_5_5_16_relu1_input_data_V_q0(15 downto 15);
    tmp_fu_146_p2 <= "1" when (p_i0_0_i_reg_96 = ap_const_lv7_78) else "0";
    tmp_s_fu_201_p2 <= "1" when (p_i0_0_i1_reg_118 = ap_const_lv7_78) else "0";
end behav;