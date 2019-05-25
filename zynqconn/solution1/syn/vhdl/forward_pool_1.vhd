-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity forward_pool_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    pool_layer_2_2_1_10_10_16_input_data_V_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    pool_layer_2_2_1_10_10_16_input_data_V_ce0 : OUT STD_LOGIC;
    pool_layer_2_2_1_10_10_16_input_data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    pool_layer_2_2_1_10_10_16_output_data_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    pool_layer_2_2_1_10_10_16_output_data_V_ce0 : OUT STD_LOGIC;
    pool_layer_2_2_1_10_10_16_output_data_V_we0 : OUT STD_LOGIC;
    pool_layer_2_2_1_10_10_16_output_data_V_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of forward_pool_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv11_64 : STD_LOGIC_VECTOR (10 downto 0) := "00001100100";
    constant ap_const_lv9_19 : STD_LOGIC_VECTOR (8 downto 0) := "000011001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_x_assign_cast7_fu_187_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_x_assign_cast7_reg_450 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal o_y_fu_197_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal o_y_reg_458 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_x_assign_5_cast_fu_211_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_x_assign_5_cast_reg_463 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond2_fu_191_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_23_cast_fu_221_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_cast_reg_468 : STD_LOGIC_VECTOR (31 downto 0);
    signal o_x_fu_235_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal o_x_reg_476 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal h_3_cast_fu_249_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal h_3_cast_reg_481 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond1_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_24_cast_fu_267_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_24_cast_reg_486 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_cast_fu_277_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp2_cast_reg_491 : STD_LOGIC_VECTOR (8 downto 0);
    signal next_mul2_fu_281_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal next_mul2_reg_496 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal next_mul_fu_287_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal next_mul_reg_501 : STD_LOGIC_VECTOR (8 downto 0);
    signal ch_fu_299_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ch_reg_509 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_cast8_fu_305_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_cast8_reg_514 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_293_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_fu_314_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp1_reg_522 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_23_fu_309_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_36_fu_399_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_fu_432_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal h_reg_535 : STD_LOGIC_VECTOR (31 downto 0);
    signal v_1_fu_438_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal avg_V_fu_444_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal p_x_assign_reg_88 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_y_assign_3_reg_99 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_z_assign_reg_110 : STD_LOGIC_VECTOR (4 downto 0);
    signal phi_mul_reg_121 : STD_LOGIC_VECTOR (8 downto 0);
    signal phi_mul1_reg_133 : STD_LOGIC_VECTOR (10 downto 0);
    signal t_V_reg_144 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_x_assign_3_reg_156 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_s_reg_166 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_y_assign_4_reg_178 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_31_fu_329_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_38_fu_427_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal v_fu_203_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_21_fu_215_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal h_1_fu_241_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_22_fu_261_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_y_assign_3_cast6_fu_225_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_shl5_fu_253_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp2_fu_271_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp3_fu_319_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_29_fu_324_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_51_tr_fu_334_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal p_neg_fu_346_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_s_fu_352_p4 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_30_fu_366_p4 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_27_fu_362_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_32_fu_376_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_56_fu_338_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_33_fu_380_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_34_fu_386_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_57_fu_404_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_58_fu_410_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_416_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_37_fu_422_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);


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


    p_Val2_s_reg_166_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_23_fu_309_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_Val2_s_reg_166 <= t_V_reg_144;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                p_Val2_s_reg_166 <= avg_V_fu_444_p2;
            end if; 
        end if;
    end process;

    p_x_assign_3_reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_36_fu_399_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                p_x_assign_3_reg_156 <= v_1_fu_438_p2;
            elsif (((exitcond_fu_293_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_x_assign_3_reg_156 <= p_x_assign_5_cast_reg_463;
            end if; 
        end if;
    end process;

    p_x_assign_reg_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_229_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_x_assign_reg_88 <= o_y_reg_458;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_x_assign_reg_88 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    p_y_assign_3_reg_99_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_293_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                p_y_assign_3_reg_99 <= o_x_reg_476;
            elsif (((exitcond2_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                p_y_assign_3_reg_99 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    p_y_assign_4_reg_178_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_23_fu_309_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_y_assign_4_reg_178 <= h_3_cast_reg_481;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                p_y_assign_4_reg_178 <= h_reg_535;
            end if; 
        end if;
    end process;

    p_z_assign_reg_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_23_fu_309_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                p_z_assign_reg_110 <= ch_reg_509;
            elsif (((exitcond1_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_z_assign_reg_110 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    phi_mul1_reg_133_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_23_fu_309_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                phi_mul1_reg_133 <= next_mul2_reg_496;
            elsif (((exitcond1_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_mul1_reg_133 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_121_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_23_fu_309_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                phi_mul_reg_121 <= next_mul_reg_501;
            elsif (((exitcond1_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                phi_mul_reg_121 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    t_V_reg_144_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_36_fu_399_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                t_V_reg_144 <= p_Val2_s_reg_166;
            elsif (((exitcond_fu_293_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                t_V_reg_144 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                ch_reg_509 <= ch_fu_299_p2;
                next_mul2_reg_496 <= next_mul2_fu_281_p2;
                next_mul_reg_501 <= next_mul_fu_287_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_229_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    h_3_cast_reg_481(3 downto 1) <= h_3_cast_fu_249_p1(3 downto 1);
                    tmp2_cast_reg_491(4 downto 0) <= tmp2_cast_fu_277_p1(4 downto 0);
                    tmp_24_cast_reg_486(3 downto 1) <= tmp_24_cast_fu_267_p1(3 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_36_fu_399_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                h_reg_535 <= h_fu_432_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                o_x_reg_476 <= o_x_fu_235_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                o_y_reg_458 <= o_y_fu_197_p2;
                    p_x_assign_cast7_reg_450(2 downto 0) <= p_x_assign_cast7_fu_187_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_191_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    p_x_assign_5_cast_reg_463(3 downto 1) <= p_x_assign_5_cast_fu_211_p1(3 downto 1);
                    tmp_23_cast_reg_468(3 downto 1) <= tmp_23_cast_fu_221_p1(3 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_23_fu_309_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                tmp1_reg_522 <= tmp1_fu_314_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_293_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    tmp_cast8_reg_514(10 downto 0) <= tmp_cast8_fu_305_p1(10 downto 0);
            end if;
        end if;
    end process;
    p_x_assign_cast7_reg_450(8 downto 3) <= "000000";
    p_x_assign_5_cast_reg_463(0) <= '0';
    p_x_assign_5_cast_reg_463(31 downto 4) <= "0000000000000000000000000000";
    tmp_23_cast_reg_468(0) <= '0';
    tmp_23_cast_reg_468(31 downto 4) <= "0000000000000000000000000000";
    h_3_cast_reg_481(0) <= '0';
    h_3_cast_reg_481(31 downto 4) <= "0000000000000000000000000000";
    tmp_24_cast_reg_486(0) <= '0';
    tmp_24_cast_reg_486(31 downto 4) <= "0000000000000000000000000000";
    tmp2_cast_reg_491(8 downto 5) <= "0000";
    tmp_cast8_reg_514(31 downto 11) <= "000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_191_p2, ap_CS_fsm_state3, exitcond1_fu_229_p2, ap_CS_fsm_state4, exitcond_fu_293_p2, ap_CS_fsm_state5, tmp_23_fu_309_p2, ap_CS_fsm_state6, tmp_36_fu_399_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond2_fu_191_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((exitcond1_fu_229_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((exitcond_fu_293_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((tmp_23_fu_309_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((tmp_36_fu_399_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_191_p2)
    begin
        if ((((exitcond2_fu_191_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond2_fu_191_p2)
    begin
        if (((exitcond2_fu_191_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    avg_V_fu_444_p2 <= std_logic_vector(unsigned(pool_layer_2_2_1_10_10_16_input_data_V_q0) + unsigned(p_Val2_s_reg_166));
    ch_fu_299_p2 <= std_logic_vector(unsigned(p_z_assign_reg_110) + unsigned(ap_const_lv5_1));
    exitcond1_fu_229_p2 <= "1" when (p_y_assign_3_reg_99 = ap_const_lv3_5) else "0";
    exitcond2_fu_191_p2 <= "1" when (p_x_assign_reg_88 = ap_const_lv3_5) else "0";
    exitcond_fu_293_p2 <= "1" when (p_z_assign_reg_110 = ap_const_lv5_10) else "0";
    h_1_fu_241_p3 <= (p_y_assign_3_reg_99 & ap_const_lv1_0);
    h_3_cast_fu_249_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_1_fu_241_p3),32));
    h_fu_432_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) + unsigned(p_y_assign_4_reg_178));
    next_mul2_fu_281_p2 <= std_logic_vector(unsigned(phi_mul1_reg_133) + unsigned(ap_const_lv11_64));
    next_mul_fu_287_p2 <= std_logic_vector(unsigned(phi_mul_reg_121) + unsigned(ap_const_lv9_19));
    o_x_fu_235_p2 <= std_logic_vector(unsigned(p_y_assign_3_reg_99) + unsigned(ap_const_lv3_1));
    o_y_fu_197_p2 <= std_logic_vector(unsigned(p_x_assign_reg_88) + unsigned(ap_const_lv3_1));
    p_neg_fu_346_p2 <= std_logic_vector(unsigned(ap_const_lv17_0) - unsigned(tmp_51_tr_fu_334_p1));
    p_shl5_fu_253_p3 <= (p_y_assign_3_reg_99 & ap_const_lv2_0);
    p_x_assign_5_cast_fu_211_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(v_fu_203_p3),32));
    p_x_assign_cast7_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_x_assign_reg_88),9));
    p_y_assign_3_cast6_fu_225_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_y_assign_3_reg_99),5));
    pool_layer_2_2_1_10_10_16_input_data_V_address0 <= tmp_38_fu_427_p1(11 - 1 downto 0);

    pool_layer_2_2_1_10_10_16_input_data_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            pool_layer_2_2_1_10_10_16_input_data_V_ce0 <= ap_const_logic_1;
        else 
            pool_layer_2_2_1_10_10_16_input_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pool_layer_2_2_1_10_10_16_output_data_V_address0 <= tmp_31_fu_329_p1(9 - 1 downto 0);

    pool_layer_2_2_1_10_10_16_output_data_V_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            pool_layer_2_2_1_10_10_16_output_data_V_ce0 <= ap_const_logic_1;
        else 
            pool_layer_2_2_1_10_10_16_output_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pool_layer_2_2_1_10_10_16_output_data_V_d0 <= 
        tmp_33_fu_380_p2 when (tmp_56_fu_338_p3(0) = '1') else 
        tmp_34_fu_386_p1;

    pool_layer_2_2_1_10_10_16_output_data_V_we0_assign_proc : process(ap_CS_fsm_state5, tmp_23_fu_309_p2)
    begin
        if (((tmp_23_fu_309_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            pool_layer_2_2_1_10_10_16_output_data_V_we0 <= ap_const_logic_1;
        else 
            pool_layer_2_2_1_10_10_16_output_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp1_fu_314_p2 <= std_logic_vector(unsigned(p_x_assign_3_reg_156) + unsigned(tmp_cast8_reg_514));
    tmp2_cast_fu_277_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp2_fu_271_p2),9));
    tmp2_fu_271_p2 <= std_logic_vector(unsigned(p_y_assign_3_cast6_fu_225_p1) + unsigned(p_shl5_fu_253_p3));
    tmp3_fu_319_p2 <= std_logic_vector(unsigned(p_x_assign_cast7_reg_450) + unsigned(phi_mul_reg_121));
    tmp_21_fu_215_p2 <= std_logic_vector(unsigned(v_fu_203_p3) + unsigned(ap_const_lv4_2));
    tmp_22_fu_261_p2 <= std_logic_vector(unsigned(h_1_fu_241_p3) + unsigned(ap_const_lv4_2));
    tmp_23_cast_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_21_fu_215_p2),32));
    tmp_23_fu_309_p2 <= "1" when (signed(p_x_assign_3_reg_156) < signed(tmp_23_cast_reg_468)) else "0";
    tmp_24_cast_fu_267_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_22_fu_261_p2),32));
    tmp_27_fu_362_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_352_p4),16));
    tmp_29_fu_324_p2 <= std_logic_vector(unsigned(tmp3_fu_319_p2) + unsigned(tmp2_cast_reg_491));
    tmp_30_fu_366_p4 <= t_V_reg_144(15 downto 2);
    tmp_31_fu_329_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_29_fu_324_p2),64));
        tmp_32_fu_376_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_30_fu_366_p4),15));

    tmp_33_fu_380_p2 <= std_logic_vector(unsigned(ap_const_lv16_0) - unsigned(tmp_27_fu_362_p1));
    tmp_34_fu_386_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_32_fu_376_p1),16));
    tmp_36_fu_399_p2 <= "1" when (signed(p_y_assign_4_reg_178) < signed(tmp_24_cast_reg_486)) else "0";
    tmp_37_fu_422_p2 <= std_logic_vector(unsigned(tmp1_reg_522) + unsigned(tmp_fu_416_p2));
        tmp_38_fu_427_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_37_fu_422_p2),64));

        tmp_51_tr_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(t_V_reg_144),17));

    tmp_56_fu_338_p3 <= t_V_reg_144(15 downto 15);
    tmp_57_fu_404_p2 <= std_logic_vector(shift_left(unsigned(p_y_assign_4_reg_178),to_integer(unsigned('0' & ap_const_lv32_3(31-1 downto 0)))));
    tmp_58_fu_410_p2 <= std_logic_vector(shift_left(unsigned(p_y_assign_4_reg_178),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    tmp_cast8_fu_305_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(phi_mul1_reg_133),32));
    tmp_fu_416_p2 <= std_logic_vector(unsigned(tmp_57_fu_404_p2) + unsigned(tmp_58_fu_410_p2));
    tmp_s_fu_352_p4 <= p_neg_fu_346_p2(16 downto 2);
    v_1_fu_438_p2 <= std_logic_vector(unsigned(p_x_assign_3_reg_156) + unsigned(ap_const_lv32_1));
    v_fu_203_p3 <= (p_x_assign_reg_88 & ap_const_lv1_0);
end behav;