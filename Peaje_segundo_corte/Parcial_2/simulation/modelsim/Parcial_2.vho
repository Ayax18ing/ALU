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

-- DATE "05/10/2024 10:32:02"

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

ENTITY 	Parcial_2 IS
    PORT (
	S_Ha : IN std_logic;
	F_sen : IN std_logic;
	B_sen : IN std_logic;
	Boton_int : IN std_logic;
	CLK : IN std_logic;
	reset : IN std_logic;
	Ca_iden : IN std_logic_vector(1 DOWNTO 0);
	Id_iden : IN std_logic_vector(2 DOWNTO 0);
	Sem_Ini : OUT std_logic;
	Sem_Fin : OUT std_logic;
	Tal_Ini : OUT std_logic;
	Tal_Fin : OUT std_logic;
	Alm : OUT std_logic;
	Cont_V : OUT std_logic;
	Cont_T : OUT std_logic;
	Cont_D : OUT std_logic
	);
END Parcial_2;

-- Design Ports Information
-- Id_iden[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Id_iden[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Id_iden[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem_Ini	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sem_Fin	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tal_Ini	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tal_Fin	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alm	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cont_V	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cont_T	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cont_D	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_sen	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Boton_int	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_Ha	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_sen	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ca_iden[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ca_iden[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Parcial_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S_Ha : std_logic;
SIGNAL ww_F_sen : std_logic;
SIGNAL ww_B_sen : std_logic;
SIGNAL ww_Boton_int : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Ca_iden : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Id_iden : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Sem_Ini : std_logic;
SIGNAL ww_Sem_Fin : std_logic;
SIGNAL ww_Tal_Ini : std_logic;
SIGNAL ww_Tal_Fin : std_logic;
SIGNAL ww_Alm : std_logic;
SIGNAL ww_Cont_V : std_logic;
SIGNAL ww_Cont_T : std_logic;
SIGNAL ww_Cont_D : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector20~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Id_iden[0]~input_o\ : std_logic;
SIGNAL \Id_iden[1]~input_o\ : std_logic;
SIGNAL \Id_iden[2]~input_o\ : std_logic;
SIGNAL \Sem_Ini~output_o\ : std_logic;
SIGNAL \Sem_Fin~output_o\ : std_logic;
SIGNAL \Tal_Ini~output_o\ : std_logic;
SIGNAL \Tal_Fin~output_o\ : std_logic;
SIGNAL \Alm~output_o\ : std_logic;
SIGNAL \Cont_V~output_o\ : std_logic;
SIGNAL \Cont_T~output_o\ : std_logic;
SIGNAL \Cont_D~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Boton_int~input_o\ : std_logic;
SIGNAL \Ca_iden[0]~input_o\ : std_logic;
SIGNAL \Ca_iden[1]~input_o\ : std_logic;
SIGNAL \F_sen~input_o\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~0clkctrl_outclk\ : std_logic;
SIGNAL \S_Ha~input_o\ : std_logic;
SIGNAL \B_sen~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \next_state.alerta_307~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.alerta~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \next_state.exito_273~combout\ : std_logic;
SIGNAL \current_state.exito~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \next_state.Ini_392~combout\ : std_logic;
SIGNAL \current_state.Ini~0_combout\ : std_logic;
SIGNAL \current_state.Ini~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \next_state.paso_375~combout\ : std_logic;
SIGNAL \current_state.paso~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \next_state.intento1_358~combout\ : std_logic;
SIGNAL \current_state.intento1~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \next_state.intento2_341~combout\ : std_logic;
SIGNAL \current_state.intento2~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \next_state.intento3_324~combout\ : std_logic;
SIGNAL \current_state.intento3~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \next_state.cobro_290~combout\ : std_logic;
SIGNAL \current_state.cobro~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Sem_Ini$latch~combout\ : std_logic;
SIGNAL \Cont_T~0_combout\ : std_logic;
SIGNAL \Sem_Fin$latch~combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \Alm~0_combout\ : std_logic;
SIGNAL \Alm$latch~combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \Cont_D$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Cont_T~0_combout\ : std_logic;

BEGIN

ww_S_Ha <= S_Ha;
ww_F_sen <= F_sen;
ww_B_sen <= B_sen;
ww_Boton_int <= Boton_int;
ww_CLK <= CLK;
ww_reset <= reset;
ww_Ca_iden <= Ca_iden;
ww_Id_iden <= Id_iden;
Sem_Ini <= ww_Sem_Ini;
Sem_Fin <= ww_Sem_Fin;
Tal_Ini <= ww_Tal_Ini;
Tal_Fin <= ww_Tal_Fin;
Alm <= ww_Alm;
Cont_V <= ww_Cont_V;
Cont_T <= ww_Cont_T;
Cont_D <= ww_Cont_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\Selector20~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector20~0_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_Cont_T~0_combout\ <= NOT \Cont_T~0_combout\;

-- Location: IOOBUF_X0_Y26_N2
\Sem_Ini~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sem_Ini$latch~combout\,
	devoe => ww_devoe,
	o => \Sem_Ini~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\Sem_Fin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sem_Fin$latch~combout\,
	devoe => ww_devoe,
	o => \Sem_Fin~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\Tal_Ini~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sem_Ini$latch~combout\,
	devoe => ww_devoe,
	o => \Tal_Ini~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\Tal_Fin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sem_Fin$latch~combout\,
	devoe => ww_devoe,
	o => \Tal_Fin~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\Alm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Alm$latch~combout\,
	devoe => ww_devoe,
	o => \Alm~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\Cont_V~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sem_Ini$latch~combout\,
	devoe => ww_devoe,
	o => \Cont_V~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Cont_T~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Cont_T~0_combout\,
	devoe => ww_devoe,
	o => \Cont_T~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\Cont_D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cont_D$latch~combout\,
	devoe => ww_devoe,
	o => \Cont_D~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N1
\Boton_int~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Boton_int,
	o => \Boton_int~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\Ca_iden[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ca_iden(0),
	o => \Ca_iden[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\Ca_iden[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ca_iden(1),
	o => \Ca_iden[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\F_sen~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_sen,
	o => \F_sen~input_o\);

-- Location: LCCOMB_X1_Y23_N8
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Boton_int~input_o\) # ((!\current_state.intento1~q\ & (!\current_state.intento2~q\ & !\current_state.intento3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.intento1~q\,
	datab => \current_state.intento2~q\,
	datac => \Boton_int~input_o\,
	datad => \current_state.intento3~q\,
	combout => \Selector20~0_combout\);

-- Location: CLKCTRL_G0
\Selector20~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector20~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector20~0clkctrl_outclk\);

-- Location: IOIBUF_X0_Y22_N22
\S_Ha~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S_Ha,
	o => \S_Ha~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B_sen~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_sen,
	o => \B_sen~input_o\);

-- Location: LCCOMB_X1_Y23_N14
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Boton_int~input_o\ & (!\Ca_iden[1]~input_o\ & (!\Ca_iden[0]~input_o\ & \current_state.intento3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Boton_int~input_o\,
	datab => \Ca_iden[1]~input_o\,
	datac => \Ca_iden[0]~input_o\,
	datad => \current_state.intento3~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\next_state.alerta_307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.alerta_307~combout\ = (GLOBAL(\Selector20~0clkctrl_outclk\) & ((\Selector7~0_combout\))) # (!GLOBAL(\Selector20~0clkctrl_outclk\) & (\next_state.alerta_307~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.alerta_307~combout\,
	datac => \Selector7~0_combout\,
	datad => \Selector20~0clkctrl_outclk\,
	combout => \next_state.alerta_307~combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y23_N7
\current_state.alerta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.alerta_307~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.alerta~q\);

-- Location: LCCOMB_X2_Y23_N10
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current_state.cobro~q\) # ((\current_state.alerta~q\) # ((\current_state.exito~q\ & !\B_sen~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.cobro~q\,
	datab => \current_state.exito~q\,
	datac => \current_state.alerta~q\,
	datad => \B_sen~input_o\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X2_Y23_N18
\next_state.exito_273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.exito_273~combout\ = (GLOBAL(\Selector20~0clkctrl_outclk\) & ((\Selector15~0_combout\))) # (!GLOBAL(\Selector20~0clkctrl_outclk\) & (\next_state.exito_273~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.exito_273~combout\,
	datac => \Selector20~0clkctrl_outclk\,
	datad => \Selector15~0_combout\,
	combout => \next_state.exito_273~combout\);

-- Location: FF_X2_Y23_N19
\current_state.exito\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \next_state.exito_273~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.exito~q\);

-- Location: LCCOMB_X2_Y23_N30
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\B_sen~input_o\ & ((\current_state.exito~q\) # ((!\S_Ha~input_o\ & !\current_state.Ini~q\)))) # (!\B_sen~input_o\ & (((!\S_Ha~input_o\ & !\current_state.Ini~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_sen~input_o\,
	datab => \current_state.exito~q\,
	datac => \S_Ha~input_o\,
	datad => \current_state.Ini~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X2_Y23_N24
\next_state.Ini_392\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.Ini_392~combout\ = (GLOBAL(\Selector20~0clkctrl_outclk\) & ((\Selector2~0_combout\))) # (!GLOBAL(\Selector20~0clkctrl_outclk\) & (\next_state.Ini_392~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.Ini_392~combout\,
	datac => \Selector20~0clkctrl_outclk\,
	datad => \Selector2~0_combout\,
	combout => \next_state.Ini_392~combout\);

-- Location: LCCOMB_X2_Y23_N6
\current_state.Ini~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.Ini~0_combout\ = !\next_state.Ini_392~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.Ini_392~combout\,
	combout => \current_state.Ini~0_combout\);

-- Location: FF_X2_Y23_N7
\current_state.Ini\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \current_state.Ini~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.Ini~q\);

