-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity forward_pool is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    pool_layer_2_2_1_28_28_6_input_data_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    pool_layer_2_2_1_28_28_6_input_data_V_ce0 : OUT STD_LOGIC;
    pool_layer_2_2_1_28_28_6_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    pool_layer_2_2_1_28_28_6_output_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    pool_layer_2_2_1_28_28_6_output_data_V_ce0 : OUT STD_LOGIC;
    pool_layer_2_2_1_28_28_6_output_data_V_we0 : OUT STD_LOGIC;
    pool_layer_2_2_1_28_28_6_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of forward_pool is 
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
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv4_E : STD_LOGIC_VECTOR (3 downto 0) := "1110";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv13_310 : STD_LOGIC_VECTOR (12 downto 0) := "0001100010000";
    constant ap_const_lv10_C4 : STD_LOGIC_VECTOR (9 downto 0) := "0011000100";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_x_assign_cast6_fu_185_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_x_assign_cast6_reg_456 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal o_y_fu_195_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal o_y_reg_464 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_x_assign_3_cast_fu_209_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_x_assign_3_cast_reg_469 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond2_fu_189_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_cast_fu_219_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_cast_reg_474 : STD_LOGIC_VECTOR (31 downto 0);
    signal o_x_fu_229_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal o_x_reg_482 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal h_2_cast4_fu_243_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal h_2_cast4_reg_487 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond1_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_cast_fu_257_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_cast_reg_492 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_cast_fu_279_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_3_cast_reg_497 : STD_LOGIC_VECTOR (11 downto 0);
    signal next_mul2_fu_283_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal next_mul2_reg_502 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal next_mul_fu_289_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal next_mul_reg_507 : STD_LOGIC_VECTOR (9 downto 0);
    signal ch_fu_301_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ch_reg_515 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_cast7_fu_307_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_cast7_reg_520 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_19_fu_429_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_19_reg_531 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_11_fu_400_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_fu_434_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal h_reg_536 : STD_LOGIC_VECTOR (31 downto 0);
    signal v_1_fu_440_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal avg_V_fu_450_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal p_x_assign_reg_86 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_y_assign_1_reg_97 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_z_assign_reg_108 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_9_fu_311_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal phi_mul_reg_119 : STD_LOGIC_VECTOR (9 downto 0);
    signal phi_mul1_reg_131 : STD_LOGIC_VECTOR (12 downto 0);
    signal t_V_reg_142 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_x_assign_1_reg_154 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_s_reg_164 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_y_assign_2_reg_176 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_330_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_20_fu_446_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal v_fu_201_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_8_fu_213_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal h_2_fu_235_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_1_fu_251_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_shl2_fu_261_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl2_cast_fu_269_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal h_2_cast_fu_247_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_3_fu_273_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp1_fu_316_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp1_cast_fu_321_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_7_fu_325_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_27_tr_fu_335_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal p_neg_fu_347_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_s_fu_353_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_13_fu_367_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_10_fu_363_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_14_fu_377_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_59_fu_339_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_15_fu_381_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_16_fu_387_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_60_fu_405_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_61_fu_411_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_18_fu_417_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_423_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);


