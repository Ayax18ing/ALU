-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/05/2024 18:36:29"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_E IS
    PORT (
	Ai : IN std_logic_vector(3 DOWNTO 0);
	Bi : IN std_logic_vector(3 DOWNTO 0);
	SA : IN std_logic;
	SB : IN std_logic;
	S : IN std_logic_vector(2 DOWNTO 0);
	UN : OUT std_logic_vector(6 DOWNTO 0);
	DE : OUT std_logic_vector(6 DOWNTO 0);
	SI_G : OUT std_logic_vector(6 DOWNTO 0)
	);
END ALU_E;

-- Design Ports Information
-- UN[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SI_G[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SI_G[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SI_G[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SI_G[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SI_G[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SI_G[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SI_G[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SB	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SA	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ai[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bi[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_E IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ai : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bi : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SA : std_logic;
SIGNAL ww_SB : std_logic;
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_UN : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SI_G : std_logic_vector(6 DOWNTO 0);
SIGNAL \UNi_l|SOUT[3]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UN[0]~output_o\ : std_logic;
SIGNAL \UN[1]~output_o\ : std_logic;
SIGNAL \UN[2]~output_o\ : std_logic;
SIGNAL \UN[3]~output_o\ : std_logic;
SIGNAL \UN[4]~output_o\ : std_logic;
SIGNAL \UN[5]~output_o\ : std_logic;
SIGNAL \UN[6]~output_o\ : std_logic;
SIGNAL \DE[0]~output_o\ : std_logic;
SIGNAL \DE[1]~output_o\ : std_logic;
SIGNAL \DE[2]~output_o\ : std_logic;
SIGNAL \DE[3]~output_o\ : std_logic;
SIGNAL \DE[4]~output_o\ : std_logic;
SIGNAL \DE[5]~output_o\ : std_logic;
SIGNAL \DE[6]~output_o\ : std_logic;
SIGNAL \SI_G[0]~output_o\ : std_logic;
SIGNAL \SI_G[1]~output_o\ : std_logic;
SIGNAL \SI_G[2]~output_o\ : std_logic;
SIGNAL \SI_G[3]~output_o\ : std_logic;
SIGNAL \SI_G[4]~output_o\ : std_logic;
SIGNAL \SI_G[5]~output_o\ : std_logic;
SIGNAL \SI_G[6]~output_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \SA~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[4]~7_combout\ : std_logic;
SIGNAL \Bi[2]~input_o\ : std_logic;
SIGNAL \Bi[0]~input_o\ : std_logic;
SIGNAL \Bi[1]~input_o\ : std_logic;
SIGNAL \UNi_a|Add13~1_combout\ : std_logic;
SIGNAL \Bi[3]~input_o\ : std_logic;
SIGNAL \UNi_a|Add13~2_combout\ : std_logic;
SIGNAL \UNi_a|Add13~0_combout\ : std_logic;
SIGNAL \UNi_a|Add14~1_cout\ : std_logic;
SIGNAL \UNi_a|Add14~3\ : std_logic;
SIGNAL \UNi_a|Add14~5\ : std_logic;
SIGNAL \UNi_a|Add14~6_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[4]~1_combout\ : std_logic;
SIGNAL \SB~input_o\ : std_logic;
SIGNAL \UNi_l|Equal1~0_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[4]~3_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[4]~2_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[4]~4_combout\ : std_logic;
SIGNAL \UNi_l|Equal1~1_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[4]~0_combout\ : std_logic;
SIGNAL \Ai[0]~input_o\ : std_logic;
SIGNAL \Ai[1]~input_o\ : std_logic;
SIGNAL \Ai[2]~input_o\ : std_logic;
SIGNAL \Ai[3]~input_o\ : std_logic;
SIGNAL \UNi_a|Add7~0_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[4]~5_combout\ : std_logic;
SIGNAL \UNi_a|Add2~0_combout\ : std_logic;
SIGNAL \UNi_a|Add4~0_combout\ : std_logic;
SIGNAL \UNi_a|Add2~1_combout\ : std_logic;
SIGNAL \UNi_a|Add4~1_combout\ : std_logic;
SIGNAL \UNi_a|Add5~1_cout\ : std_logic;
SIGNAL \UNi_a|Add5~3\ : std_logic;
SIGNAL \UNi_a|Add5~5\ : std_logic;
SIGNAL \UNi_a|Add5~6_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[4]~6_combout\ : std_logic;
SIGNAL \UNi_a|Add0~1_cout\ : std_logic;
SIGNAL \UNi_a|Add0~3_cout\ : std_logic;
SIGNAL \UNi_a|Add0~5_cout\ : std_logic;
SIGNAL \UNi_a|Add0~7\ : std_logic;
SIGNAL \UNi_a|Add0~8_combout\ : std_logic;
SIGNAL \UNi_a|Add0~10_combout\ : std_logic;
SIGNAL \UNi_l|SOUT[3]~3_combout\ : std_logic;
SIGNAL \UNi_l|SOUT[3]~1_combout\ : std_logic;
SIGNAL \UNi_l|SOUT[3]~1clkctrl_outclk\ : std_logic;
SIGNAL \UNi_a|Add0~6_combout\ : std_logic;
SIGNAL \UNi_a|Add5~4_combout\ : std_logic;
SIGNAL \UNi_a|Add7~1_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[3]~0_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[3]~1_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[3]~2_combout\ : std_logic;
SIGNAL \UNi_a|Add14~4_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[3]~3_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[3]~4_combout\ : std_logic;
SIGNAL \UNi_a|Add2~2_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[3]~5_combout\ : std_logic;
SIGNAL \UNi_a|Add0~11_combout\ : std_logic;
SIGNAL \UNi_a|Add0~12_combout\ : std_logic;
SIGNAL \UNi_l|SOUT[2]~4_combout\ : std_logic;
SIGNAL \UNi_a|Add5~2_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[2]~4_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[2]~3_combout\ : std_logic;
SIGNAL \UNi_a|Add14~2_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[2]~5_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[2]~7_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[2]~2_combout\ : std_logic;
SIGNAL \UNi_a|PArith:S_Out[2]~6_combout\ : std_logic;
SIGNAL \SALUi[2]~6_combout\ : std_logic;
SIGNAL \SALUi[2]~7_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\ : std_logic;
SIGNAL \UNi_l|SOUT[1]~2_combout\ : std_logic;
SIGNAL \SALUi[1]~8_combout\ : std_logic;
SIGNAL \UNi_a|S_Out~0_combout\ : std_logic;
SIGNAL \SALUi[1]~4_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~15_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~16_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\ : std_logic;
SIGNAL \SALUi[1]~5_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ : std_logic;
SIGNAL \UNi_l|SOUT[0]~0_combout\ : std_logic;
SIGNAL \SALUi[0]~2_combout\ : std_logic;
SIGNAL \SALUi[0]~3_combout\ : std_logic;
SIGNAL \DIS_UNI|Mux13~0_combout\ : std_logic;
SIGNAL \DIS_UNI|Mux12~0_combout\ : std_logic;
SIGNAL \DIS_UNI|Mux11~0_combout\ : std_logic;
SIGNAL \DIS_UNI|Mux10~0_combout\ : std_logic;
SIGNAL \DIS_UNI|Mux9~0_combout\ : std_logic;
SIGNAL \DIS_UNI|Mux8~0_combout\ : std_logic;
SIGNAL \DIS_UNI|Mux7~0_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~9_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~11_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~15_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~14_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \DIS_DEC|Mux12~0_combout\ : std_logic;
SIGNAL \DIS_DEC|Mux10~0_combout\ : std_logic;
SIGNAL \DIS_DEC|Mux9~0_combout\ : std_logic;
SIGNAL \UNi_l|SOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIS_UNI|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \BCD_Con|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_Ai <= Ai;
ww_Bi <= Bi;
ww_SA <= SA;
ww_SB <= SB;
ww_S <= S;
UN <= ww_UN;
DE <= ww_DE;
SI_G <= ww_SI_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\UNi_l|SOUT[3]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UNi_l|SOUT[3]~1_combout\);
\DIS_UNI|ALT_INV_Mux13~0_combout\ <= NOT \DIS_UNI|Mux13~0_combout\;
\BCD_Con|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;

-- Location: IOOBUF_X26_Y29_N16
\UN[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_UNI|ALT_INV_Mux13~0_combout\,
	devoe => ww_devoe,
	o => \UN[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\UN[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_UNI|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \UN[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\UN[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_UNI|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \UN[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\UN[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_UNI|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \UN[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\UN[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_UNI|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \UN[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\UN[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_UNI|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \UN[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\UN[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_UNI|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \UN[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\DE[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \DE[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\DE[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_DEC|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \DE[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\DE[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_Con|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \DE[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\DE[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_DEC|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \DE[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\DE[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_DEC|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \DE[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\DE[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DE[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\DE[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIS_DEC|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \DE[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\SI_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SI_G[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\SI_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SI_G[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\SI_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SI_G[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\SI_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SI_G[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\SI_G[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SI_G[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\SI_G[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SI_G[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\SI_G[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SI_G[6]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\S[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SA,
	o => \SA~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\S[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\S[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LCCOMB_X19_Y22_N2
\UNi_a|PArith:S_Out[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[4]~7_combout\ = (\SA~input_o\) # ((!\S[0]~input_o\) # (!\S[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SA~input_o\,
	datab => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \UNi_a|PArith:S_Out[4]~7_combout\);

-- Location: IOIBUF_X0_Y25_N22
\Bi[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(2),
	o => \Bi[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\Bi[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(0),
	o => \Bi[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\Bi[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(1),
	o => \Bi[1]~input_o\);

-- Location: LCCOMB_X12_Y22_N26
\UNi_a|Add13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add13~1_combout\ = (\Bi[2]~input_o\) # ((\Bi[0]~input_o\) # (\Bi[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datac => \Bi[0]~input_o\,
	datad => \Bi[1]~input_o\,
	combout => \UNi_a|Add13~1_combout\);

-- Location: IOIBUF_X0_Y23_N8
\Bi[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bi(3),
	o => \Bi[3]~input_o\);

-- Location: LCCOMB_X12_Y22_N20
\UNi_a|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add13~2_combout\ = (\Bi[0]~input_o\) # (\Bi[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bi[0]~input_o\,
	datad => \Bi[1]~input_o\,
	combout => \UNi_a|Add13~2_combout\);

-- Location: LCCOMB_X12_Y22_N24
\UNi_a|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add13~0_combout\ = \Bi[0]~input_o\ $ (\Bi[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bi[0]~input_o\,
	datad => \Bi[1]~input_o\,
	combout => \UNi_a|Add13~0_combout\);

-- Location: LCCOMB_X12_Y22_N6
\UNi_a|Add14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add14~1_cout\ = CARRY((\Bi[0]~input_o\ & \UNi_a|Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[0]~input_o\,
	datab => \UNi_a|Add13~0_combout\,
	datad => VCC,
	cout => \UNi_a|Add14~1_cout\);

-- Location: LCCOMB_X12_Y22_N8
\UNi_a|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add14~2_combout\ = (\UNi_a|Add14~1_cout\ & ((\Bi[2]~input_o\ $ (\UNi_a|Add13~2_combout\)))) # (!\UNi_a|Add14~1_cout\ & (\Bi[2]~input_o\ $ ((!\UNi_a|Add13~2_combout\))))
-- \UNi_a|Add14~3\ = CARRY((!\UNi_a|Add14~1_cout\ & (\Bi[2]~input_o\ $ (!\UNi_a|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \UNi_a|Add13~2_combout\,
	datad => VCC,
	cin => \UNi_a|Add14~1_cout\,
	combout => \UNi_a|Add14~2_combout\,
	cout => \UNi_a|Add14~3\);

-- Location: LCCOMB_X12_Y22_N10
\UNi_a|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add14~4_combout\ = (\UNi_a|Add14~3\ & (\UNi_a|Add13~1_combout\ $ (\Bi[3]~input_o\ $ (VCC)))) # (!\UNi_a|Add14~3\ & ((\UNi_a|Add13~1_combout\ $ (\Bi[3]~input_o\)) # (GND)))
-- \UNi_a|Add14~5\ = CARRY((\UNi_a|Add13~1_combout\ $ (\Bi[3]~input_o\)) # (!\UNi_a|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|Add13~1_combout\,
	datab => \Bi[3]~input_o\,
	datad => VCC,
	cin => \UNi_a|Add14~3\,
	combout => \UNi_a|Add14~4_combout\,
	cout => \UNi_a|Add14~5\);

-- Location: LCCOMB_X12_Y22_N12
\UNi_a|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add14~6_combout\ = \UNi_a|Add14~5\ $ (((!\UNi_a|Add13~1_combout\ & !\Bi[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|Add13~1_combout\,
	datab => \Bi[3]~input_o\,
	cin => \UNi_a|Add14~5\,
	combout => \UNi_a|Add14~6_combout\);

-- Location: LCCOMB_X6_Y24_N8
\UNi_a|PArith:S_Out[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[4]~1_combout\ = (\Bi[0]~input_o\ & ((\Bi[1]~input_o\) # (\Bi[3]~input_o\))) # (!\Bi[0]~input_o\ & (\Bi[1]~input_o\ & \Bi[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[0]~input_o\,
	datac => \Bi[1]~input_o\,
	datad => \Bi[3]~input_o\,
	combout => \UNi_a|PArith:S_Out[4]~1_combout\);

-- Location: IOIBUF_X0_Y27_N22
\SB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SB,
	o => \SB~input_o\);

-- Location: LCCOMB_X10_Y24_N8
\UNi_l|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|Equal1~0_combout\ = (\S[0]~input_o\ & !\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	combout => \UNi_l|Equal1~0_combout\);

-- Location: LCCOMB_X6_Y24_N4
\UNi_a|PArith:S_Out[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[4]~3_combout\ = (\UNi_a|PArith:S_Out[4]~1_combout\ & (\SB~input_o\ $ (((\UNi_l|Equal1~0_combout\ & !\Bi[3]~input_o\))))) # (!\UNi_a|PArith:S_Out[4]~1_combout\ & ((\SB~input_o\ & ((\Bi[3]~input_o\))) # (!\SB~input_o\ & 
-- (\UNi_l|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[4]~1_combout\,
	datab => \SB~input_o\,
	datac => \UNi_l|Equal1~0_combout\,
	datad => \Bi[3]~input_o\,
	combout => \UNi_a|PArith:S_Out[4]~3_combout\);

-- Location: LCCOMB_X6_Y24_N2
\UNi_a|PArith:S_Out[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[4]~2_combout\ = (\SB~input_o\) # ((\UNi_a|PArith:S_Out[4]~1_combout\ & (\UNi_l|Equal1~0_combout\ & \Bi[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[4]~1_combout\,
	datab => \SB~input_o\,
	datac => \UNi_l|Equal1~0_combout\,
	datad => \Bi[3]~input_o\,
	combout => \UNi_a|PArith:S_Out[4]~2_combout\);

-- Location: LCCOMB_X6_Y24_N6
\UNi_a|PArith:S_Out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[4]~4_combout\ = (\UNi_a|PArith:S_Out[4]~3_combout\ & (((!\UNi_a|PArith:S_Out[4]~2_combout\)))) # (!\UNi_a|PArith:S_Out[4]~3_combout\ & ((\UNi_a|PArith:S_Out[4]~2_combout\ & ((!\Bi[2]~input_o\))) # (!\UNi_a|PArith:S_Out[4]~2_combout\ & 
-- (\UNi_a|Add14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|Add14~6_combout\,
	datab => \UNi_a|PArith:S_Out[4]~3_combout\,
	datac => \Bi[2]~input_o\,
	datad => \UNi_a|PArith:S_Out[4]~2_combout\,
	combout => \UNi_a|PArith:S_Out[4]~4_combout\);

-- Location: LCCOMB_X10_Y24_N14
\UNi_l|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|Equal1~1_combout\ = (!\S[0]~input_o\ & \S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	combout => \UNi_l|Equal1~1_combout\);

-- Location: LCCOMB_X10_Y24_N10
\UNi_a|PArith:S_Out[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[4]~0_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\) # (!\SA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datac => \SA~input_o\,
	datad => \S[0]~input_o\,
	combout => \UNi_a|PArith:S_Out[4]~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\Ai[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(0),
	o => \Ai[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\Ai[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(1),
	o => \Ai[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\Ai[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(2),
	o => \Ai[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\Ai[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ai(3),
	o => \Ai[3]~input_o\);

-- Location: LCCOMB_X17_Y25_N26
\UNi_a|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add7~0_combout\ = (\Ai[2]~input_o\) # ((\Ai[3]~input_o\) # ((\Ai[0]~input_o\ & \Ai[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \Ai[1]~input_o\,
	datac => \Ai[2]~input_o\,
	datad => \Ai[3]~input_o\,
	combout => \UNi_a|Add7~0_combout\);

-- Location: LCCOMB_X6_Y24_N24
\UNi_a|PArith:S_Out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[4]~5_combout\ = (\UNi_l|Equal1~1_combout\ & (((\UNi_a|PArith:S_Out[4]~0_combout\) # (!\UNi_a|Add7~0_combout\)))) # (!\UNi_l|Equal1~1_combout\ & (\UNi_a|PArith:S_Out[4]~4_combout\ & (!\UNi_a|PArith:S_Out[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[4]~4_combout\,
	datab => \UNi_l|Equal1~1_combout\,
	datac => \UNi_a|PArith:S_Out[4]~0_combout\,
	datad => \UNi_a|Add7~0_combout\,
	combout => \UNi_a|PArith:S_Out[4]~5_combout\);

-- Location: LCCOMB_X17_Y25_N16
\UNi_a|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add2~0_combout\ = (\Ai[2]~input_o\ & (\Ai[3]~input_o\ & ((\Ai[0]~input_o\) # (\Ai[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \Ai[1]~input_o\,
	datac => \Ai[2]~input_o\,
	datad => \Ai[3]~input_o\,
	combout => \UNi_a|Add2~0_combout\);

-- Location: LCCOMB_X17_Y25_N4
\UNi_a|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add4~0_combout\ = (\Ai[0]~input_o\) # ((\Ai[1]~input_o\) # (\Ai[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \Ai[1]~input_o\,
	datac => \Ai[2]~input_o\,
	combout => \UNi_a|Add4~0_combout\);

-- Location: LCCOMB_X17_Y25_N0
\UNi_a|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add2~1_combout\ = (\Ai[1]~input_o\) # (\Ai[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ai[1]~input_o\,
	datac => \Ai[0]~input_o\,
	combout => \UNi_a|Add2~1_combout\);

-- Location: LCCOMB_X17_Y25_N2
\UNi_a|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add4~1_combout\ = \Ai[1]~input_o\ $ (\Ai[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ai[1]~input_o\,
	datac => \Ai[0]~input_o\,
	combout => \UNi_a|Add4~1_combout\);

-- Location: LCCOMB_X17_Y25_N18
\UNi_a|Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add5~1_cout\ = CARRY((\Ai[0]~input_o\ & \UNi_a|Add4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \UNi_a|Add4~1_combout\,
	datad => VCC,
	cout => \UNi_a|Add5~1_cout\);

-- Location: LCCOMB_X17_Y25_N20
\UNi_a|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add5~2_combout\ = (\UNi_a|Add5~1_cout\ & ((\Ai[2]~input_o\ $ (\UNi_a|Add2~1_combout\)))) # (!\UNi_a|Add5~1_cout\ & (\Ai[2]~input_o\ $ ((!\UNi_a|Add2~1_combout\))))
-- \UNi_a|Add5~3\ = CARRY((!\UNi_a|Add5~1_cout\ & (\Ai[2]~input_o\ $ (!\UNi_a|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[2]~input_o\,
	datab => \UNi_a|Add2~1_combout\,
	datad => VCC,
	cin => \UNi_a|Add5~1_cout\,
	combout => \UNi_a|Add5~2_combout\,
	cout => \UNi_a|Add5~3\);

-- Location: LCCOMB_X17_Y25_N22
\UNi_a|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add5~4_combout\ = (\UNi_a|Add5~3\ & (\Ai[3]~input_o\ $ (\UNi_a|Add4~0_combout\ $ (VCC)))) # (!\UNi_a|Add5~3\ & ((\Ai[3]~input_o\ $ (\UNi_a|Add4~0_combout\)) # (GND)))
-- \UNi_a|Add5~5\ = CARRY((\Ai[3]~input_o\ $ (\UNi_a|Add4~0_combout\)) # (!\UNi_a|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[3]~input_o\,
	datab => \UNi_a|Add4~0_combout\,
	datad => VCC,
	cin => \UNi_a|Add5~3\,
	combout => \UNi_a|Add5~4_combout\,
	cout => \UNi_a|Add5~5\);

-- Location: LCCOMB_X17_Y25_N24
\UNi_a|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add5~6_combout\ = \UNi_a|Add5~5\ $ (((!\UNi_a|Add4~0_combout\ & !\Ai[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UNi_a|Add4~0_combout\,
	datad => \Ai[3]~input_o\,
	cin => \UNi_a|Add5~5\,
	combout => \UNi_a|Add5~6_combout\);

-- Location: LCCOMB_X19_Y22_N8
\UNi_a|PArith:S_Out[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[4]~6_combout\ = (\UNi_a|PArith:S_Out[4]~5_combout\ & (((\UNi_a|Add5~6_combout\)) # (!\UNi_a|PArith:S_Out[4]~0_combout\))) # (!\UNi_a|PArith:S_Out[4]~5_combout\ & (\UNi_a|PArith:S_Out[4]~0_combout\ & (\UNi_a|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[4]~5_combout\,
	datab => \UNi_a|PArith:S_Out[4]~0_combout\,
	datac => \UNi_a|Add2~0_combout\,
	datad => \UNi_a|Add5~6_combout\,
	combout => \UNi_a|PArith:S_Out[4]~6_combout\);

-- Location: LCCOMB_X17_Y25_N6
\UNi_a|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add0~1_cout\ = CARRY(\Ai[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datad => VCC,
	cout => \UNi_a|Add0~1_cout\);

-- Location: LCCOMB_X17_Y25_N8
\UNi_a|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add0~3_cout\ = CARRY((!\UNi_a|Add0~1_cout\ & (\Ai[0]~input_o\ $ (!\Ai[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \Ai[1]~input_o\,
	datad => VCC,
	cin => \UNi_a|Add0~1_cout\,
	cout => \UNi_a|Add0~3_cout\);

-- Location: LCCOMB_X17_Y25_N10
\UNi_a|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add0~5_cout\ = CARRY((!\UNi_a|Add0~3_cout\ & (\Ai[2]~input_o\ $ (\UNi_a|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[2]~input_o\,
	datab => \UNi_a|Add2~1_combout\,
	datad => VCC,
	cin => \UNi_a|Add0~3_cout\,
	cout => \UNi_a|Add0~5_cout\);

-- Location: LCCOMB_X17_Y25_N12
\UNi_a|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add0~6_combout\ = (\UNi_a|Add0~5_cout\ & (\Ai[3]~input_o\ $ ((!\UNi_a|Add4~0_combout\)))) # (!\UNi_a|Add0~5_cout\ & ((\Ai[3]~input_o\ $ (\UNi_a|Add4~0_combout\)) # (GND)))
-- \UNi_a|Add0~7\ = CARRY((\Ai[3]~input_o\ $ (!\UNi_a|Add4~0_combout\)) # (!\UNi_a|Add0~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[3]~input_o\,
	datab => \UNi_a|Add4~0_combout\,
	datad => VCC,
	cin => \UNi_a|Add0~5_cout\,
	combout => \UNi_a|Add0~6_combout\,
	cout => \UNi_a|Add0~7\);

-- Location: LCCOMB_X17_Y25_N14
\UNi_a|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add0~8_combout\ = \UNi_a|Add0~7\ $ (((!\UNi_a|Add4~0_combout\ & !\Ai[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UNi_a|Add4~0_combout\,
	datad => \Ai[3]~input_o\,
	cin => \UNi_a|Add0~7\,
	combout => \UNi_a|Add0~8_combout\);

-- Location: LCCOMB_X19_Y22_N4
\UNi_a|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add0~10_combout\ = (!\S[2]~input_o\ & ((\UNi_a|PArith:S_Out[4]~7_combout\ & (\UNi_a|PArith:S_Out[4]~6_combout\)) # (!\UNi_a|PArith:S_Out[4]~7_combout\ & ((\UNi_a|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \UNi_a|PArith:S_Out[4]~7_combout\,
	datac => \UNi_a|PArith:S_Out[4]~6_combout\,
	datad => \UNi_a|Add0~8_combout\,
	combout => \UNi_a|Add0~10_combout\);

-- Location: LCCOMB_X10_Y24_N20
\UNi_l|SOUT[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT[3]~3_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\ & ((!\Ai[3]~input_o\))) # (!\S[0]~input_o\ & (!\Bi[3]~input_o\)))) # (!\S[1]~input_o\ & ((\Bi[3]~input_o\ & ((\Ai[3]~input_o\))) # (!\Bi[3]~input_o\ & (\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[3]~input_o\,
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \Ai[3]~input_o\,
	combout => \UNi_l|SOUT[3]~3_combout\);

-- Location: LCCOMB_X10_Y24_N18
\UNi_l|SOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT[3]~1_combout\ = (\S[1]~input_o\) # (\S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \UNi_l|SOUT[3]~1_combout\);

-- Location: CLKCTRL_G18
\UNi_l|SOUT[3]~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UNi_l|SOUT[3]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UNi_l|SOUT[3]~1clkctrl_outclk\);

-- Location: LCCOMB_X10_Y24_N2
\UNi_l|SOUT[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT\(3) = (GLOBAL(\UNi_l|SOUT[3]~1clkctrl_outclk\) & (\UNi_l|SOUT[3]~3_combout\)) # (!GLOBAL(\UNi_l|SOUT[3]~1clkctrl_outclk\) & ((\UNi_l|SOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_l|SOUT[3]~3_combout\,
	datab => \UNi_l|SOUT\(3),
	datad => \UNi_l|SOUT[3]~1clkctrl_outclk\,
	combout => \UNi_l|SOUT\(3));

-- Location: LCCOMB_X17_Y25_N30
\UNi_a|Add7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add7~1_combout\ = \Ai[3]~input_o\ $ (((\Ai[2]~input_o\) # ((\Ai[0]~input_o\ & \Ai[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \Ai[1]~input_o\,
	datac => \Ai[2]~input_o\,
	datad => \Ai[3]~input_o\,
	combout => \UNi_a|Add7~1_combout\);

-- Location: LCCOMB_X6_Y24_N10
\UNi_a|PArith:S_Out[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[3]~0_combout\ = (\Bi[1]~input_o\ & ((\Bi[2]~input_o\) # (\Bi[0]~input_o\))) # (!\Bi[1]~input_o\ & (\Bi[2]~input_o\ & \Bi[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bi[1]~input_o\,
	datac => \Bi[2]~input_o\,
	datad => \Bi[0]~input_o\,
	combout => \UNi_a|PArith:S_Out[3]~0_combout\);

-- Location: LCCOMB_X6_Y24_N12
\UNi_a|PArith:S_Out[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[3]~1_combout\ = (\UNi_a|PArith:S_Out[3]~0_combout\ & (!\Bi[2]~input_o\ & ((\UNi_l|Equal1~0_combout\)))) # (!\UNi_a|PArith:S_Out[3]~0_combout\ & ((\SB~input_o\ & (!\Bi[2]~input_o\)) # (!\SB~input_o\ & ((\UNi_l|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \SB~input_o\,
	datac => \UNi_l|Equal1~0_combout\,
	datad => \UNi_a|PArith:S_Out[3]~0_combout\,
	combout => \UNi_a|PArith:S_Out[3]~1_combout\);

-- Location: LCCOMB_X6_Y24_N14
\UNi_a|PArith:S_Out[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[3]~2_combout\ = (\UNi_a|PArith:S_Out[3]~0_combout\ & ((\UNi_l|Equal1~0_combout\ & (\Bi[2]~input_o\)) # (!\UNi_l|Equal1~0_combout\ & ((\SB~input_o\))))) # (!\UNi_a|PArith:S_Out[3]~0_combout\ & (\Bi[2]~input_o\ & (\SB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \SB~input_o\,
	datac => \UNi_l|Equal1~0_combout\,
	datad => \UNi_a|PArith:S_Out[3]~0_combout\,
	combout => \UNi_a|PArith:S_Out[3]~2_combout\);

-- Location: LCCOMB_X6_Y24_N0
\UNi_a|PArith:S_Out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[3]~3_combout\ = (\UNi_a|PArith:S_Out[3]~1_combout\ & ((\UNi_a|PArith:S_Out[3]~2_combout\ & ((\UNi_a|Add14~4_combout\))) # (!\UNi_a|PArith:S_Out[3]~2_combout\ & (!\Bi[3]~input_o\)))) # (!\UNi_a|PArith:S_Out[3]~1_combout\ & 
-- ((\UNi_a|PArith:S_Out[3]~2_combout\ & (\Bi[3]~input_o\)) # (!\UNi_a|PArith:S_Out[3]~2_combout\ & ((\UNi_a|Add14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[3]~1_combout\,
	datab => \Bi[3]~input_o\,
	datac => \UNi_a|PArith:S_Out[3]~2_combout\,
	datad => \UNi_a|Add14~4_combout\,
	combout => \UNi_a|PArith:S_Out[3]~3_combout\);

-- Location: LCCOMB_X6_Y24_N26
\UNi_a|PArith:S_Out[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[3]~4_combout\ = (\UNi_l|Equal1~1_combout\ & (((\UNi_a|PArith:S_Out[4]~0_combout\)) # (!\UNi_a|Add7~1_combout\))) # (!\UNi_l|Equal1~1_combout\ & (((!\UNi_a|PArith:S_Out[4]~0_combout\ & \UNi_a|PArith:S_Out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|Add7~1_combout\,
	datab => \UNi_l|Equal1~1_combout\,
	datac => \UNi_a|PArith:S_Out[4]~0_combout\,
	datad => \UNi_a|PArith:S_Out[3]~3_combout\,
	combout => \UNi_a|PArith:S_Out[3]~4_combout\);

-- Location: LCCOMB_X17_Y25_N28
\UNi_a|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add2~2_combout\ = \Ai[3]~input_o\ $ (((\Ai[2]~input_o\ & ((\Ai[0]~input_o\) # (\Ai[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \Ai[1]~input_o\,
	datac => \Ai[2]~input_o\,
	datad => \Ai[3]~input_o\,
	combout => \UNi_a|Add2~2_combout\);

-- Location: LCCOMB_X19_Y22_N14
\UNi_a|PArith:S_Out[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[3]~5_combout\ = (\UNi_a|PArith:S_Out[4]~0_combout\ & ((\UNi_a|PArith:S_Out[3]~4_combout\ & (\UNi_a|Add5~4_combout\)) # (!\UNi_a|PArith:S_Out[3]~4_combout\ & ((\UNi_a|Add2~2_combout\))))) # (!\UNi_a|PArith:S_Out[4]~0_combout\ & 
-- (((\UNi_a|PArith:S_Out[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[4]~0_combout\,
	datab => \UNi_a|Add5~4_combout\,
	datac => \UNi_a|PArith:S_Out[3]~4_combout\,
	datad => \UNi_a|Add2~2_combout\,
	combout => \UNi_a|PArith:S_Out[3]~5_combout\);

-- Location: LCCOMB_X19_Y22_N0
\UNi_a|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add0~11_combout\ = (!\S[2]~input_o\ & ((\UNi_a|PArith:S_Out[4]~7_combout\ & ((\UNi_a|PArith:S_Out[3]~5_combout\))) # (!\UNi_a|PArith:S_Out[4]~7_combout\ & (\UNi_a|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \UNi_a|Add0~6_combout\,
	datac => \UNi_a|PArith:S_Out[3]~5_combout\,
	datad => \UNi_a|PArith:S_Out[4]~7_combout\,
	combout => \UNi_a|Add0~11_combout\);

-- Location: LCCOMB_X19_Y22_N10
\UNi_a|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|Add0~12_combout\ = (\UNi_a|Add0~11_combout\) # ((\S[2]~input_o\ & \UNi_l|SOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datac => \UNi_l|SOUT\(3),
	datad => \UNi_a|Add0~11_combout\,
	combout => \UNi_a|Add0~12_combout\);

-- Location: LCCOMB_X10_Y24_N4
\UNi_l|SOUT[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT[2]~4_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\ & ((!\Ai[2]~input_o\))) # (!\S[0]~input_o\ & (!\Bi[2]~input_o\)))) # (!\S[1]~input_o\ & ((\Bi[2]~input_o\ & ((\Ai[2]~input_o\))) # (!\Bi[2]~input_o\ & (\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[2]~input_o\,
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \Ai[2]~input_o\,
	combout => \UNi_l|SOUT[2]~4_combout\);

-- Location: LCCOMB_X10_Y24_N6
\UNi_l|SOUT[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT\(2) = (GLOBAL(\UNi_l|SOUT[3]~1clkctrl_outclk\) & ((\UNi_l|SOUT[2]~4_combout\))) # (!GLOBAL(\UNi_l|SOUT[3]~1clkctrl_outclk\) & (\UNi_l|SOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_l|SOUT\(2),
	datab => \UNi_l|SOUT[2]~4_combout\,
	datad => \UNi_l|SOUT[3]~1clkctrl_outclk\,
	combout => \UNi_l|SOUT\(2));

-- Location: LCCOMB_X6_Y24_N30
\UNi_a|PArith:S_Out[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[2]~4_combout\ = (\UNi_l|Equal1~0_combout\ & (!\SB~input_o\ & ((\Bi[0]~input_o\) # (\Bi[1]~input_o\)))) # (!\UNi_l|Equal1~0_combout\ & (\Bi[0]~input_o\ & (\Bi[1]~input_o\ & \SB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[0]~input_o\,
	datab => \Bi[1]~input_o\,
	datac => \UNi_l|Equal1~0_combout\,
	datad => \SB~input_o\,
	combout => \UNi_a|PArith:S_Out[2]~4_combout\);

-- Location: LCCOMB_X6_Y24_N28
\UNi_a|PArith:S_Out[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[2]~3_combout\ = (\Bi[0]~input_o\ & (\SB~input_o\ & ((\UNi_l|Equal1~0_combout\) # (!\Bi[1]~input_o\)))) # (!\Bi[0]~input_o\ & ((\SB~input_o\) # ((!\Bi[1]~input_o\ & \UNi_l|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[0]~input_o\,
	datab => \Bi[1]~input_o\,
	datac => \UNi_l|Equal1~0_combout\,
	datad => \SB~input_o\,
	combout => \UNi_a|PArith:S_Out[2]~3_combout\);

-- Location: LCCOMB_X6_Y24_N16
\UNi_a|PArith:S_Out[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[2]~5_combout\ = (\UNi_a|PArith:S_Out[2]~4_combout\ & ((\UNi_a|PArith:S_Out[2]~3_combout\ & ((\UNi_a|Add14~2_combout\))) # (!\UNi_a|PArith:S_Out[2]~3_combout\ & (\Bi[2]~input_o\)))) # (!\UNi_a|PArith:S_Out[2]~4_combout\ & 
-- ((\UNi_a|PArith:S_Out[2]~3_combout\ & (!\Bi[2]~input_o\)) # (!\UNi_a|PArith:S_Out[2]~3_combout\ & ((\UNi_a|Add14~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[2]~4_combout\,
	datab => \UNi_a|PArith:S_Out[2]~3_combout\,
	datac => \Bi[2]~input_o\,
	datad => \UNi_a|Add14~2_combout\,
	combout => \UNi_a|PArith:S_Out[2]~5_combout\);

-- Location: LCCOMB_X10_Y24_N28
\UNi_a|PArith:S_Out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[2]~7_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\ & ((\UNi_a|PArith:S_Out[2]~5_combout\))) # (!\S[0]~input_o\ & (\UNi_a|Add5~2_combout\)))) # (!\S[1]~input_o\ & (((\UNi_a|PArith:S_Out[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \UNi_a|Add5~2_combout\,
	datac => \UNi_a|PArith:S_Out[2]~5_combout\,
	datad => \S[0]~input_o\,
	combout => \UNi_a|PArith:S_Out[2]~7_combout\);

-- Location: LCCOMB_X9_Y25_N0
\UNi_a|PArith:S_Out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[2]~2_combout\ = \Ai[2]~input_o\ $ (((\Ai[1]~input_o\ & ((\UNi_a|PArith:S_Out[4]~0_combout\) # (\Ai[0]~input_o\))) # (!\Ai[1]~input_o\ & (\UNi_a|PArith:S_Out[4]~0_combout\ & \Ai[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[1]~input_o\,
	datab => \Ai[2]~input_o\,
	datac => \UNi_a|PArith:S_Out[4]~0_combout\,
	datad => \Ai[0]~input_o\,
	combout => \UNi_a|PArith:S_Out[2]~2_combout\);

-- Location: LCCOMB_X6_Y24_N18
\UNi_a|PArith:S_Out[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|PArith:S_Out[2]~6_combout\ = (\UNi_a|PArith:S_Out[4]~0_combout\ & ((\UNi_l|Equal1~1_combout\ & (\UNi_a|PArith:S_Out[2]~7_combout\)) # (!\UNi_l|Equal1~1_combout\ & ((\UNi_a|PArith:S_Out[2]~2_combout\))))) # (!\UNi_a|PArith:S_Out[4]~0_combout\ & 
-- ((\UNi_l|Equal1~1_combout\ & ((!\UNi_a|PArith:S_Out[2]~2_combout\))) # (!\UNi_l|Equal1~1_combout\ & (\UNi_a|PArith:S_Out[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[2]~7_combout\,
	datab => \UNi_a|PArith:S_Out[4]~0_combout\,
	datac => \UNi_l|Equal1~1_combout\,
	datad => \UNi_a|PArith:S_Out[2]~2_combout\,
	combout => \UNi_a|PArith:S_Out[2]~6_combout\);

-- Location: LCCOMB_X19_Y22_N12
\SALUi[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi[2]~6_combout\ = (!\S[2]~input_o\ & ((\UNi_a|PArith:S_Out[4]~7_combout\ & (\UNi_a|PArith:S_Out[2]~6_combout\)) # (!\UNi_a|PArith:S_Out[4]~7_combout\ & ((\Ai[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|PArith:S_Out[2]~6_combout\,
	datab => \UNi_a|PArith:S_Out[4]~7_combout\,
	datac => \S[2]~input_o\,
	datad => \Ai[2]~input_o\,
	combout => \SALUi[2]~6_combout\);

-- Location: LCCOMB_X16_Y23_N2
\SALUi[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi[2]~7_combout\ = (\SALUi[2]~6_combout\) # ((\UNi_l|SOUT\(2) & \S[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UNi_l|SOUT\(2),
	datac => \SALUi[2]~6_combout\,
	datad => \S[2]~input_o\,
	combout => \SALUi[2]~7_combout\);

-- Location: LCCOMB_X19_Y22_N16
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \SALUi[2]~7_combout\ $ (VCC)
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\SALUi[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SALUi[2]~7_combout\,
	datad => VCC,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X19_Y22_N18
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\UNi_a|Add0~12_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\UNi_a|Add0~12_combout\ & 
-- (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\UNi_a|Add0~12_combout\ & !\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|Add0~12_combout\,
	datad => VCC,
	cin => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X19_Y22_N20
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\UNi_a|Add0~10_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\UNi_a|Add0~10_combout\ & 
-- (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\UNi_a|Add0~10_combout\ & !\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UNi_a|Add0~10_combout\,
	datad => VCC,
	cin => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X19_Y22_N22
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X10_Y23_N12
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\);

-- Location: LCCOMB_X10_Y23_N2
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\ = (\UNi_a|Add0~10_combout\ & \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UNi_a|Add0~10_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\);

-- Location: LCCOMB_X10_Y23_N6
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\);

-- Location: LCCOMB_X10_Y23_N28
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\UNi_a|Add0~11_combout\) # ((\S[2]~input_o\ & \UNi_l|SOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \S[2]~input_o\,
	datac => \UNi_a|Add0~11_combout\,
	datad => \UNi_l|SOUT\(3),
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\);

-- Location: LCCOMB_X10_Y23_N14
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\SALUi[2]~6_combout\) # ((\UNi_l|SOUT\(2) & \S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_l|SOUT\(2),
	datab => \S[2]~input_o\,
	datac => \SALUi[2]~6_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\);

-- Location: LCCOMB_X19_Y22_N6
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\ = (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\);

-- Location: LCCOMB_X10_Y24_N24
\UNi_l|SOUT[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT[1]~2_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\ & (!\Ai[1]~input_o\)) # (!\S[0]~input_o\ & ((!\Bi[1]~input_o\))))) # (!\S[1]~input_o\ & ((\Bi[1]~input_o\ & ((\Ai[1]~input_o\))) # (!\Bi[1]~input_o\ & (\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \Ai[1]~input_o\,
	datad => \Bi[1]~input_o\,
	combout => \UNi_l|SOUT[1]~2_combout\);

-- Location: LCCOMB_X10_Y24_N26
\UNi_l|SOUT[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT\(1) = (GLOBAL(\UNi_l|SOUT[3]~1clkctrl_outclk\) & (\UNi_l|SOUT[1]~2_combout\)) # (!GLOBAL(\UNi_l|SOUT[3]~1clkctrl_outclk\) & ((\UNi_l|SOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_l|SOUT[1]~2_combout\,
	datac => \UNi_l|SOUT\(1),
	datad => \UNi_l|SOUT[3]~1clkctrl_outclk\,
	combout => \UNi_l|SOUT\(1));

-- Location: LCCOMB_X6_Y24_N20
\SALUi[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi[1]~8_combout\ = \Bi[1]~input_o\ $ (((\Bi[0]~input_o\ & (\UNi_l|Equal1~0_combout\ $ (\SB~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bi[0]~input_o\,
	datab => \Bi[1]~input_o\,
	datac => \UNi_l|Equal1~0_combout\,
	datad => \SB~input_o\,
	combout => \SALUi[1]~8_combout\);

-- Location: LCCOMB_X10_Y24_N0
\UNi_a|S_Out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_a|S_Out~0_combout\ = \Ai[1]~input_o\ $ (((\SA~input_o\ & \Ai[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ai[1]~input_o\,
	datac => \SA~input_o\,
	datad => \Ai[0]~input_o\,
	combout => \UNi_a|S_Out~0_combout\);

-- Location: LCCOMB_X10_Y24_N16
\SALUi[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi[1]~4_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\ $ (\UNi_a|S_Out~0_combout\)))) # (!\S[1]~input_o\ & (\SALUi[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \SALUi[1]~8_combout\,
	datac => \S[0]~input_o\,
	datad => \UNi_a|S_Out~0_combout\,
	combout => \SALUi[1]~4_combout\);

-- Location: LCCOMB_X10_Y23_N30
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~15_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\S[2]~input_o\ & (\UNi_l|SOUT\(1))) # (!\S[2]~input_o\ & ((\SALUi[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_l|SOUT\(1),
	datab => \S[2]~input_o\,
	datac => \SALUi[1]~4_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~15_combout\);

-- Location: LCCOMB_X10_Y23_N0
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~16_combout\ = (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\S[2]~input_o\ & (\UNi_l|SOUT\(1))) # (!\S[2]~input_o\ & ((\SALUi[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_l|SOUT\(1),
	datab => \S[2]~input_o\,
	datac => \SALUi[1]~4_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~16_combout\);

-- Location: LCCOMB_X10_Y23_N18
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~15_combout\) # (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~16_combout\)))
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~15_combout\) # (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~15_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[15]~16_combout\,
	datad => VCC,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X10_Y23_N20
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\) # 
-- (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ & 
-- (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\)))
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\ & (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\ & 
-- !\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\,
	datad => VCC,
	cin => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X10_Y23_N22
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\) # 
-- (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\) # 
-- (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\)))))
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\) # 
-- (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\,
	datad => VCC,
	cin => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X10_Y23_N24
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\ & (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\ & 
-- !\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~9_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[18]~8_combout\,
	datad => VCC,
	cin => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X10_Y23_N26
\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y23_N10
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\) # 
-- (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~18_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[16]~11_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\);

-- Location: LCCOMB_X10_Y23_N4
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\) # 
-- (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~17_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[17]~10_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\);

-- Location: LCCOMB_X10_Y23_N8
\SALUi[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi[1]~5_combout\ = (\S[2]~input_o\ & (\UNi_l|SOUT\(1))) # (!\S[2]~input_o\ & ((\SALUi[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_l|SOUT\(1),
	datab => \S[2]~input_o\,
	datac => \SALUi[1]~4_combout\,
	combout => \SALUi[1]~5_combout\);

-- Location: LCCOMB_X10_Y23_N16
\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\SALUi[1]~5_combout\)) # 
-- (!\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SALUi[1]~5_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD_Con|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\);

-- Location: LCCOMB_X10_Y24_N30
\UNi_l|SOUT[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT[0]~0_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\ & ((!\Ai[0]~input_o\))) # (!\S[0]~input_o\ & (!\Bi[0]~input_o\)))) # (!\S[1]~input_o\ & ((\Bi[0]~input_o\ & ((\Ai[0]~input_o\))) # (!\Bi[0]~input_o\ & (\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \Bi[0]~input_o\,
	datad => \Ai[0]~input_o\,
	combout => \UNi_l|SOUT[0]~0_combout\);

-- Location: LCCOMB_X10_Y24_N12
\UNi_l|SOUT[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UNi_l|SOUT\(0) = (GLOBAL(\UNi_l|SOUT[3]~1clkctrl_outclk\) & ((\UNi_l|SOUT[0]~0_combout\))) # (!GLOBAL(\UNi_l|SOUT[3]~1clkctrl_outclk\) & (\UNi_l|SOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_l|SOUT\(0),
	datac => \UNi_l|SOUT[0]~0_combout\,
	datad => \UNi_l|SOUT[3]~1clkctrl_outclk\,
	combout => \UNi_l|SOUT\(0));

-- Location: LCCOMB_X10_Y24_N22
\SALUi[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi[0]~2_combout\ = (\S[1]~input_o\ & (!\Ai[0]~input_o\)) # (!\S[1]~input_o\ & ((\Bi[0]~input_o\ $ (!\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ai[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \Bi[0]~input_o\,
	datad => \S[0]~input_o\,
	combout => \SALUi[0]~2_combout\);

-- Location: LCCOMB_X16_Y23_N0
\SALUi[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SALUi[0]~3_combout\ = (\S[2]~input_o\ & (\UNi_l|SOUT\(0))) # (!\S[2]~input_o\ & ((\SALUi[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \UNi_l|SOUT\(0),
	datad => \SALUi[0]~2_combout\,
	combout => \SALUi[0]~3_combout\);

-- Location: LCCOMB_X27_Y25_N24
\DIS_UNI|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_UNI|Mux13~0_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\ & ((!\SALUi[0]~3_combout\) # 
-- (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\ $ 
-- ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\,
	datad => \SALUi[0]~3_combout\,
	combout => \DIS_UNI|Mux13~0_combout\);

-- Location: LCCOMB_X27_Y25_N2
\DIS_UNI|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_UNI|Mux12~0_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\) # ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ & 
-- \SALUi[0]~3_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\) # ((!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\ & 
-- \SALUi[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\,
	datad => \SALUi[0]~3_combout\,
	combout => \DIS_UNI|Mux12~0_combout\);

-- Location: LCCOMB_X27_Y25_N4
\DIS_UNI|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_UNI|Mux11~0_combout\ = (\SALUi[0]~3_combout\) # ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\))) # 
-- (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\,
	datad => \SALUi[0]~3_combout\,
	combout => \DIS_UNI|Mux11~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\DIS_UNI|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_UNI|Mux10~0_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\) # (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ $ 
-- (!\SALUi[0]~3_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\)) # 
-- (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ & ((\SALUi[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\,
	datad => \SALUi[0]~3_combout\,
	combout => \DIS_UNI|Mux10~0_combout\);

-- Location: LCCOMB_X27_Y25_N0
\DIS_UNI|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_UNI|Mux9~0_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\)) # (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & 
-- (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\) # (!\SALUi[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\,
	datad => \SALUi[0]~3_combout\,
	combout => \DIS_UNI|Mux9~0_combout\);

-- Location: LCCOMB_X27_Y25_N18
\DIS_UNI|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_UNI|Mux8~0_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & ((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\) # (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ $ 
-- (\SALUi[0]~3_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\ & (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\,
	datad => \SALUi[0]~3_combout\,
	combout => \DIS_UNI|Mux8~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\DIS_UNI|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_UNI|Mux7~0_combout\ = (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ & (((\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\)))) # (!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\ & 
-- (\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\ $ (((!\BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\ & \SALUi[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[22]~13_combout\,
	datab => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[23]~14_combout\,
	datac => \BCD_Con|Mod0|auto_generated|divider|divider|StageOut[21]~12_combout\,
	datad => \SALUi[0]~3_combout\,
	combout => \DIS_UNI|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y22_N24
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \SALUi[2]~7_combout\ $ (VCC)
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\SALUi[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SALUi[2]~7_combout\,
	datad => VCC,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X19_Y22_N26
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\UNi_a|Add0~12_combout\ & (\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\UNi_a|Add0~12_combout\ & 
-- (!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\UNi_a|Add0~12_combout\ & !\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|Add0~12_combout\,
	datad => VCC,
	cin => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X19_Y22_N28
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\UNi_a|Add0~10_combout\ & (\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\UNi_a|Add0~10_combout\ & 
-- (!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\UNi_a|Add0~10_combout\ & !\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UNi_a|Add0~10_combout\,
	datad => VCC,
	cin => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X19_Y22_N30
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X16_Y23_N30
\BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~9_combout\ = (!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~9_combout\);

-- Location: LCCOMB_X16_Y23_N4
\BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ = (\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \UNi_a|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \UNi_a|Add0~10_combout\,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\);

-- Location: LCCOMB_X16_Y23_N24
\BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ = (!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\);

-- Location: LCCOMB_X16_Y23_N8
\BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\ = (\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\UNi_a|Add0~11_combout\) # ((\S[2]~input_o\ & \UNi_l|SOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UNi_a|Add0~11_combout\,
	datab => \S[2]~input_o\,
	datac => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \UNi_l|SOUT\(3),
	combout => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\);

-- Location: LCCOMB_X16_Y23_N26
\BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\ = (\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\SALUi[2]~6_combout\) # ((\S[2]~input_o\ & \UNi_l|SOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \S[2]~input_o\,
	datac => \SALUi[2]~6_combout\,
	datad => \UNi_l|SOUT\(2),
	combout => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\);

-- Location: LCCOMB_X16_Y23_N28
\BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~11_combout\ = (!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~11_combout\);

-- Location: LCCOMB_X16_Y23_N22
\BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~15_combout\ = (!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\S[2]~input_o\ & ((\UNi_l|SOUT\(1)))) # (!\S[2]~input_o\ & (\SALUi[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \S[2]~input_o\,
	datac => \SALUi[1]~4_combout\,
	datad => \UNi_l|SOUT\(1),
	combout => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~15_combout\);

-- Location: LCCOMB_X16_Y23_N20
\BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~14_combout\ = (\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\S[2]~input_o\ & ((\UNi_l|SOUT\(1)))) # (!\S[2]~input_o\ & (\SALUi[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \S[2]~input_o\,
	datac => \SALUi[1]~4_combout\,
	datad => \UNi_l|SOUT\(1),
	combout => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~14_combout\);

-- Location: LCCOMB_X16_Y23_N10
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~15_combout\) # (\BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~15_combout\,
	datab => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[15]~14_combout\,
	datad => VCC,
	cout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X16_Y23_N12
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\ & (!\BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~11_combout\ & 
-- !\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~13_combout\,
	datab => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[16]~11_combout\,
	datad => VCC,
	cin => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X16_Y23_N14
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\) # 
-- (\BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~10_combout\,
	datab => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[17]~12_combout\,
	datad => VCC,
	cin => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X16_Y23_N16
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~9_combout\ & (!\BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\ & 
-- !\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~9_combout\,
	datab => \BCD_Con|Div0|auto_generated|divider|divider|StageOut[18]~8_combout\,
	datad => VCC,
	cin => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y23_N18
\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y22_N0
\DIS_DEC|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_DEC|Mux12~0_combout\ = (!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DIS_DEC|Mux12~0_combout\);

-- Location: LCCOMB_X16_Y23_N6
\DIS_DEC|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_DEC|Mux10~0_combout\ = (\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \DIS_DEC|Mux10~0_combout\);

-- Location: LCCOMB_X23_Y22_N2
\DIS_DEC|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIS_DEC|Mux9~0_combout\ = (\BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \BCD_Con|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \DIS_DEC|Mux9~0_combout\);

ww_UN(0) <= \UN[0]~output_o\;

ww_UN(1) <= \UN[1]~output_o\;

ww_UN(2) <= \UN[2]~output_o\;

ww_UN(3) <= \UN[3]~output_o\;

ww_UN(4) <= \UN[4]~output_o\;

ww_UN(5) <= \UN[5]~output_o\;

ww_UN(6) <= \UN[6]~output_o\;

ww_DE(0) <= \DE[0]~output_o\;

ww_DE(1) <= \DE[1]~output_o\;

ww_DE(2) <= \DE[2]~output_o\;

ww_DE(3) <= \DE[3]~output_o\;

ww_DE(4) <= \DE[4]~output_o\;

ww_DE(5) <= \DE[5]~output_o\;

ww_DE(6) <= \DE[6]~output_o\;

ww_SI_G(0) <= \SI_G[0]~output_o\;

ww_SI_G(1) <= \SI_G[1]~output_o\;

ww_SI_G(2) <= \SI_G[2]~output_o\;

ww_SI_G(3) <= \SI_G[3]~output_o\;

ww_SI_G(4) <= \SI_G[4]~output_o\;

ww_SI_G(5) <= \SI_G[5]~output_o\;

ww_SI_G(6) <= \SI_G[6]~output_o\;
END structure;


