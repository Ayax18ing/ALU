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

-- DATE "03/14/2024 16:24:52"

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

ENTITY 	Front_sensor IS
    PORT (
	Button : IN std_logic;
	b : IN std_logic_vector(4 DOWNTO 0);
	Sens : IN std_logic;
	alarma : OUT std_logic;
	cont_vehiculo : OUT std_logic;
	cont_dinero : OUT std_logic;
	EN_salida : OUT std_logic;
	Senal_cerrado : OUT std_logic
	);
END Front_sensor;

-- Design Ports Information
-- b[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont_vehiculo	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont_dinero	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_salida	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Senal_cerrado	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Button	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sens	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Front_sensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Button : std_logic;
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Sens : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL ww_cont_vehiculo : std_logic;
SIGNAL ww_cont_dinero : std_logic;
SIGNAL ww_EN_salida : std_logic;
SIGNAL ww_Senal_cerrado : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \Button~input_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \cont_vehiculo~output_o\ : std_logic;
SIGNAL \cont_dinero~output_o\ : std_logic;
SIGNAL \EN_salida~output_o\ : std_logic;
SIGNAL \Senal_cerrado~output_o\ : std_logic;
SIGNAL \Sens~input_o\ : std_logic;
SIGNAL \ALT_INV_Sens~input_o\ : std_logic;

BEGIN

ww_Button <= Button;
ww_b <= b;
ww_Sens <= Sens;
alarma <= ww_alarma;
cont_vehiculo <= ww_cont_vehiculo;
cont_dinero <= ww_cont_dinero;
EN_salida <= ww_EN_salida;
Senal_cerrado <= ww_Senal_cerrado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Sens~input_o\ <= NOT \Sens~input_o\;

-- Location: IOOBUF_X0_Y26_N23
\alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\cont_vehiculo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Sens~input_o\,
	devoe => ww_devoe,
	o => \cont_vehiculo~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\cont_dinero~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cont_dinero~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\EN_salida~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EN_salida~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\Senal_cerrado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Senal_cerrado~output_o\);

-- Location: IOIBUF_X0_Y13_N22
\Sens~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sens,
	o => \Sens~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\b[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\Button~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button,
	o => \Button~input_o\);

ww_alarma <= \alarma~output_o\;

ww_cont_vehiculo <= \cont_vehiculo~output_o\;

ww_cont_dinero <= \cont_dinero~output_o\;

ww_EN_salida <= \EN_salida~output_o\;

ww_Senal_cerrado <= \Senal_cerrado~output_o\;
END structure;


