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

-- DATE "03/19/2024 17:28:06"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador_vehiculos IS
    PORT (
	CLK : IN std_logic;
	count : OUT std_logic_vector(5 DOWNTO 0);
	min : OUT std_logic
	);
END contador_vehiculos;

-- Design Ports Information
-- CLK	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contador_vehiculos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_count : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_min : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \min~output_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
count <= ww_count;
min <= ww_min;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y21_N9
\count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\count[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\count[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \count[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\min~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \min~output_o\);

-- Location: IOIBUF_X0_Y22_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;

ww_min <= \min~output_o\;
END structure;


