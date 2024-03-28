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

-- DATE "03/15/2024 16:38:37"

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

ENTITY 	Sem_fin IS
    PORT (
	clk1 : IN std_logic;
	clk2 : IN std_logic;
	limite : IN STD.STANDARD.integer range 0 TO 99;
	enable : IN std_logic;
	verde : BUFFER std_logic;
	rojo : BUFFER std_logic;
	talfin : BUFFER std_logic
	);
END Sem_fin;

-- Design Ports Information
-- limite[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limite[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limite[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limite[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limite[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limite[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- limite[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talfin	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sem_fin IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_clk2 : std_logic;
SIGNAL ww_limite : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_verde : std_logic;
SIGNAL ww_rojo : std_logic;
SIGNAL ww_talfin : std_logic;
SIGNAL \limite[0]~input_o\ : std_logic;
SIGNAL \limite[1]~input_o\ : std_logic;
SIGNAL \limite[2]~input_o\ : std_logic;
SIGNAL \limite[3]~input_o\ : std_logic;
SIGNAL \limite[4]~input_o\ : std_logic;
SIGNAL \limite[5]~input_o\ : std_logic;
SIGNAL \limite[6]~input_o\ : std_logic;
SIGNAL \verde~output_o\ : std_logic;
SIGNAL \rojo~output_o\ : std_logic;
SIGNAL \talfin~output_o\ : std_logic;
SIGNAL \clk2~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \verde~0_combout\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \rojo~0_combout\ : std_logic;

BEGIN

ww_clk1 <= clk1;
ww_clk2 <= clk2;
ww_limite <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(limite, 7);
ww_enable <= enable;
verde <= ww_verde;
rojo <= ww_rojo;
talfin <= ww_talfin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N2
\verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verde~0_combout\,
	devoe => ww_devoe,
	o => \verde~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rojo~0_combout\,
	devoe => ww_devoe,
	o => \rojo~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\talfin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enable~input_o\,
	devoe => ww_devoe,
	o => \talfin~output_o\);

-- Location: IOIBUF_X0_Y10_N8
\clk2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk2,
	o => \clk2~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X1_Y11_N24
\verde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verde~0_combout\ = (\clk2~input_o\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk2~input_o\,
	datad => \enable~input_o\,
	combout => \verde~0_combout\);

-- Location: IOIBUF_X0_Y21_N1
\clk1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: LCCOMB_X1_Y11_N2
\rojo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rojo~0_combout\ = (!\enable~input_o\ & \clk1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datad => \clk1~input_o\,
	combout => \rojo~0_combout\);

-- Location: IOIBUF_X28_Y0_N22
\limite[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limite(0),
	o => \limite[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\limite[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limite(1),
	o => \limite[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\limite[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limite(2),
	o => \limite[2]~input_o\);

-- Location: IOIBUF_X7_Y29_N22
\limite[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limite(3),
	o => \limite[3]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\limite[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limite(4),
	o => \limite[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\limite[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limite(5),
	o => \limite[5]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\limite[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_limite(6),
	o => \limite[6]~input_o\);

ww_verde <= \verde~output_o\;

ww_rojo <= \rojo~output_o\;

ww_talfin <= \talfin~output_o\;
END structure;