-- Location: LCCOMB_X2_Y23_N8
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\S_Ha~input_o\ & (((!\F_sen~input_o\ & \current_state.paso~q\)) # (!\current_state.Ini~q\))) # (!\S_Ha~input_o\ & (!\F_sen~input_o\ & (\current_state.paso~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_Ha~input_o\,
	datab => \F_sen~input_o\,
	datac => \current_state.paso~q\,
	datad => \current_state.Ini~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X2_Y23_N28
\next_state.paso_375\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.paso_375~combout\ = (GLOBAL(\Selector20~0clkctrl_outclk\) & ((\Selector3~0_combout\))) # (!GLOBAL(\Selector20~0clkctrl_outclk\) & (\next_state.paso_375~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.paso_375~combout\,
	datac => \Selector20~0clkctrl_outclk\,
	datad => \Selector3~0_combout\,
	combout => \next_state.paso_375~combout\);

-- Location: FF_X2_Y23_N29
\current_state.paso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \next_state.paso_375~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.paso~q\);

-- Location: LCCOMB_X2_Y23_N16
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\F_sen~input_o\ & \current_state.paso~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_sen~input_o\,
	datad => \current_state.paso~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\next_state.intento1_358\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.intento1_358~combout\ = (GLOBAL(\Selector20~0clkctrl_outclk\) & ((\Selector4~0_combout\))) # (!GLOBAL(\Selector20~0clkctrl_outclk\) & (\next_state.intento1_358~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.intento1_358~combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector20~0clkctrl_outclk\,
	combout => \next_state.intento1_358~combout\);

