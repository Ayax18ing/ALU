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

-- DATE "03/18/2024 12:49:15"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sem_ini IS
    PORT (
	BtnIn : IN std_logic;
	SensSemIni : IN std_logic;
	ResetEnable : IN std_logic;
	Verde : OUT std_logic;
	Rojo : OUT std_logic;
	EnableTime : BUFFER std_logic;
	TalIni : OUT std_logic
	);
END Sem_ini;

-- Design Ports Information
-- Verde	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rojo	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EnableTime	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TalIni	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BtnIn	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResetEnable	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SensSemIni	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sem_ini IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BtnIn : std_logic;
SIGNAL ww_SensSemIni : std_logic;
SIGNAL ww_ResetEnable : std_logic;
SIGNAL ww_Verde : std_logic;
SIGNAL ww_Rojo : std_logic;
SIGNAL ww_EnableTime : std_logic;
SIGNAL ww_TalIni : std_logic;
SIGNAL \BtnIn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Verde~output_o\ : std_logic;
SIGNAL \Rojo~output_o\ : std_logic;
SIGNAL \EnableTime~output_o\ : std_logic;
SIGNAL \TalIni~output_o\ : std_logic;
SIGNAL \SensSemIni~input_o\ : std_logic;
SIGNAL \ResetEnable~input_o\ : std_logic;
SIGNAL \Paso~combout\ : std_logic;
SIGNAL \BtnIn~input_o\ : std_logic;
SIGNAL \BtnIn~inputclkctrl_outclk\ : std_logic;
SIGNAL \Button~feeder_combout\ : std_logic;
SIGNAL \Button~q\ : std_logic;
SIGNAL \Talanquera~0_combout\ : std_logic;
SIGNAL \EnableTime~reg0feeder_combout\ : std_logic;
SIGNAL \EnableTime~reg0_q\ : std_logic;
SIGNAL \ALT_INV_BtnIn~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Talanquera~0_combout\ : std_logic;

BEGIN

ww_BtnIn <= BtnIn;
ww_SensSemIni <= SensSemIni;
ww_ResetEnable <= ResetEnable;
Verde <= ww_Verde;
Rojo <= ww_Rojo;
EnableTime <= ww_EnableTime;
TalIni <= ww_TalIni;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\BtnIn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BtnIn~input_o\);
\ALT_INV_BtnIn~inputclkctrl_outclk\ <= NOT \BtnIn~inputclkctrl_outclk\;
\ALT_INV_Talanquera~0_combout\ <= NOT \Talanquera~0_combout\;

-- Location: IOOBUF_X0_Y27_N9
\Verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Talanquera~0_combout\,
	devoe => ww_devoe,
	o => \Verde~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\Rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Talanquera~0_combout\,
	devoe => ww_devoe,
	o => \Rojo~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\EnableTime~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EnableTime~reg0_q\,
	devoe => ww_devoe,
	o => \EnableTime~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\TalIni~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Talanquera~0_combout\,
	devoe => ww_devoe,
	o => \TalIni~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\SensSemIni~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SensSemIni,
	o => \SensSemIni~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\ResetEnable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResetEnable,
	o => \ResetEnable~input_o\);

-- Location: LCCOMB_X1_Y26_N22
Paso : cycloneiii_lcell_comb
-- Equation(s):
-- \Paso~combout\ = (\ResetEnable~input_o\ & (\SensSemIni~input_o\)) # (!\ResetEnable~input_o\ & ((\Paso~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SensSemIni~input_o\,
	datac => \Paso~combout\,
	datad => \ResetEnable~input_o\,
	combout => \Paso~combout\);

-- Location: IOIBUF_X0_Y14_N1
\BtnIn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BtnIn,
	o => \BtnIn~input_o\);

-- Location: CLKCTRL_G4
\BtnIn~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BtnIn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BtnIn~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y26_N12
\Button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Button~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Button~feeder_combout\);

-- Location: FF_X1_Y26_N13
Button : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BtnIn~inputclkctrl_outclk\,
	d => \Button~feeder_combout\,
	clrn => \ResetEnable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Button~q\);

-- Location: LCCOMB_X1_Y26_N30
\Talanquera~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Talanquera~0_combout\ = (\Paso~combout\ & \Button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Paso~combout\,
	datad => \Button~q\,
	combout => \Talanquera~0_combout\);

-- Location: LCCOMB_X1_Y26_N16
\EnableTime~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableTime~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \EnableTime~reg0feeder_combout\);

-- Location: FF_X1_Y26_N17
\EnableTime~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_BtnIn~inputclkctrl_outclk\,
	d => \EnableTime~reg0feeder_combout\,
	clrn => \ResetEnable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EnableTime~reg0_q\);

ww_Verde <= \Verde~output_o\;

ww_Rojo <= \Rojo~output_o\;

ww_EnableTime <= \EnableTime~output_o\;

ww_TalIni <= \TalIni~output_o\;
END structure;


