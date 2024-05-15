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

-- DATE "05/14/2024 10:01:44"

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

ENTITY 	Semaforo IS
    PORT (
	clk1 : IN std_logic;
	clk2 : IN std_logic;
	enable : IN std_logic;
	alarma : IN std_logic;
	verde : BUFFER std_logic;
	rojo : BUFFER std_logic;
	talfin : BUFFER std_logic
	);
END Semaforo;

-- Design Ports Information
-- verde	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- talfin	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Semaforo IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL ww_verde : std_logic;
SIGNAL ww_rojo : std_logic;
SIGNAL ww_talfin : std_logic;
SIGNAL \verde~output_o\ : std_logic;
SIGNAL \rojo~output_o\ : std_logic;
SIGNAL \talfin~output_o\ : std_logic;
SIGNAL \clk2~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \verde~0_combout\ : std_logic;
SIGNAL \alarma~input_o\ : std_logic;
SIGNAL \verde$latch~combout\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \rojo~0_combout\ : std_logic;

BEGIN

ww_clk1 <= clk1;
ww_clk2 <= clk2;
ww_enable <= enable;
ww_alarma <= alarma;
verde <= ww_verde;
rojo <= ww_rojo;
talfin <= ww_talfin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X9_Y29_N2
\verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verde$latch~combout\,
	devoe => ww_devoe,
	o => \verde~output_o\);

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X0_Y13_N16
\talfin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \talfin~output_o\);

-- Location: IOIBUF_X0_Y27_N15
\clk2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk2,
	o => \clk2~input_o\);

-- Location: IOIBUF_X35_Y29_N8
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X10_Y28_N10
\verde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verde~0_combout\ = (\clk2~input_o\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2~input_o\,
	datac => \enable~input_o\,
	combout => \verde~0_combout\);

-- Location: IOIBUF_X3_Y29_N29
\alarma~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alarma,
	o => \alarma~input_o\);

-- Location: LCCOMB_X10_Y28_N20
\verde$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verde$latch~combout\ = (\alarma~input_o\ & ((\verde$latch~combout\))) # (!\alarma~input_o\ & (\verde~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verde~0_combout\,
	datac => \alarma~input_o\,
	datad => \verde$latch~combout\,
	combout => \verde$latch~combout\);

-- Location: IOIBUF_X5_Y29_N29
\clk1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: LCCOMB_X10_Y28_N24
\rojo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rojo~0_combout\ = (\clk1~input_o\ & ((\alarma~input_o\) # (!\enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1~input_o\,
	datab => \enable~input_o\,
	datac => \alarma~input_o\,
	combout => \rojo~0_combout\);

ww_verde <= \verde~output_o\;

ww_rojo <= \rojo~output_o\;

ww_talfin <= \talfin~output_o\;
END structure;