begin




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


    p_Val2_s_reg_164_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_9_fu_311_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_Val2_s_reg_164 <= t_V_reg_142;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                p_Val2_s_reg_164 <= avg_V_fu_450_p2;
            end if; 
        end if;
    end process;

    p_x_assign_1_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_11_fu_400_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                p_x_assign_1_reg_154 <= v_1_fu_440_p2;
            elsif (((exitcond_fu_295_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_x_assign_1_reg_154 <= p_x_assign_3_cast_reg_469;
            end if; 
        end if;
    end process;

    p_x_assign_reg_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_223_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_x_assign_reg_86 <= o_y_reg_464;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_x_assign_reg_86 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    p_y_assign_1_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_295_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_y_assign_1_reg_97 <= o_x_reg_482;
            elsif (((exitcond2_fu_189_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_y_assign_1_reg_97 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    p_y_assign_2_reg_176_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_9_fu_311_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_y_assign_2_reg_176 <= h_2_cast4_reg_487;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                p_y_assign_2_reg_176 <= h_reg_536;
            end if; 
        end if;
    end process;

    p_z_assign_reg_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_9_fu_311_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_z_assign_reg_108 <= ch_reg_515;
            elsif (((exitcond1_fu_223_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_z_assign_reg_108 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    phi_mul1_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_9_fu_311_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                phi_mul1_reg_131 <= next_mul2_reg_502;
            elsif (((exitcond1_fu_223_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_mul1_reg_131 <= ap_const_lv13_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_9_fu_311_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                phi_mul_reg_119 <= next_mul_reg_507;
            elsif (((exitcond1_fu_223_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_mul_reg_119 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    t_V_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_11_fu_400_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                t_V_reg_142 <= p_Val2_s_reg_164;
            elsif (((exitcond_fu_295_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                t_V_reg_142 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                ch_reg_515 <= ch_fu_301_p2;
                next_mul2_reg_502 <= next_mul2_fu_283_p2;
                next_mul_reg_507 <= next_mul_fu_289_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_223_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    h_2_cast4_reg_487(4 downto 1) <= h_2_cast4_fu_243_p1(4 downto 1);
                    tmp_1_cast_reg_492(4 downto 1) <= tmp_1_cast_fu_257_p1(4 downto 1);
                    tmp_3_cast_reg_497(11 downto 1) <= tmp_3_cast_fu_279_p1(11 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_11_fu_400_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                h_reg_536 <= h_fu_434_p2;
                tmp_19_reg_531 <= tmp_19_fu_429_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                o_x_reg_482 <= o_x_fu_229_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                o_y_reg_464 <= o_y_fu_195_p2;
                    p_x_assign_cast6_reg_456(3 downto 0) <= p_x_assign_cast6_fu_185_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_189_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    p_x_assign_3_cast_reg_469(4 downto 1) <= p_x_assign_3_cast_fu_209_p1(4 downto 1);
                    tmp_8_cast_reg_474(4 downto 1) <= tmp_8_cast_fu_219_p1(4 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_295_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    tmp_cast7_reg_520(12 downto 0) <= tmp_cast7_fu_307_p1(12 downto 0);
            end if;
        end if;
    end process;
    p_x_assign_cast6_reg_456(9 downto 4) <= "000000";
    p_x_assign_3_cast_reg_469(0) <= '0';
    p_x_assign_3_cast_reg_469(31 downto 5) <= "000000000000000000000000000";
    tmp_8_cast_reg_474(0) <= '0';
    tmp_8_cast_reg_474(31 downto 5) <= "000000000000000000000000000";
    h_2_cast4_reg_487(0) <= '0';
    h_2_cast4_reg_487(31 downto 5) <= "000000000000000000000000000";
    tmp_1_cast_reg_492(0) <= '0';
    tmp_1_cast_reg_492(31 downto 5) <= "000000000000000000000000000";
    tmp_3_cast_reg_497(0) <= '0';
    tmp_cast7_reg_520(31 downto 13) <= "0000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_189_p2, ap_CS_fsm_state3, exitcond1_fu_223_p2, ap_CS_fsm_state4, exitcond_fu_295_p2, ap_CS_fsm_state6, tmp_11_fu_400_p2, ap_CS_fsm_state5, tmp_9_fu_311_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond2_fu_189_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond1_fu_223_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((exitcond_fu_295_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((tmp_9_fu_311_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((tmp_11_fu_400_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
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

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_189_p2)
    begin
        if ((((exitcond2_fu_189_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond2_fu_189_p2)
    begin
        if (((exitcond2_fu_189_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    avg_V_fu_450_p2 <= std_logic_vector(unsigned(pool_layer_2_2_1_28_28_6_input_data_V_q0) + unsigned(p_Val2_s_reg_164));
    ch_fu_301_p2 <= std_logic_vector(unsigned(p_z_assign_reg_108) + unsigned(ap_const_lv3_1));
    exitcond1_fu_223_p2 <= "1" when (p_y_assign_1_reg_97 = ap_const_lv4_E) else "0";
    exitcond2_fu_189_p2 <= "1" when (p_x_assign_reg_86 = ap_const_lv4_E) else "0";
    exitcond_fu_295_p2 <= "1" when (p_z_assign_reg_108 = ap_const_lv3_6) else "0";
    h_2_cast4_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_2_fu_235_p3),32));
    h_2_cast_fu_247_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_2_fu_235_p3),9));
    h_2_fu_235_p3 <= (p_y_assign_1_reg_97 & ap_const_lv1_0);
    h_fu_434_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(p_y_assign_2_reg_176));
    next_mul2_fu_283_p2 <= std_logic_vector(unsigned(phi_mul1_reg_131) + unsigned(ap_const_lv13_310));
    next_mul_fu_289_p2 <= std_logic_vector(unsigned(phi_mul_reg_119) + unsigned(ap_const_lv10_C4));
    o_x_fu_229_p2 <= std_logic_vector(unsigned(p_y_assign_1_reg_97) + unsigned(ap_const_lv4_1));
    o_y_fu_195_p2 <= std_logic_vector(unsigned(p_x_assign_reg_86) + unsigned(ap_const_lv4_1));
    p_neg_fu_347_p2 <= std_logic_vector(unsigned(ap_const_lv17_0) - unsigned(tmp_27_tr_fu_335_p1));
    p_shl2_cast_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl2_fu_261_p3),9));
    p_shl2_fu_261_p3 <= (p_y_assign_1_reg_97 & ap_const_lv4_0);
    p_x_assign_3_cast_fu_209_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(v_fu_201_p3),32));
    p_x_assign_cast6_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_x_assign_reg_86),10));
    pool_layer_2_2_1_28_28_6_input_data_V_address0 <= tmp_20_fu_446_p1(13 - 1 downto 0);

    pool_layer_2_2_1_28_28_6_input_data_V_ce0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            pool_layer_2_2_1_28_28_6_input_data_V_ce0 <= ap_const_logic_1;
        else 
            pool_layer_2_2_1_28_28_6_input_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pool_layer_2_2_1_28_28_6_output_data_V_address0 <= tmp_4_fu_330_p1(11 - 1 downto 0);

    pool_layer_2_2_1_28_28_6_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            pool_layer_2_2_1_28_28_6_output_data_V_ce0 <= ap_const_logic_1;
        else 
            pool_layer_2_2_1_28_28_6_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pool_layer_2_2_1_28_28_6_output_data_V_d0 <= 
        tmp_15_fu_381_p2 when (tmp_59_fu_339_p3(0) = '1') else 
        tmp_16_fu_387_p1;

    pool_layer_2_2_1_28_28_6_output_data_V_we0_assign_proc : process(ap_CS_fsm_state5, tmp_9_fu_311_p2)
    begin
        if (((tmp_9_fu_311_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            pool_layer_2_2_1_28_28_6_output_data_V_we0 <= ap_const_logic_1;
        else 
            pool_layer_2_2_1_28_28_6_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp1_cast_fu_321_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_fu_316_p2),12));
    tmp1_fu_316_p2 <= std_logic_vector(unsigned(p_x_assign_cast6_reg_456) + unsigned(phi_mul_reg_119));
    tmp_10_fu_363_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_353_p4),16));
    tmp_11_fu_400_p2 <= "1" when (signed(p_y_assign_2_reg_176) < signed(tmp_1_cast_reg_492)) else "0";
    tmp_13_fu_367_p4 <= t_V_reg_142(15 downto 2);
        tmp_14_fu_377_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_13_fu_367_p4),15));

    tmp_15_fu_381_p2 <= std_logic_vector(unsigned(ap_const_lv16_0) - unsigned(tmp_10_fu_363_p1));
    tmp_16_fu_387_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_14_fu_377_p1),16));
    tmp_18_fu_417_p2 <= std_logic_vector(unsigned(tmp_60_fu_405_p2) - unsigned(tmp_61_fu_411_p2));
    tmp_19_fu_429_p2 <= std_logic_vector(unsigned(tmp_fu_423_p2) + unsigned(tmp_cast7_reg_520));
    tmp_1_cast_fu_257_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_251_p2),32));
    tmp_1_fu_251_p2 <= std_logic_vector(unsigned(h_2_fu_235_p3) + unsigned(ap_const_lv5_2));
        tmp_20_fu_446_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_19_reg_531),64));

        tmp_27_tr_fu_335_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(t_V_reg_142),17));

        tmp_3_cast_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_3_fu_273_p2),12));

    tmp_3_fu_273_p2 <= std_logic_vector(unsigned(p_shl2_cast_fu_269_p1) - unsigned(h_2_cast_fu_247_p1));
        tmp_4_fu_330_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_7_fu_325_p2),64));

    tmp_59_fu_339_p3 <= t_V_reg_142(15 downto 15);
    tmp_60_fu_405_p2 <= std_logic_vector(shift_left(unsigned(p_y_assign_2_reg_176),to_integer(unsigned('0' & ap_const_lv32_5(31-1 downto 0)))));
    tmp_61_fu_411_p2 <= std_logic_vector(shift_left(unsigned(p_y_assign_2_reg_176),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    tmp_7_fu_325_p2 <= std_logic_vector(unsigned(tmp1_cast_fu_321_p1) + unsigned(tmp_3_cast_reg_497));
    tmp_8_cast_fu_219_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_fu_213_p2),32));
    tmp_8_fu_213_p2 <= std_logic_vector(unsigned(v_fu_201_p3) + unsigned(ap_const_lv5_2));
    tmp_9_fu_311_p2 <= "1" when (signed(p_x_assign_1_reg_154) < signed(tmp_8_cast_reg_474)) else "0";
    tmp_cast7_fu_307_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(phi_mul1_reg_131),32));
    tmp_fu_423_p2 <= std_logic_vector(unsigned(p_x_assign_1_reg_154) + unsigned(tmp_18_fu_417_p2));
    tmp_s_fu_353_p4 <= p_neg_fu_347_p2(16 downto 2);
    v_1_fu_440_p2 <= std_logic_vector(unsigned(p_x_assign_1_reg_154) + unsigned(ap_const_lv32_1));
    v_fu_201_p3 <= (p_x_assign_reg_86 & ap_const_lv1_0);
end behav;