-- Location: FF_X1_Y23_N27
\current_state.intento1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \next_state.intento1_358~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.intento1~q\);

-- Location: LCCOMB_X1_Y23_N2
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Boton_int~input_o\ & (!\Ca_iden[0]~input_o\ & (!\Ca_iden[1]~input_o\ & \current_state.intento1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Boton_int~input_o\,
	datab => \Ca_iden[0]~input_o\,
	datac => \Ca_iden[1]~input_o\,
	datad => \current_state.intento1~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X1_Y23_N16
\next_state.intento2_341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.intento2_341~combout\ = (GLOBAL(\Selector20~0clkctrl_outclk\) & ((\Selector5~0_combout\))) # (!GLOBAL(\Selector20~0clkctrl_outclk\) & (\next_state.intento2_341~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.intento2_341~combout\,
	datac => \Selector5~0_combout\,
	datad => \Selector20~0clkctrl_outclk\,
	combout => \next_state.intento2_341~combout\);

-- Location: FF_X1_Y23_N17
\current_state.intento2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \next_state.intento2_341~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.intento2~q\);

-- Location: LCCOMB_X1_Y23_N12
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Boton_int~input_o\ & (!\Ca_iden[0]~input_o\ & (!\Ca_iden[1]~input_o\ & \current_state.intento2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Boton_int~input_o\,
	datab => \Ca_iden[0]~input_o\,
	datac => \Ca_iden[1]~input_o\,
	datad => \current_state.intento2~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\next_state.intento3_324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.intento3_324~combout\ = (GLOBAL(\Selector20~0clkctrl_outclk\) & ((\Selector6~0_combout\))) # (!GLOBAL(\Selector20~0clkctrl_outclk\) & (\next_state.intento3_324~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.intento3_324~combout\,
	datac => \Selector6~0_combout\,
	datad => \Selector20~0clkctrl_outclk\,
	combout => \next_state.intento3_324~combout\);

-- Location: FF_X1_Y23_N21
\current_state.intento3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \next_state.intento3_324~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.intento3~q\);

