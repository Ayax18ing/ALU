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

-- DATE "03/15/2024 19:25:37"

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

ENTITY 	Back_sensor IS
    PORT (
	Senssal : IN std_logic;
	StopTime : OUT std_logic;
	ResetTime : OUT std_logic
	);
END Back_sensor;

-- Design Ports Information
-- Senssal	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- StopTime	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResetTime	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Back_sensor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Senssal : std_logic;
SIGNAL ww_StopTime : std_logic;
SIGNAL ww_ResetTime : std_logic;
SIGNAL \Senssal~input_o\ : std_logic;
SIGNAL \StopTime~output_o\ : std_logic;
SIGNAL \ResetTime~output_o\ : std_logic;

BEGIN

ww_Senssal <= Senssal;
StopTime <= ww_StopTime;
ResetTime <= ww_ResetTime;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X41_Y25_N9
\StopTime~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \StopTime~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\ResetTime~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ResetTime~output_o\);

-- Location: IOIBUF_X41_Y21_N22
\Senssal~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Senssal,
	o => \Senssal~input_o\);

ww_StopTime <= \StopTime~output_o\;

ww_ResetTime <= \ResetTime~output_o\;
END structure;


