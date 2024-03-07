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

-- DATE "03/02/2024 15:06:46"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	UArith IS
    PORT (
	A : IN STD.STANDARD.integer range 0 TO 15;
	B : IN STD.STANDARD.integer range 0 TO 15;
	SIGA : IN std_logic;
	SIGB : IN std_logic;
	S : IN std_logic_vector(1 DOWNTO 0);
	S_Out : BUFFER STD.STANDARD.integer range 0 TO 31;
	S_OutAB : OUT std_logic
	);
END UArith;

-- Design Ports Information
-- S_Out[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[3]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Out[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_OutAB	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGA	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGB	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UArith IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SIGA : std_logic;
SIGNAL ww_SIGB : std_logic;
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S_Out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_S_OutAB : std_logic;
SIGNAL \S_Out[0]~output_o\ : std_logic;
SIGNAL \S_Out[1]~output_o\ : std_logic;
SIGNAL \S_Out[2]~output_o\ : std_logic;
SIGNAL \S_Out[3]~output_o\ : std_logic;
SIGNAL \S_Out[4]~output_o\ : std_logic;
SIGNAL \S_OutAB~output_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S_Out[0]~2_combout\ : std_logic;
SIGNAL \SIGB~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S_Out[1]~4_combout\ : std_logic;
SIGNAL \SIGA~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S_Out[1]~3_combout\ : std_logic;
SIGNAL \S_Out[1]~5_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \S_Out[2]~6_combout\ : std_logic;
SIGNAL \S_Out[2]~7_combout\ : std_logic;
SIGNAL \S_Out[2]~8_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add6~1_cout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \S_Out[2]~9_combout\ : std_logic;
SIGNAL \S_Out[2]~10_combout\ : std_logic;
SIGNAL \S_Out[3]~12_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \S_Out[3]~21_combout\ : std_logic;
SIGNAL \S_Out[3]~22_combout\ : std_logic;
SIGNAL \S_Out[3]~11_combout\ : std_logic;
SIGNAL \S_Out[3]~13_combout\ : std_logic;
SIGNAL \S_Out[4]~19_combout\ : std_logic;
SIGNAL \S_Out[4]~18_combout\ : std_logic;
SIGNAL \S_Out[4]~16_combout\ : std_logic;
SIGNAL \S_Out[4]~14_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \S_Out[4]~15_combout\ : std_logic;
SIGNAL \S_Out[4]~17_combout\ : std_logic;
SIGNAL \S_Out[4]~20_combout\ : std_logic;

BEGIN

ww_A <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(A, 4);
ww_B <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(B, 4);
ww_SIGA <= SIGA;
ww_SIGB <= SIGB;
ww_S <= S;
S_Out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_S_Out));
S_OutAB <= ww_S_OutAB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y2_N9
\S_Out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out[0]~2_combout\,
	devoe => ww_devoe,
	o => \S_Out[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\S_Out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out[1]~5_combout\,
	devoe => ww_devoe,
	o => \S_Out[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\S_Out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out[2]~10_combout\,
	devoe => ww_devoe,
	o => \S_Out[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\S_Out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out[3]~13_combout\,
	devoe => ww_devoe,
	o => \S_Out[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\S_Out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_Out[4]~20_combout\,
	devoe => ww_devoe,
	o => \S_Out[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\S_OutAB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S_OutAB~output_o\);

-- Location: IOIBUF_X0_Y4_N8
\S[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\S[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N29
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\S_Out[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[0]~2_combout\ = (\S[1]~input_o\ & (\S[0]~input_o\ $ (((\B[0]~input_o\))))) # (!\S[1]~input_o\ & (((!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S_Out[0]~2_combout\);

-- Location: IOIBUF_X1_Y0_N15
\SIGB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGB,
	o => \SIGB~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N20
\S_Out[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[1]~4_combout\ = \B[1]~input_o\ $ (((\B[0]~input_o\ & (\SIGB~input_o\ $ (!\S[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIGB~input_o\,
	datab => \B[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S_Out[1]~4_combout\);

-- Location: IOIBUF_X0_Y5_N22
\SIGA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SIGA,
	o => \SIGA~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\S_Out[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[1]~3_combout\ = (!\S[1]~input_o\ & (\A[1]~input_o\ $ (((!\A[0]~input_o\) # (!\SIGA~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \SIGA~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \S_Out[1]~3_combout\);

-- Location: LCCOMB_X1_Y4_N14
\S_Out[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[1]~5_combout\ = (\S_Out[1]~3_combout\) # ((\S[1]~input_o\ & \S_Out[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S_Out[1]~4_combout\,
	datac => \S_Out[1]~3_combout\,
	combout => \S_Out[1]~5_combout\);

-- Location: IOIBUF_X0_Y3_N8
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N8
\S_Out[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[2]~6_combout\ = \A[2]~input_o\ $ (((\SIGA~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \SIGA~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \S_Out[2]~6_combout\);

-- Location: LCCOMB_X1_Y4_N10
\S_Out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[2]~7_combout\ = (\SIGB~input_o\ & (\B[1]~input_o\ & (\S[0]~input_o\ & \B[0]~input_o\))) # (!\SIGB~input_o\ & (!\S[0]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIGB~input_o\,
	datab => \B[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S_Out[2]~7_combout\);

-- Location: LCCOMB_X1_Y4_N28
\S_Out[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[2]~8_combout\ = (\S[0]~input_o\ & !\SIGB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \SIGB~input_o\,
	combout => \S_Out[2]~8_combout\);

-- Location: IOIBUF_X0_Y2_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X2_Y4_N8
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\B[1]~input_o\) # (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X2_Y4_N10
\Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = \B[1]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X2_Y4_N0
\Add6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~1_cout\ = CARRY((\Add5~1_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~1_combout\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cout => \Add6~1_cout\);

-- Location: LCCOMB_X2_Y4_N2
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add6~1_cout\ & ((\B[2]~input_o\ $ (\Add5~0_combout\)))) # (!\Add6~1_cout\ & (\B[2]~input_o\ $ ((!\Add5~0_combout\))))
-- \Add6~3\ = CARRY((!\Add6~1_cout\ & (\B[2]~input_o\ $ (!\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Add5~0_combout\,
	datad => VCC,
	cin => \Add6~1_cout\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X1_Y4_N6
\S_Out[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[2]~9_combout\ = (\S_Out[2]~7_combout\ & (\S_Out[2]~8_combout\ $ ((!\B[2]~input_o\)))) # (!\S_Out[2]~7_combout\ & ((\S_Out[2]~8_combout\ & ((!\Add6~2_combout\))) # (!\S_Out[2]~8_combout\ & (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Out[2]~7_combout\,
	datab => \S_Out[2]~8_combout\,
	datac => \B[2]~input_o\,
	datad => \Add6~2_combout\,
	combout => \S_Out[2]~9_combout\);

-- Location: LCCOMB_X1_Y4_N0
\S_Out[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[2]~10_combout\ = (\S[1]~input_o\ & ((!\S_Out[2]~9_combout\))) # (!\S[1]~input_o\ & (\S_Out[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datac => \S_Out[2]~6_combout\,
	datad => \S_Out[2]~9_combout\,
	combout => \S_Out[2]~10_combout\);

-- Location: LCCOMB_X1_Y4_N2
\S_Out[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[3]~12_combout\ = (\A[2]~input_o\ & (((\A[0]~input_o\) # (\A[1]~input_o\)) # (!\SIGA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \SIGA~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \S_Out[3]~12_combout\);

-- Location: IOIBUF_X0_Y6_N22
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X2_Y4_N30
\Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \B[3]~input_o\ $ (((\B[2]~input_o\) # ((\B[0]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X2_Y4_N12
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\B[2]~input_o\) # ((\B[1]~input_o\) # (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add5~2_combout\);

-- Location: LCCOMB_X2_Y4_N4
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add6~3\ & (\Add5~2_combout\ $ (\B[3]~input_o\ $ (VCC)))) # (!\Add6~3\ & ((\Add5~2_combout\ $ (\B[3]~input_o\)) # (GND)))
-- \Add6~5\ = CARRY((\Add5~2_combout\ $ (\B[3]~input_o\)) # (!\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X2_Y4_N26
\S_Out[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[3]~21_combout\ = ((!\B[1]~input_o\ & (!\B[0]~input_o\ & !\SIGB~input_o\))) # (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SIGB~input_o\,
	datad => \B[2]~input_o\,
	combout => \S_Out[3]~21_combout\);

-- Location: LCCOMB_X2_Y4_N20
\S_Out[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[3]~22_combout\ = (\S[0]~input_o\ & (((\SIGB~input_o\)))) # (!\S[0]~input_o\ & (\S_Out[3]~21_combout\ $ (((\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Out[3]~21_combout\,
	datab => \S[0]~input_o\,
	datac => \SIGB~input_o\,
	datad => \B[3]~input_o\,
	combout => \S_Out[3]~22_combout\);

-- Location: LCCOMB_X2_Y4_N24
\S_Out[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[3]~11_combout\ = (\S[0]~input_o\ & ((\S_Out[3]~22_combout\ & (!\Add7~0_combout\)) # (!\S_Out[3]~22_combout\ & ((\Add6~4_combout\))))) # (!\S[0]~input_o\ & (((\S_Out[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~0_combout\,
	datab => \S[0]~input_o\,
	datac => \Add6~4_combout\,
	datad => \S_Out[3]~22_combout\,
	combout => \S_Out[3]~11_combout\);

-- Location: LCCOMB_X1_Y4_N4
\S_Out[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[3]~13_combout\ = (\S[1]~input_o\ & (((\S_Out[3]~11_combout\)))) # (!\S[1]~input_o\ & (\S_Out[3]~12_combout\ $ ((\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S_Out[3]~12_combout\,
	datac => \A[3]~input_o\,
	datad => \S_Out[3]~11_combout\,
	combout => \S_Out[3]~13_combout\);

-- Location: LCCOMB_X1_Y4_N16
\S_Out[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[4]~19_combout\ = (\A[2]~input_o\ & (\A[3]~input_o\ & ((\A[0]~input_o\) # (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \S_Out[4]~19_combout\);

-- Location: LCCOMB_X1_Y4_N22
\S_Out[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[4]~18_combout\ = (!\SIGA~input_o\ & ((\A[2]~input_o\) # (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \SIGA~input_o\,
	combout => \S_Out[4]~18_combout\);

-- Location: LCCOMB_X2_Y4_N22
\S_Out[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[4]~16_combout\ = (\SIGB~input_o\ & ((\B[2]~input_o\) # ((\B[3]~input_o\)))) # (!\SIGB~input_o\ & (((\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \S[0]~input_o\,
	datac => \SIGB~input_o\,
	datad => \B[3]~input_o\,
	combout => \S_Out[4]~16_combout\);

-- Location: LCCOMB_X2_Y4_N18
\S_Out[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[4]~14_combout\ = (\S[0]~input_o\ & (\B[1]~input_o\ & \B[0]~input_o\)) # (!\S[0]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S_Out[4]~14_combout\);

-- Location: LCCOMB_X2_Y4_N6
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = \Add6~5\ $ (((!\Add5~2_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datad => \B[3]~input_o\,
	cin => \Add6~5\,
	combout => \Add6~6_combout\);

-- Location: LCCOMB_X2_Y4_N28
\S_Out[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[4]~15_combout\ = (\B[2]~input_o\ & (!\SIGB~input_o\ & ((\S[0]~input_o\) # (\B[3]~input_o\)))) # (!\B[2]~input_o\ & (\S[0]~input_o\ & ((!\B[3]~input_o\) # (!\SIGB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \S[0]~input_o\,
	datac => \SIGB~input_o\,
	datad => \B[3]~input_o\,
	combout => \S_Out[4]~15_combout\);

-- Location: LCCOMB_X2_Y4_N16
\S_Out[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[4]~17_combout\ = (\S_Out[4]~16_combout\ & (((\Add6~6_combout\ & \S_Out[4]~15_combout\)))) # (!\S_Out[4]~16_combout\ & (((!\S_Out[4]~15_combout\)) # (!\S_Out[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Out[4]~16_combout\,
	datab => \S_Out[4]~14_combout\,
	datac => \Add6~6_combout\,
	datad => \S_Out[4]~15_combout\,
	combout => \S_Out[4]~17_combout\);

-- Location: LCCOMB_X1_Y4_N18
\S_Out[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_Out[4]~20_combout\ = (\S[1]~input_o\ & (((\S_Out[4]~17_combout\)))) # (!\S[1]~input_o\ & ((\S_Out[4]~19_combout\) # ((\S_Out[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S_Out[4]~19_combout\,
	datac => \S_Out[4]~18_combout\,
	datad => \S_Out[4]~17_combout\,
	combout => \S_Out[4]~20_combout\);

ww_S_Out(0) <= \S_Out[0]~output_o\;

ww_S_Out(1) <= \S_Out[1]~output_o\;

ww_S_Out(2) <= \S_Out[2]~output_o\;

ww_S_Out(3) <= \S_Out[3]~output_o\;

ww_S_Out(4) <= \S_Out[4]~output_o\;

ww_S_OutAB <= \S_OutAB~output_o\;
END structure;