-- Location: LCCOMB_X1_Y23_N22
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ((\Ca_iden[1]~input_o\) # (\Ca_iden[0]~input_o\)) # (!\Boton_int~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Boton_int~input_o\,
	datac => \Ca_iden[1]~input_o\,
	datad => \Ca_iden[0]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\ & ((\current_state.intento3~q\) # ((\current_state.intento2~q\) # (\current_state.intento1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.intento3~q\,
	datab => \Selector8~0_combout\,
	datac => \current_state.intento2~q\,
	datad => \current_state.intento1~q\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X1_Y23_N4
\next_state.cobro_290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.cobro_290~combout\ = (GLOBAL(\Selector20~0clkctrl_outclk\) & (\Selector8~1_combout\)) # (!GLOBAL(\Selector20~0clkctrl_outclk\) & ((\next_state.cobro_290~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~1_combout\,
	datac => \next_state.cobro_290~combout\,
	datad => \Selector20~0clkctrl_outclk\,
	combout => \next_state.cobro_290~combout\);

-- Location: FF_X1_Y23_N5
\current_state.cobro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \next_state.cobro_290~combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.cobro~q\);

-- Location: LCCOMB_X2_Y23_N22
WideOr4 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\current_state.cobro~q\) # ((\current_state.alerta~q\) # (\current_state.exito~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.cobro~q\,
	datac => \current_state.alerta~q\,
	datad => \current_state.exito~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X2_Y23_N14
\Sem_Ini$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem_Ini$latch~combout\ = (\WideOr4~combout\ & (\Sem_Ini$latch~combout\)) # (!\WideOr4~combout\ & ((\current_state.paso~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sem_Ini$latch~combout\,
	datac => \WideOr4~combout\,
	datad => \current_state.paso~q\,
	combout => \Sem_Ini$latch~combout\);

-- Location: LCCOMB_X2_Y23_N26
\Cont_T~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont_T~0_combout\ = (\current_state.exito~q\) # (!\current_state.Ini~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.Ini~q\,
	datad => \current_state.exito~q\,
	combout => \Cont_T~0_combout\);

-- Location: LCCOMB_X2_Y23_N4
\Sem_Fin$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sem_Fin$latch~combout\ = (\Cont_T~0_combout\ & ((\current_state.exito~q\))) # (!\Cont_T~0_combout\ & (\Sem_Fin$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sem_Fin$latch~combout\,
	datac => \Cont_T~0_combout\,
	datad => \current_state.exito~q\,
	combout => \Sem_Fin$latch~combout\);

-- Location: LCCOMB_X2_Y23_N20
WideOr7 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\current_state.paso~q\) # ((\current_state.cobro~q\) # (\current_state.exito~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.paso~q\,
	datac => \current_state.cobro~q\,
	datad => \current_state.exito~q\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X1_Y23_N18
\Alm~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alm~0_combout\ = (\current_state.alerta~q\) # (\current_state.intento3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.alerta~q\,
	datad => \current_state.intento3~q\,
	combout => \Alm~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\Alm$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Alm$latch~combout\ = (\WideOr7~combout\ & (\Alm$latch~combout\)) # (!\WideOr7~combout\ & ((\Alm~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alm$latch~combout\,
	datac => \WideOr7~combout\,
	datad => \Alm~0_combout\,
	combout => \Alm$latch~combout\);

-- Location: LCCOMB_X1_Y23_N24
\WideOr8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\current_state.cobro~q\) # (!\current_state.Ini~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.cobro~q\,
	datad => \current_state.Ini~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X1_Y23_N30
\Cont_D$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Cont_D$latch~combout\ = (\WideOr8~0_combout\ & (\current_state.cobro~q\)) # (!\WideOr8~0_combout\ & ((\Cont_D$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.cobro~q\,
	datac => \Cont_D$latch~combout\,
	datad => \WideOr8~0_combout\,
	combout => \Cont_D$latch~combout\);

-- Location: IOIBUF_X32_Y29_N29
\Id_iden[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Id_iden(0),
	o => \Id_iden[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\Id_iden[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Id_iden(1),
	o => \Id_iden[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\Id_iden[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Id_iden(2),
	o => \Id_iden[2]~input_o\);

ww_Sem_Ini <= \Sem_Ini~output_o\;

ww_Sem_Fin <= \Sem_Fin~output_o\;

ww_Tal_Ini <= \Tal_Ini~output_o\;

ww_Tal_Fin <= \Tal_Fin~output_o\;

ww_Alm <= \Alm~output_o\;

ww_Cont_V <= \Cont_V~output_o\;

ww_Cont_T <= \Cont_T~output_o\;

ww_Cont_D <= \Cont_D~output_o\;
END structure;


