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

-- DATE "03/01/2024 17:01:40"

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

ENTITY 	U_logic IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(1 DOWNTO 0);
	SOUT : OUT std_logic_vector(4 DOWNTO 0)
	);
END U_logic;

-- Design Ports Information
-- SOUT[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOUT[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOUT[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOUT[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOUT[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF U_logic IS
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
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SOUT : std_logic_vector(4 DOWNTO 0);
SIGNAL \SOUT[0]~output_o\ : std_logic;
SIGNAL \SOUT[1]~output_o\ : std_logic;
SIGNAL \SOUT[2]~output_o\ : std_logic;
SIGNAL \SOUT[3]~output_o\ : std_logic;
SIGNAL \SOUT[4]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \SOUT[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \SOUT[1]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \SOUT[2]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \SOUT[3]~3_combout\ : std_logic;
SIGNAL \SOUT[4]~4_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_S <= S;
SOUT <= ww_SOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y13_N16
\SOUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \SOUT[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\SOUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOUT[1]~1_combout\,
	devoe => ww_devoe,
	o => \SOUT[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\SOUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \SOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\SOUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \SOUT[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\SOUT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \SOUT[4]~output_o\);

-- Location: IOIBUF_X1_Y29_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\S[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\S[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y20_N16
\SOUT[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SOUT[0]~0_combout\ = (\S[1]~input_o\ & ((\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (!\S[0]~input_o\)))) # (!\S[1]~input_o\ & ((\S[0]~input_o\ & (!\B[0]~input_o\)) # (!\S[0]~input_o\ & ((!\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \SOUT[0]~0_combout\);

-- Location: IOIBUF_X0_Y20_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y20_N26
\SOUT[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SOUT[1]~1_combout\ = (\S[1]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\)) # (!\B[1]~input_o\ & ((!\S[0]~input_o\))))) # (!\S[1]~input_o\ & ((\S[0]~input_o\ & ((!\B[1]~input_o\))) # (!\S[0]~input_o\ & (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SOUT[1]~1_combout\);

-- Location: IOIBUF_X0_Y12_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y20_N12
\SOUT[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SOUT[2]~2_combout\ = (\S[1]~input_o\ & ((\B[2]~input_o\ & ((\A[2]~input_o\))) # (!\B[2]~input_o\ & (!\S[0]~input_o\)))) # (!\S[1]~input_o\ & ((\S[0]~input_o\ & ((!\B[2]~input_o\))) # (!\S[0]~input_o\ & (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SOUT[2]~2_combout\);

-- Location: IOIBUF_X0_Y20_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y20_N30
\SOUT[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SOUT[3]~3_combout\ = (\S[1]~input_o\ & ((\B[3]~input_o\ & (\A[3]~input_o\)) # (!\B[3]~input_o\ & ((!\S[0]~input_o\))))) # (!\S[1]~input_o\ & ((\S[0]~input_o\ & ((!\B[3]~input_o\))) # (!\S[0]~input_o\ & (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SOUT[3]~3_combout\);

-- Location: LCCOMB_X1_Y20_N24
\SOUT[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SOUT[4]~4_combout\ = (!\S[1]~input_o\) # (!\S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[0]~input_o\,
	datac => \S[1]~input_o\,
	combout => \SOUT[4]~4_combout\);

ww_SOUT(0) <= \SOUT[0]~output_o\;

ww_SOUT(1) <= \SOUT[1]~output_o\;

ww_SOUT(2) <= \SOUT[2]~output_o\;

ww_SOUT(3) <= \SOUT[3]~output_o\;

ww_SOUT(4) <= \SOUT[4]~output_o\;
END structure;


