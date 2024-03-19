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

-- DATE "03/19/2024 11:57:33"

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

ENTITY 	Peaje IS
    PORT (
	CLK : IN std_logic;
	Sens_Front : IN std_logic;
	Sens_Back : IN std_logic;
	Butt_sema : IN std_logic;
	Butt_inten : IN std_logic;
	Butt_reset_manual : IN std_logic;
	Cat_ID : IN std_logic_vector(4 DOWNTO 0);
	Sema_ini_verde : OUT std_logic;
	Sema_ini_rojo : OUT std_logic;
	Sema_fin_verde : OUT std_logic;
	Sema_fin_rojo : OUT std_logic;
	Tal_ini : OUT std_logic;
	Tal_fin : OUT std_logic;
	Alarma : OUT std_logic;
	dinero : OUT std_logic_vector(4 DOWNTO 0)
	);
END Peaje;

-- Design Ports Information
-- Butt_reset_manual	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cat_ID[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cat_ID[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cat_ID[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sema_ini_verde	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sema_ini_rojo	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sema_fin_verde	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sema_fin_rojo	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tal_ini	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Tal_fin	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Alarma	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero[2]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Butt_sema	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sens_Front	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cat_ID[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cat_ID[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Butt_inten	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sens_Back	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Peaje IS
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
SIGNAL ww_Sens_Front : std_logic;
SIGNAL ww_Sens_Back : std_logic;
SIGNAL ww_Butt_sema : std_logic;
SIGNAL ww_Butt_inten : std_logic;
SIGNAL ww_Butt_reset_manual : std_logic;
SIGNAL ww_Cat_ID : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Sema_ini_verde : std_logic;
SIGNAL ww_Sema_ini_rojo : std_logic;
SIGNAL ww_Sema_fin_verde : std_logic;
SIGNAL ww_Sema_fin_rojo : std_logic;
SIGNAL ww_Tal_ini : std_logic;
SIGNAL ww_Tal_fin : std_logic;
SIGNAL ww_Alarma : std_logic;
SIGNAL ww_dinero : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Divisor_frecuencias|out2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Butt_reset_manual~input_o\ : std_logic;
SIGNAL \Cat_ID[2]~input_o\ : std_logic;
SIGNAL \Cat_ID[3]~input_o\ : std_logic;
SIGNAL \Cat_ID[4]~input_o\ : std_logic;
SIGNAL \Sema_ini_verde~output_o\ : std_logic;
SIGNAL \Sema_ini_rojo~output_o\ : std_logic;
SIGNAL \Sema_fin_verde~output_o\ : std_logic;
SIGNAL \Sema_fin_rojo~output_o\ : std_logic;
SIGNAL \Tal_ini~output_o\ : std_logic;
SIGNAL \Tal_fin~output_o\ : std_logic;
SIGNAL \Alarma~output_o\ : std_logic;
SIGNAL \dinero[0]~output_o\ : std_logic;
SIGNAL \dinero[1]~output_o\ : std_logic;
SIGNAL \dinero[2]~output_o\ : std_logic;
SIGNAL \dinero[3]~output_o\ : std_logic;
SIGNAL \dinero[4]~output_o\ : std_logic;
SIGNAL \Butt_sema~input_o\ : std_logic;
SIGNAL \Semaforo_Talanquera_inical|Button~feeder_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~5_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~1\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~2_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~3\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~4_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~5\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~6_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~7\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~8_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~9\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~10_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~11\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~12_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~4_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~13\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~14_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~15\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~16_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~17\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~18_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~19\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~20_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~21\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~22_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~3_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~23\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~24_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~2_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~25\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~26_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~1_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~27\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~28_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~29\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~30_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~31\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~32_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~6_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~33\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~34_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~35\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~36_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~7_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~37\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~38_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~8_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~39\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~40_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~10_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~41\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~42_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~11_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~43\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~44_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~12_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~45\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~46_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~47\ : std_logic;
SIGNAL \Divisor_frecuencias|Add1~48_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2~9_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal1~5_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal1~6_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal1~3_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal1~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal1~1_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal1~2_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal1~4_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal1~7_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|out2~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|out2~feeder_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|out2~q\ : std_logic;
SIGNAL \Divisor_frecuencias|out2~clkctrl_outclk\ : std_logic;
SIGNAL \Sens_Back~input_o\ : std_logic;
SIGNAL \Back_sensor_funcion|cnt[1]~0_combout\ : std_logic;
SIGNAL \Back_sensor_funcion|cnt[0]~1_combout\ : std_logic;
SIGNAL \Back_sensor_funcion|Pul_reset~0_combout\ : std_logic;
SIGNAL \Back_sensor_funcion|Pul_reset~q\ : std_logic;
SIGNAL \Semaforo_Talanquera_inical|Button~q\ : std_logic;
SIGNAL \Sens_Front~input_o\ : std_logic;
SIGNAL \Cat_ID[1]~input_o\ : std_logic;
SIGNAL \Cat_ID[0]~input_o\ : std_logic;
SIGNAL \Front_sensor_funcion|Equal0~0_combout\ : std_logic;
SIGNAL \Butt_inten~input_o\ : std_logic;
SIGNAL \Front_sensor_funcion|Detector:deten_pro~0_combout\ : std_logic;
SIGNAL \Front_sensor_funcion|Detector:deten_pro~combout\ : std_logic;
SIGNAL \Front_sensor_funcion|cerrado~0_combout\ : std_logic;
SIGNAL \Front_sensor_funcion|cerrado~q\ : std_logic;
SIGNAL \Semaforo_Talanquera_inical|Paso~combout\ : std_logic;
SIGNAL \Semaforo_Talanquera_inical|TalIni~combout\ : std_logic;
SIGNAL \Semaforo_Talanquera_final|verde~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~1\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~2_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~3\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~4_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~5\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~6_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~7\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~8_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~9\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~10_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~11\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~12_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~13\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~14_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~1_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~15\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~16_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~17\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~18_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~19\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~20_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~21\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~22_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~23\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~24_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~2_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~25\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~26_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~3_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~27\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~28_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~4_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~29\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~30_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~5_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~31\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~32_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~33\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~34_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~6_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~35\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~36_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~37\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~38_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~7_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~39\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~40_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~8_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~41\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~42_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~9_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~43\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~44_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~10_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~45\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~46_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~11_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~6_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~47\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~48_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~49\ : std_logic;
SIGNAL \Divisor_frecuencias|Add0~50_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count1~12_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~7_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~5_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~1_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~3_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~2_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~4_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|Equal0~8_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|out1~0_combout\ : std_logic;
SIGNAL \Divisor_frecuencias|out1~q\ : std_logic;
SIGNAL \Semaforo_Talanquera_final|rojo~combout\ : std_logic;
SIGNAL \Front_sensor_funcion|Detector:var_alarma~0_combout\ : std_logic;
SIGNAL \Front_sensor_funcion|Detector:var_alarma~combout\ : std_logic;
SIGNAL \Divisor_frecuencias|count2\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \Divisor_frecuencias|count1\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Back_sensor_funcion|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Sens_Front~input_o\ : std_logic;
SIGNAL \ALT_INV_Butt_sema~input_o\ : std_logic;
SIGNAL \Back_sensor_funcion|ALT_INV_Pul_reset~q\ : std_logic;
SIGNAL \Semaforo_Talanquera_inical|ALT_INV_TalIni~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_Sens_Front <= Sens_Front;
ww_Sens_Back <= Sens_Back;
ww_Butt_sema <= Butt_sema;
ww_Butt_inten <= Butt_inten;
ww_Butt_reset_manual <= Butt_reset_manual;
ww_Cat_ID <= Cat_ID;
Sema_ini_verde <= ww_Sema_ini_verde;
Sema_ini_rojo <= ww_Sema_ini_rojo;
Sema_fin_verde <= ww_Sema_fin_verde;
Sema_fin_rojo <= ww_Sema_fin_rojo;
Tal_ini <= ww_Tal_ini;
Tal_fin <= ww_Tal_fin;
Alarma <= ww_Alarma;
dinero <= ww_dinero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\Divisor_frecuencias|out2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Divisor_frecuencias|out2~q\);
\ALT_INV_Sens_Front~input_o\ <= NOT \Sens_Front~input_o\;
\ALT_INV_Butt_sema~input_o\ <= NOT \Butt_sema~input_o\;
\Back_sensor_funcion|ALT_INV_Pul_reset~q\ <= NOT \Back_sensor_funcion|Pul_reset~q\;
\Semaforo_Talanquera_inical|ALT_INV_TalIni~combout\ <= NOT \Semaforo_Talanquera_inical|TalIni~combout\;

-- Location: IOOBUF_X41_Y20_N23
\Sema_ini_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Semaforo_Talanquera_inical|TalIni~combout\,
	devoe => ww_devoe,
	o => \Sema_ini_verde~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\Sema_ini_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Semaforo_Talanquera_inical|ALT_INV_TalIni~combout\,
	devoe => ww_devoe,
	o => \Sema_ini_rojo~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\Sema_fin_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Semaforo_Talanquera_final|verde~0_combout\,
	devoe => ww_devoe,
	o => \Sema_fin_verde~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\Sema_fin_rojo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Semaforo_Talanquera_final|rojo~combout\,
	devoe => ww_devoe,
	o => \Sema_fin_rojo~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\Tal_ini~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Semaforo_Talanquera_inical|TalIni~combout\,
	devoe => ww_devoe,
	o => \Tal_ini~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\Tal_fin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Front_sensor_funcion|cerrado~q\,
	devoe => ww_devoe,
	o => \Tal_fin~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\Alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Front_sensor_funcion|Detector:var_alarma~combout\,
	devoe => ww_devoe,
	o => \Alarma~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\dinero[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dinero[0]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\dinero[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dinero[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\dinero[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dinero[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\dinero[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dinero[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\dinero[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dinero[4]~output_o\);

-- Location: IOIBUF_X41_Y18_N15
\Butt_sema~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Butt_sema,
	o => \Butt_sema~input_o\);

-- Location: LCCOMB_X40_Y18_N22
\Semaforo_Talanquera_inical|Button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Semaforo_Talanquera_inical|Button~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Semaforo_Talanquera_inical|Button~feeder_combout\);

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

-- Location: LCCOMB_X39_Y3_N8
\Divisor_frecuencias|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~0_combout\ = \Divisor_frecuencias|count2\(0) $ (VCC)
-- \Divisor_frecuencias|Add1~1\ = CARRY(\Divisor_frecuencias|count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(0),
	datad => VCC,
	combout => \Divisor_frecuencias|Add1~0_combout\,
	cout => \Divisor_frecuencias|Add1~1\);

-- Location: LCCOMB_X39_Y3_N6
\Divisor_frecuencias|count2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~5_combout\ = (\Divisor_frecuencias|Add1~0_combout\ & !\Divisor_frecuencias|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Add1~0_combout\,
	datad => \Divisor_frecuencias|Equal1~7_combout\,
	combout => \Divisor_frecuencias|count2~5_combout\);

-- Location: FF_X39_Y3_N7
\Divisor_frecuencias|count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(0));

-- Location: LCCOMB_X39_Y3_N10
\Divisor_frecuencias|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~2_combout\ = (\Divisor_frecuencias|count2\(1) & (!\Divisor_frecuencias|Add1~1\)) # (!\Divisor_frecuencias|count2\(1) & ((\Divisor_frecuencias|Add1~1\) # (GND)))
-- \Divisor_frecuencias|Add1~3\ = CARRY((!\Divisor_frecuencias|Add1~1\) # (!\Divisor_frecuencias|count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(1),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~1\,
	combout => \Divisor_frecuencias|Add1~2_combout\,
	cout => \Divisor_frecuencias|Add1~3\);

-- Location: FF_X39_Y3_N11
\Divisor_frecuencias|count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(1));

-- Location: LCCOMB_X39_Y3_N12
\Divisor_frecuencias|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~4_combout\ = (\Divisor_frecuencias|count2\(2) & (\Divisor_frecuencias|Add1~3\ $ (GND))) # (!\Divisor_frecuencias|count2\(2) & (!\Divisor_frecuencias|Add1~3\ & VCC))
-- \Divisor_frecuencias|Add1~5\ = CARRY((\Divisor_frecuencias|count2\(2) & !\Divisor_frecuencias|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(2),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~3\,
	combout => \Divisor_frecuencias|Add1~4_combout\,
	cout => \Divisor_frecuencias|Add1~5\);

-- Location: FF_X39_Y3_N13
\Divisor_frecuencias|count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(2));

-- Location: LCCOMB_X39_Y3_N14
\Divisor_frecuencias|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~6_combout\ = (\Divisor_frecuencias|count2\(3) & (!\Divisor_frecuencias|Add1~5\)) # (!\Divisor_frecuencias|count2\(3) & ((\Divisor_frecuencias|Add1~5\) # (GND)))
-- \Divisor_frecuencias|Add1~7\ = CARRY((!\Divisor_frecuencias|Add1~5\) # (!\Divisor_frecuencias|count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(3),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~5\,
	combout => \Divisor_frecuencias|Add1~6_combout\,
	cout => \Divisor_frecuencias|Add1~7\);

-- Location: FF_X39_Y3_N15
\Divisor_frecuencias|count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(3));

-- Location: LCCOMB_X39_Y3_N16
\Divisor_frecuencias|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~8_combout\ = (\Divisor_frecuencias|count2\(4) & (\Divisor_frecuencias|Add1~7\ $ (GND))) # (!\Divisor_frecuencias|count2\(4) & (!\Divisor_frecuencias|Add1~7\ & VCC))
-- \Divisor_frecuencias|Add1~9\ = CARRY((\Divisor_frecuencias|count2\(4) & !\Divisor_frecuencias|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(4),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~7\,
	combout => \Divisor_frecuencias|Add1~8_combout\,
	cout => \Divisor_frecuencias|Add1~9\);

-- Location: FF_X39_Y3_N17
\Divisor_frecuencias|count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(4));

-- Location: LCCOMB_X39_Y3_N18
\Divisor_frecuencias|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~10_combout\ = (\Divisor_frecuencias|count2\(5) & (!\Divisor_frecuencias|Add1~9\)) # (!\Divisor_frecuencias|count2\(5) & ((\Divisor_frecuencias|Add1~9\) # (GND)))
-- \Divisor_frecuencias|Add1~11\ = CARRY((!\Divisor_frecuencias|Add1~9\) # (!\Divisor_frecuencias|count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(5),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~9\,
	combout => \Divisor_frecuencias|Add1~10_combout\,
	cout => \Divisor_frecuencias|Add1~11\);

-- Location: FF_X39_Y3_N19
\Divisor_frecuencias|count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(5));

-- Location: LCCOMB_X39_Y3_N20
\Divisor_frecuencias|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~12_combout\ = (\Divisor_frecuencias|count2\(6) & (\Divisor_frecuencias|Add1~11\ $ (GND))) # (!\Divisor_frecuencias|count2\(6) & (!\Divisor_frecuencias|Add1~11\ & VCC))
-- \Divisor_frecuencias|Add1~13\ = CARRY((\Divisor_frecuencias|count2\(6) & !\Divisor_frecuencias|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(6),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~11\,
	combout => \Divisor_frecuencias|Add1~12_combout\,
	cout => \Divisor_frecuencias|Add1~13\);

-- Location: LCCOMB_X39_Y3_N2
\Divisor_frecuencias|count2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~4_combout\ = (\Divisor_frecuencias|Add1~12_combout\ & !\Divisor_frecuencias|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|Add1~12_combout\,
	datad => \Divisor_frecuencias|Equal1~7_combout\,
	combout => \Divisor_frecuencias|count2~4_combout\);

-- Location: FF_X39_Y3_N3
\Divisor_frecuencias|count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(6));

-- Location: LCCOMB_X39_Y3_N22
\Divisor_frecuencias|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~14_combout\ = (\Divisor_frecuencias|count2\(7) & (!\Divisor_frecuencias|Add1~13\)) # (!\Divisor_frecuencias|count2\(7) & ((\Divisor_frecuencias|Add1~13\) # (GND)))
-- \Divisor_frecuencias|Add1~15\ = CARRY((!\Divisor_frecuencias|Add1~13\) # (!\Divisor_frecuencias|count2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(7),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~13\,
	combout => \Divisor_frecuencias|Add1~14_combout\,
	cout => \Divisor_frecuencias|Add1~15\);

-- Location: FF_X39_Y3_N23
\Divisor_frecuencias|count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(7));

-- Location: LCCOMB_X39_Y3_N24
\Divisor_frecuencias|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~16_combout\ = (\Divisor_frecuencias|count2\(8) & (\Divisor_frecuencias|Add1~15\ $ (GND))) # (!\Divisor_frecuencias|count2\(8) & (!\Divisor_frecuencias|Add1~15\ & VCC))
-- \Divisor_frecuencias|Add1~17\ = CARRY((\Divisor_frecuencias|count2\(8) & !\Divisor_frecuencias|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(8),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~15\,
	combout => \Divisor_frecuencias|Add1~16_combout\,
	cout => \Divisor_frecuencias|Add1~17\);

-- Location: FF_X39_Y3_N25
\Divisor_frecuencias|count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(8));

-- Location: LCCOMB_X39_Y3_N26
\Divisor_frecuencias|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~18_combout\ = (\Divisor_frecuencias|count2\(9) & (!\Divisor_frecuencias|Add1~17\)) # (!\Divisor_frecuencias|count2\(9) & ((\Divisor_frecuencias|Add1~17\) # (GND)))
-- \Divisor_frecuencias|Add1~19\ = CARRY((!\Divisor_frecuencias|Add1~17\) # (!\Divisor_frecuencias|count2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(9),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~17\,
	combout => \Divisor_frecuencias|Add1~18_combout\,
	cout => \Divisor_frecuencias|Add1~19\);

-- Location: FF_X39_Y3_N27
\Divisor_frecuencias|count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(9));

-- Location: LCCOMB_X39_Y3_N28
\Divisor_frecuencias|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~20_combout\ = (\Divisor_frecuencias|count2\(10) & (\Divisor_frecuencias|Add1~19\ $ (GND))) # (!\Divisor_frecuencias|count2\(10) & (!\Divisor_frecuencias|Add1~19\ & VCC))
-- \Divisor_frecuencias|Add1~21\ = CARRY((\Divisor_frecuencias|count2\(10) & !\Divisor_frecuencias|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(10),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~19\,
	combout => \Divisor_frecuencias|Add1~20_combout\,
	cout => \Divisor_frecuencias|Add1~21\);

-- Location: FF_X39_Y3_N29
\Divisor_frecuencias|count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(10));

-- Location: LCCOMB_X39_Y3_N30
\Divisor_frecuencias|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~22_combout\ = (\Divisor_frecuencias|count2\(11) & (!\Divisor_frecuencias|Add1~21\)) # (!\Divisor_frecuencias|count2\(11) & ((\Divisor_frecuencias|Add1~21\) # (GND)))
-- \Divisor_frecuencias|Add1~23\ = CARRY((!\Divisor_frecuencias|Add1~21\) # (!\Divisor_frecuencias|count2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(11),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~21\,
	combout => \Divisor_frecuencias|Add1~22_combout\,
	cout => \Divisor_frecuencias|Add1~23\);

-- Location: LCCOMB_X39_Y3_N4
\Divisor_frecuencias|count2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~3_combout\ = (\Divisor_frecuencias|Add1~22_combout\ & !\Divisor_frecuencias|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|Add1~22_combout\,
	datad => \Divisor_frecuencias|Equal1~7_combout\,
	combout => \Divisor_frecuencias|count2~3_combout\);

-- Location: FF_X39_Y3_N5
\Divisor_frecuencias|count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(11));

-- Location: LCCOMB_X39_Y2_N0
\Divisor_frecuencias|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~24_combout\ = (\Divisor_frecuencias|count2\(12) & (\Divisor_frecuencias|Add1~23\ $ (GND))) # (!\Divisor_frecuencias|count2\(12) & (!\Divisor_frecuencias|Add1~23\ & VCC))
-- \Divisor_frecuencias|Add1~25\ = CARRY((\Divisor_frecuencias|count2\(12) & !\Divisor_frecuencias|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(12),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~23\,
	combout => \Divisor_frecuencias|Add1~24_combout\,
	cout => \Divisor_frecuencias|Add1~25\);

-- Location: LCCOMB_X40_Y2_N20
\Divisor_frecuencias|count2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~2_combout\ = (!\Divisor_frecuencias|Equal1~7_combout\ & \Divisor_frecuencias|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal1~7_combout\,
	datad => \Divisor_frecuencias|Add1~24_combout\,
	combout => \Divisor_frecuencias|count2~2_combout\);

-- Location: FF_X40_Y2_N21
\Divisor_frecuencias|count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(12));

-- Location: LCCOMB_X39_Y2_N2
\Divisor_frecuencias|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~26_combout\ = (\Divisor_frecuencias|count2\(13) & (!\Divisor_frecuencias|Add1~25\)) # (!\Divisor_frecuencias|count2\(13) & ((\Divisor_frecuencias|Add1~25\) # (GND)))
-- \Divisor_frecuencias|Add1~27\ = CARRY((!\Divisor_frecuencias|Add1~25\) # (!\Divisor_frecuencias|count2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(13),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~25\,
	combout => \Divisor_frecuencias|Add1~26_combout\,
	cout => \Divisor_frecuencias|Add1~27\);

-- Location: LCCOMB_X40_Y2_N4
\Divisor_frecuencias|count2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~1_combout\ = (!\Divisor_frecuencias|Equal1~7_combout\ & \Divisor_frecuencias|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal1~7_combout\,
	datad => \Divisor_frecuencias|Add1~26_combout\,
	combout => \Divisor_frecuencias|count2~1_combout\);

-- Location: FF_X40_Y2_N5
\Divisor_frecuencias|count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(13));

-- Location: LCCOMB_X39_Y2_N4
\Divisor_frecuencias|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~28_combout\ = (\Divisor_frecuencias|count2\(14) & (\Divisor_frecuencias|Add1~27\ $ (GND))) # (!\Divisor_frecuencias|count2\(14) & (!\Divisor_frecuencias|Add1~27\ & VCC))
-- \Divisor_frecuencias|Add1~29\ = CARRY((\Divisor_frecuencias|count2\(14) & !\Divisor_frecuencias|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(14),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~27\,
	combout => \Divisor_frecuencias|Add1~28_combout\,
	cout => \Divisor_frecuencias|Add1~29\);

-- Location: LCCOMB_X40_Y2_N24
\Divisor_frecuencias|count2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~0_combout\ = (\Divisor_frecuencias|Add1~28_combout\ & !\Divisor_frecuencias|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Add1~28_combout\,
	datad => \Divisor_frecuencias|Equal1~7_combout\,
	combout => \Divisor_frecuencias|count2~0_combout\);

-- Location: FF_X40_Y2_N25
\Divisor_frecuencias|count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(14));

-- Location: LCCOMB_X39_Y2_N6
\Divisor_frecuencias|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~30_combout\ = (\Divisor_frecuencias|count2\(15) & (!\Divisor_frecuencias|Add1~29\)) # (!\Divisor_frecuencias|count2\(15) & ((\Divisor_frecuencias|Add1~29\) # (GND)))
-- \Divisor_frecuencias|Add1~31\ = CARRY((!\Divisor_frecuencias|Add1~29\) # (!\Divisor_frecuencias|count2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(15),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~29\,
	combout => \Divisor_frecuencias|Add1~30_combout\,
	cout => \Divisor_frecuencias|Add1~31\);

-- Location: FF_X39_Y2_N7
\Divisor_frecuencias|count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(15));

-- Location: LCCOMB_X39_Y2_N8
\Divisor_frecuencias|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~32_combout\ = (\Divisor_frecuencias|count2\(16) & (\Divisor_frecuencias|Add1~31\ $ (GND))) # (!\Divisor_frecuencias|count2\(16) & (!\Divisor_frecuencias|Add1~31\ & VCC))
-- \Divisor_frecuencias|Add1~33\ = CARRY((\Divisor_frecuencias|count2\(16) & !\Divisor_frecuencias|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(16),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~31\,
	combout => \Divisor_frecuencias|Add1~32_combout\,
	cout => \Divisor_frecuencias|Add1~33\);

-- Location: LCCOMB_X39_Y2_N26
\Divisor_frecuencias|count2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~6_combout\ = (\Divisor_frecuencias|Add1~32_combout\ & !\Divisor_frecuencias|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Add1~32_combout\,
	datad => \Divisor_frecuencias|Equal1~7_combout\,
	combout => \Divisor_frecuencias|count2~6_combout\);

-- Location: FF_X39_Y2_N27
\Divisor_frecuencias|count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(16));

-- Location: LCCOMB_X39_Y2_N10
\Divisor_frecuencias|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~34_combout\ = (\Divisor_frecuencias|count2\(17) & (!\Divisor_frecuencias|Add1~33\)) # (!\Divisor_frecuencias|count2\(17) & ((\Divisor_frecuencias|Add1~33\) # (GND)))
-- \Divisor_frecuencias|Add1~35\ = CARRY((!\Divisor_frecuencias|Add1~33\) # (!\Divisor_frecuencias|count2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(17),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~33\,
	combout => \Divisor_frecuencias|Add1~34_combout\,
	cout => \Divisor_frecuencias|Add1~35\);

-- Location: FF_X39_Y2_N11
\Divisor_frecuencias|count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(17));

-- Location: LCCOMB_X39_Y2_N12
\Divisor_frecuencias|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~36_combout\ = (\Divisor_frecuencias|count2\(18) & (\Divisor_frecuencias|Add1~35\ $ (GND))) # (!\Divisor_frecuencias|count2\(18) & (!\Divisor_frecuencias|Add1~35\ & VCC))
-- \Divisor_frecuencias|Add1~37\ = CARRY((\Divisor_frecuencias|count2\(18) & !\Divisor_frecuencias|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(18),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~35\,
	combout => \Divisor_frecuencias|Add1~36_combout\,
	cout => \Divisor_frecuencias|Add1~37\);

-- Location: LCCOMB_X39_Y2_N28
\Divisor_frecuencias|count2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~7_combout\ = (!\Divisor_frecuencias|Equal1~7_combout\ & \Divisor_frecuencias|Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|Equal1~7_combout\,
	datad => \Divisor_frecuencias|Add1~36_combout\,
	combout => \Divisor_frecuencias|count2~7_combout\);

-- Location: FF_X39_Y2_N29
\Divisor_frecuencias|count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(18));

-- Location: LCCOMB_X39_Y2_N14
\Divisor_frecuencias|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~38_combout\ = (\Divisor_frecuencias|count2\(19) & (!\Divisor_frecuencias|Add1~37\)) # (!\Divisor_frecuencias|count2\(19) & ((\Divisor_frecuencias|Add1~37\) # (GND)))
-- \Divisor_frecuencias|Add1~39\ = CARRY((!\Divisor_frecuencias|Add1~37\) # (!\Divisor_frecuencias|count2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(19),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~37\,
	combout => \Divisor_frecuencias|Add1~38_combout\,
	cout => \Divisor_frecuencias|Add1~39\);

-- Location: LCCOMB_X40_Y2_N8
\Divisor_frecuencias|count2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~8_combout\ = (!\Divisor_frecuencias|Equal1~7_combout\ & \Divisor_frecuencias|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal1~7_combout\,
	datad => \Divisor_frecuencias|Add1~38_combout\,
	combout => \Divisor_frecuencias|count2~8_combout\);

-- Location: FF_X40_Y2_N9
\Divisor_frecuencias|count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(19));

-- Location: LCCOMB_X39_Y2_N16
\Divisor_frecuencias|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~40_combout\ = (\Divisor_frecuencias|count2\(20) & (\Divisor_frecuencias|Add1~39\ $ (GND))) # (!\Divisor_frecuencias|count2\(20) & (!\Divisor_frecuencias|Add1~39\ & VCC))
-- \Divisor_frecuencias|Add1~41\ = CARRY((\Divisor_frecuencias|count2\(20) & !\Divisor_frecuencias|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count2\(20),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~39\,
	combout => \Divisor_frecuencias|Add1~40_combout\,
	cout => \Divisor_frecuencias|Add1~41\);

-- Location: LCCOMB_X40_Y2_N10
\Divisor_frecuencias|count2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~10_combout\ = (\Divisor_frecuencias|Add1~40_combout\ & !\Divisor_frecuencias|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Add1~40_combout\,
	datad => \Divisor_frecuencias|Equal1~7_combout\,
	combout => \Divisor_frecuencias|count2~10_combout\);

-- Location: FF_X40_Y2_N11
\Divisor_frecuencias|count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(20));

-- Location: LCCOMB_X39_Y2_N18
\Divisor_frecuencias|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~42_combout\ = (\Divisor_frecuencias|count2\(21) & (!\Divisor_frecuencias|Add1~41\)) # (!\Divisor_frecuencias|count2\(21) & ((\Divisor_frecuencias|Add1~41\) # (GND)))
-- \Divisor_frecuencias|Add1~43\ = CARRY((!\Divisor_frecuencias|Add1~41\) # (!\Divisor_frecuencias|count2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(21),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~41\,
	combout => \Divisor_frecuencias|Add1~42_combout\,
	cout => \Divisor_frecuencias|Add1~43\);

-- Location: LCCOMB_X39_Y2_N30
\Divisor_frecuencias|count2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~11_combout\ = (!\Divisor_frecuencias|Equal1~7_combout\ & \Divisor_frecuencias|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|Equal1~7_combout\,
	datad => \Divisor_frecuencias|Add1~42_combout\,
	combout => \Divisor_frecuencias|count2~11_combout\);

-- Location: FF_X39_Y2_N31
\Divisor_frecuencias|count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(21));

-- Location: LCCOMB_X39_Y2_N20
\Divisor_frecuencias|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~44_combout\ = (\Divisor_frecuencias|count2\(22) & (\Divisor_frecuencias|Add1~43\ $ (GND))) # (!\Divisor_frecuencias|count2\(22) & (!\Divisor_frecuencias|Add1~43\ & VCC))
-- \Divisor_frecuencias|Add1~45\ = CARRY((\Divisor_frecuencias|count2\(22) & !\Divisor_frecuencias|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(22),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~43\,
	combout => \Divisor_frecuencias|Add1~44_combout\,
	cout => \Divisor_frecuencias|Add1~45\);

-- Location: LCCOMB_X40_Y2_N2
\Divisor_frecuencias|count2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~12_combout\ = (!\Divisor_frecuencias|Equal1~7_combout\ & \Divisor_frecuencias|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal1~7_combout\,
	datad => \Divisor_frecuencias|Add1~44_combout\,
	combout => \Divisor_frecuencias|count2~12_combout\);

-- Location: FF_X40_Y2_N3
\Divisor_frecuencias|count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(22));

-- Location: LCCOMB_X39_Y2_N22
\Divisor_frecuencias|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~46_combout\ = (\Divisor_frecuencias|count2\(23) & (!\Divisor_frecuencias|Add1~45\)) # (!\Divisor_frecuencias|count2\(23) & ((\Divisor_frecuencias|Add1~45\) # (GND)))
-- \Divisor_frecuencias|Add1~47\ = CARRY((!\Divisor_frecuencias|Add1~45\) # (!\Divisor_frecuencias|count2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(23),
	datad => VCC,
	cin => \Divisor_frecuencias|Add1~45\,
	combout => \Divisor_frecuencias|Add1~46_combout\,
	cout => \Divisor_frecuencias|Add1~47\);

-- Location: FF_X39_Y2_N23
\Divisor_frecuencias|count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(23));

-- Location: LCCOMB_X39_Y2_N24
\Divisor_frecuencias|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add1~48_combout\ = \Divisor_frecuencias|Add1~47\ $ (!\Divisor_frecuencias|count2\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Divisor_frecuencias|count2\(24),
	cin => \Divisor_frecuencias|Add1~47\,
	combout => \Divisor_frecuencias|Add1~48_combout\);

-- Location: LCCOMB_X40_Y2_N22
\Divisor_frecuencias|count2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count2~9_combout\ = (!\Divisor_frecuencias|Equal1~7_combout\ & \Divisor_frecuencias|Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal1~7_combout\,
	datad => \Divisor_frecuencias|Add1~48_combout\,
	combout => \Divisor_frecuencias|count2~9_combout\);

-- Location: FF_X40_Y2_N23
\Divisor_frecuencias|count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count2\(24));

-- Location: LCCOMB_X40_Y2_N28
\Divisor_frecuencias|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal1~5_combout\ = (\Divisor_frecuencias|count2\(16) & (\Divisor_frecuencias|count2\(18) & (\Divisor_frecuencias|count2\(19) & !\Divisor_frecuencias|count2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(16),
	datab => \Divisor_frecuencias|count2\(18),
	datac => \Divisor_frecuencias|count2\(19),
	datad => \Divisor_frecuencias|count2\(17),
	combout => \Divisor_frecuencias|Equal1~5_combout\);

-- Location: LCCOMB_X40_Y2_N26
\Divisor_frecuencias|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal1~6_combout\ = (\Divisor_frecuencias|count2\(20) & (!\Divisor_frecuencias|count2\(23) & (\Divisor_frecuencias|count2\(21) & \Divisor_frecuencias|count2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(20),
	datab => \Divisor_frecuencias|count2\(23),
	datac => \Divisor_frecuencias|count2\(21),
	datad => \Divisor_frecuencias|count2\(22),
	combout => \Divisor_frecuencias|Equal1~6_combout\);

-- Location: LCCOMB_X40_Y3_N30
\Divisor_frecuencias|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal1~3_combout\ = (!\Divisor_frecuencias|count2\(3) & (!\Divisor_frecuencias|count2\(0) & (!\Divisor_frecuencias|count2\(2) & !\Divisor_frecuencias|count2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(3),
	datab => \Divisor_frecuencias|count2\(0),
	datac => \Divisor_frecuencias|count2\(2),
	datad => \Divisor_frecuencias|count2\(1),
	combout => \Divisor_frecuencias|Equal1~3_combout\);

-- Location: LCCOMB_X40_Y2_N14
\Divisor_frecuencias|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal1~0_combout\ = (\Divisor_frecuencias|count2\(13) & (\Divisor_frecuencias|count2\(12) & (!\Divisor_frecuencias|count2\(15) & \Divisor_frecuencias|count2\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(13),
	datab => \Divisor_frecuencias|count2\(12),
	datac => \Divisor_frecuencias|count2\(15),
	datad => \Divisor_frecuencias|count2\(14),
	combout => \Divisor_frecuencias|Equal1~0_combout\);

-- Location: LCCOMB_X40_Y3_N8
\Divisor_frecuencias|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal1~1_combout\ = (!\Divisor_frecuencias|count2\(9) & (!\Divisor_frecuencias|count2\(10) & (\Divisor_frecuencias|count2\(11) & !\Divisor_frecuencias|count2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(9),
	datab => \Divisor_frecuencias|count2\(10),
	datac => \Divisor_frecuencias|count2\(11),
	datad => \Divisor_frecuencias|count2\(8),
	combout => \Divisor_frecuencias|Equal1~1_combout\);

-- Location: LCCOMB_X39_Y3_N0
\Divisor_frecuencias|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal1~2_combout\ = (!\Divisor_frecuencias|count2\(7) & (!\Divisor_frecuencias|count2\(4) & (\Divisor_frecuencias|count2\(6) & !\Divisor_frecuencias|count2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(7),
	datab => \Divisor_frecuencias|count2\(4),
	datac => \Divisor_frecuencias|count2\(6),
	datad => \Divisor_frecuencias|count2\(5),
	combout => \Divisor_frecuencias|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y2_N12
\Divisor_frecuencias|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal1~4_combout\ = (\Divisor_frecuencias|Equal1~3_combout\ & (\Divisor_frecuencias|Equal1~0_combout\ & (\Divisor_frecuencias|Equal1~1_combout\ & \Divisor_frecuencias|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|Equal1~3_combout\,
	datab => \Divisor_frecuencias|Equal1~0_combout\,
	datac => \Divisor_frecuencias|Equal1~1_combout\,
	datad => \Divisor_frecuencias|Equal1~2_combout\,
	combout => \Divisor_frecuencias|Equal1~4_combout\);

-- Location: LCCOMB_X40_Y2_N16
\Divisor_frecuencias|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal1~7_combout\ = (\Divisor_frecuencias|count2\(24) & (\Divisor_frecuencias|Equal1~5_combout\ & (\Divisor_frecuencias|Equal1~6_combout\ & \Divisor_frecuencias|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count2\(24),
	datab => \Divisor_frecuencias|Equal1~5_combout\,
	datac => \Divisor_frecuencias|Equal1~6_combout\,
	datad => \Divisor_frecuencias|Equal1~4_combout\,
	combout => \Divisor_frecuencias|Equal1~7_combout\);

-- Location: LCCOMB_X40_Y2_N6
\Divisor_frecuencias|out2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|out2~0_combout\ = \Divisor_frecuencias|out2~q\ $ (\Divisor_frecuencias|Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|out2~q\,
	datad => \Divisor_frecuencias|Equal1~7_combout\,
	combout => \Divisor_frecuencias|out2~0_combout\);

-- Location: LCCOMB_X40_Y2_N30
\Divisor_frecuencias|out2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|out2~feeder_combout\ = \Divisor_frecuencias|out2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|out2~0_combout\,
	combout => \Divisor_frecuencias|out2~feeder_combout\);

-- Location: FF_X40_Y2_N31
\Divisor_frecuencias|out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|out2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|out2~q\);

-- Location: CLKCTRL_G5
\Divisor_frecuencias|out2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Divisor_frecuencias|out2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Divisor_frecuencias|out2~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y18_N1
\Sens_Back~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sens_Back,
	o => \Sens_Back~input_o\);

-- Location: LCCOMB_X40_Y18_N16
\Back_sensor_funcion|cnt[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Back_sensor_funcion|cnt[1]~0_combout\ = (\Back_sensor_funcion|cnt\(0) & (\Sens_Back~input_o\ $ (!\Back_sensor_funcion|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sens_Back~input_o\,
	datac => \Back_sensor_funcion|cnt\(1),
	datad => \Back_sensor_funcion|cnt\(0),
	combout => \Back_sensor_funcion|cnt[1]~0_combout\);

-- Location: FF_X40_Y18_N17
\Back_sensor_funcion|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divisor_frecuencias|out2~clkctrl_outclk\,
	d => \Back_sensor_funcion|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Back_sensor_funcion|cnt\(1));

-- Location: LCCOMB_X40_Y18_N28
\Back_sensor_funcion|cnt[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Back_sensor_funcion|cnt[0]~1_combout\ = (\Sens_Back~input_o\ & (\Back_sensor_funcion|cnt\(0))) # (!\Sens_Back~input_o\ & (!\Back_sensor_funcion|cnt\(0) & !\Back_sensor_funcion|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sens_Back~input_o\,
	datac => \Back_sensor_funcion|cnt\(0),
	datad => \Back_sensor_funcion|cnt\(1),
	combout => \Back_sensor_funcion|cnt[0]~1_combout\);

-- Location: FF_X40_Y18_N29
\Back_sensor_funcion|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divisor_frecuencias|out2~clkctrl_outclk\,
	d => \Back_sensor_funcion|cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Back_sensor_funcion|cnt\(0));

-- Location: LCCOMB_X40_Y18_N20
\Back_sensor_funcion|Pul_reset~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Back_sensor_funcion|Pul_reset~0_combout\ = (\Sens_Back~input_o\ & ((\Back_sensor_funcion|cnt\(0)) # (!\Back_sensor_funcion|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Back_sensor_funcion|cnt\(0),
	datac => \Sens_Back~input_o\,
	datad => \Back_sensor_funcion|cnt\(1),
	combout => \Back_sensor_funcion|Pul_reset~0_combout\);

-- Location: FF_X40_Y18_N21
\Back_sensor_funcion|Pul_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Divisor_frecuencias|out2~clkctrl_outclk\,
	d => \Back_sensor_funcion|Pul_reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Back_sensor_funcion|Pul_reset~q\);

-- Location: FF_X40_Y18_N23
\Semaforo_Talanquera_inical|Button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Butt_sema~input_o\,
	d => \Semaforo_Talanquera_inical|Button~feeder_combout\,
	clrn => \Back_sensor_funcion|ALT_INV_Pul_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Semaforo_Talanquera_inical|Button~q\);

-- Location: IOIBUF_X41_Y18_N8
\Sens_Front~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sens_Front,
	o => \Sens_Front~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\Cat_ID[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cat_ID(1),
	o => \Cat_ID[1]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\Cat_ID[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cat_ID(0),
	o => \Cat_ID[0]~input_o\);

-- Location: LCCOMB_X40_Y18_N30
\Front_sensor_funcion|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_funcion|Equal0~0_combout\ = (\Cat_ID[1]~input_o\) # (\Cat_ID[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cat_ID[1]~input_o\,
	datad => \Cat_ID[0]~input_o\,
	combout => \Front_sensor_funcion|Equal0~0_combout\);

-- Location: IOIBUF_X41_Y18_N22
\Butt_inten~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Butt_inten,
	o => \Butt_inten~input_o\);

-- Location: LCCOMB_X40_Y18_N18
\Front_sensor_funcion|Detector:deten_pro~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_funcion|Detector:deten_pro~0_combout\ = (!\Back_sensor_funcion|Pul_reset~q\ & (\Sens_Front~input_o\ & !\Butt_inten~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Back_sensor_funcion|Pul_reset~q\,
	datac => \Sens_Front~input_o\,
	datad => \Butt_inten~input_o\,
	combout => \Front_sensor_funcion|Detector:deten_pro~0_combout\);

-- Location: LCCOMB_X39_Y18_N18
\Front_sensor_funcion|Detector:deten_pro\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_funcion|Detector:deten_pro~combout\ = (\Front_sensor_funcion|Detector:deten_pro~0_combout\ & ((!\Front_sensor_funcion|Equal0~0_combout\))) # (!\Front_sensor_funcion|Detector:deten_pro~0_combout\ & 
-- (\Front_sensor_funcion|Detector:deten_pro~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Front_sensor_funcion|Detector:deten_pro~combout\,
	datac => \Front_sensor_funcion|Equal0~0_combout\,
	datad => \Front_sensor_funcion|Detector:deten_pro~0_combout\,
	combout => \Front_sensor_funcion|Detector:deten_pro~combout\);

-- Location: LCCOMB_X39_Y18_N28
\Front_sensor_funcion|cerrado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_funcion|cerrado~0_combout\ = (\Front_sensor_funcion|cerrado~q\) # (!\Front_sensor_funcion|Detector:deten_pro~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Front_sensor_funcion|Detector:deten_pro~combout\,
	datac => \Front_sensor_funcion|cerrado~q\,
	combout => \Front_sensor_funcion|cerrado~0_combout\);

-- Location: FF_X39_Y18_N29
\Front_sensor_funcion|cerrado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Sens_Front~input_o\,
	d => \Front_sensor_funcion|cerrado~0_combout\,
	clrn => \Back_sensor_funcion|ALT_INV_Pul_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Front_sensor_funcion|cerrado~q\);

-- Location: LCCOMB_X39_Y18_N8
\Semaforo_Talanquera_inical|Paso\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Semaforo_Talanquera_inical|Paso~combout\ = (\Back_sensor_funcion|Pul_reset~q\ & (\Semaforo_Talanquera_inical|Paso~combout\)) # (!\Back_sensor_funcion|Pul_reset~q\ & ((!\Front_sensor_funcion|cerrado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Back_sensor_funcion|Pul_reset~q\,
	datac => \Semaforo_Talanquera_inical|Paso~combout\,
	datad => \Front_sensor_funcion|cerrado~q\,
	combout => \Semaforo_Talanquera_inical|Paso~combout\);

-- Location: LCCOMB_X40_Y18_N12
\Semaforo_Talanquera_inical|TalIni\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Semaforo_Talanquera_inical|TalIni~combout\ = (\Semaforo_Talanquera_inical|Button~q\ & \Semaforo_Talanquera_inical|Paso~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Semaforo_Talanquera_inical|Button~q\,
	datad => \Semaforo_Talanquera_inical|Paso~combout\,
	combout => \Semaforo_Talanquera_inical|TalIni~combout\);

-- Location: LCCOMB_X40_Y2_N18
\Semaforo_Talanquera_final|verde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Semaforo_Talanquera_final|verde~0_combout\ = (\Divisor_frecuencias|out2~q\ & \Front_sensor_funcion|cerrado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|out2~q\,
	datad => \Front_sensor_funcion|cerrado~q\,
	combout => \Semaforo_Talanquera_final|verde~0_combout\);

-- Location: LCCOMB_X38_Y12_N6
\Divisor_frecuencias|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~0_combout\ = \Divisor_frecuencias|count1\(0) $ (VCC)
-- \Divisor_frecuencias|Add0~1\ = CARRY(\Divisor_frecuencias|count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(0),
	datad => VCC,
	combout => \Divisor_frecuencias|Add0~0_combout\,
	cout => \Divisor_frecuencias|Add0~1\);

-- Location: LCCOMB_X38_Y12_N0
\Divisor_frecuencias|count1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~0_combout\ = (\Divisor_frecuencias|Add0~0_combout\ & !\Divisor_frecuencias|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|Add0~0_combout\,
	datad => \Divisor_frecuencias|Equal0~8_combout\,
	combout => \Divisor_frecuencias|count1~0_combout\);

-- Location: FF_X38_Y12_N1
\Divisor_frecuencias|count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(0));

-- Location: LCCOMB_X38_Y12_N8
\Divisor_frecuencias|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~2_combout\ = (\Divisor_frecuencias|count1\(1) & (!\Divisor_frecuencias|Add0~1\)) # (!\Divisor_frecuencias|count1\(1) & ((\Divisor_frecuencias|Add0~1\) # (GND)))
-- \Divisor_frecuencias|Add0~3\ = CARRY((!\Divisor_frecuencias|Add0~1\) # (!\Divisor_frecuencias|count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(1),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~1\,
	combout => \Divisor_frecuencias|Add0~2_combout\,
	cout => \Divisor_frecuencias|Add0~3\);

-- Location: FF_X38_Y12_N9
\Divisor_frecuencias|count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(1));

-- Location: LCCOMB_X38_Y12_N10
\Divisor_frecuencias|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~4_combout\ = (\Divisor_frecuencias|count1\(2) & (\Divisor_frecuencias|Add0~3\ $ (GND))) # (!\Divisor_frecuencias|count1\(2) & (!\Divisor_frecuencias|Add0~3\ & VCC))
-- \Divisor_frecuencias|Add0~5\ = CARRY((\Divisor_frecuencias|count1\(2) & !\Divisor_frecuencias|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(2),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~3\,
	combout => \Divisor_frecuencias|Add0~4_combout\,
	cout => \Divisor_frecuencias|Add0~5\);

-- Location: FF_X38_Y12_N11
\Divisor_frecuencias|count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(2));

-- Location: LCCOMB_X38_Y12_N12
\Divisor_frecuencias|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~6_combout\ = (\Divisor_frecuencias|count1\(3) & (!\Divisor_frecuencias|Add0~5\)) # (!\Divisor_frecuencias|count1\(3) & ((\Divisor_frecuencias|Add0~5\) # (GND)))
-- \Divisor_frecuencias|Add0~7\ = CARRY((!\Divisor_frecuencias|Add0~5\) # (!\Divisor_frecuencias|count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(3),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~5\,
	combout => \Divisor_frecuencias|Add0~6_combout\,
	cout => \Divisor_frecuencias|Add0~7\);

-- Location: FF_X38_Y12_N13
\Divisor_frecuencias|count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(3));

-- Location: LCCOMB_X38_Y12_N14
\Divisor_frecuencias|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~8_combout\ = (\Divisor_frecuencias|count1\(4) & (\Divisor_frecuencias|Add0~7\ $ (GND))) # (!\Divisor_frecuencias|count1\(4) & (!\Divisor_frecuencias|Add0~7\ & VCC))
-- \Divisor_frecuencias|Add0~9\ = CARRY((\Divisor_frecuencias|count1\(4) & !\Divisor_frecuencias|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(4),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~7\,
	combout => \Divisor_frecuencias|Add0~8_combout\,
	cout => \Divisor_frecuencias|Add0~9\);

-- Location: FF_X38_Y12_N15
\Divisor_frecuencias|count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(4));

-- Location: LCCOMB_X38_Y12_N16
\Divisor_frecuencias|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~10_combout\ = (\Divisor_frecuencias|count1\(5) & (!\Divisor_frecuencias|Add0~9\)) # (!\Divisor_frecuencias|count1\(5) & ((\Divisor_frecuencias|Add0~9\) # (GND)))
-- \Divisor_frecuencias|Add0~11\ = CARRY((!\Divisor_frecuencias|Add0~9\) # (!\Divisor_frecuencias|count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(5),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~9\,
	combout => \Divisor_frecuencias|Add0~10_combout\,
	cout => \Divisor_frecuencias|Add0~11\);

-- Location: FF_X38_Y12_N17
\Divisor_frecuencias|count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(5));

-- Location: LCCOMB_X38_Y12_N18
\Divisor_frecuencias|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~12_combout\ = (\Divisor_frecuencias|count1\(6) & (\Divisor_frecuencias|Add0~11\ $ (GND))) # (!\Divisor_frecuencias|count1\(6) & (!\Divisor_frecuencias|Add0~11\ & VCC))
-- \Divisor_frecuencias|Add0~13\ = CARRY((\Divisor_frecuencias|count1\(6) & !\Divisor_frecuencias|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(6),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~11\,
	combout => \Divisor_frecuencias|Add0~12_combout\,
	cout => \Divisor_frecuencias|Add0~13\);

-- Location: FF_X38_Y12_N19
\Divisor_frecuencias|count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(6));

-- Location: LCCOMB_X38_Y12_N20
\Divisor_frecuencias|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~14_combout\ = (\Divisor_frecuencias|count1\(7) & (!\Divisor_frecuencias|Add0~13\)) # (!\Divisor_frecuencias|count1\(7) & ((\Divisor_frecuencias|Add0~13\) # (GND)))
-- \Divisor_frecuencias|Add0~15\ = CARRY((!\Divisor_frecuencias|Add0~13\) # (!\Divisor_frecuencias|count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(7),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~13\,
	combout => \Divisor_frecuencias|Add0~14_combout\,
	cout => \Divisor_frecuencias|Add0~15\);

-- Location: LCCOMB_X38_Y12_N2
\Divisor_frecuencias|count1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~1_combout\ = (\Divisor_frecuencias|Add0~14_combout\ & !\Divisor_frecuencias|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|Add0~14_combout\,
	datad => \Divisor_frecuencias|Equal0~8_combout\,
	combout => \Divisor_frecuencias|count1~1_combout\);

-- Location: FF_X38_Y12_N3
\Divisor_frecuencias|count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(7));

-- Location: LCCOMB_X38_Y12_N22
\Divisor_frecuencias|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~16_combout\ = (\Divisor_frecuencias|count1\(8) & (\Divisor_frecuencias|Add0~15\ $ (GND))) # (!\Divisor_frecuencias|count1\(8) & (!\Divisor_frecuencias|Add0~15\ & VCC))
-- \Divisor_frecuencias|Add0~17\ = CARRY((\Divisor_frecuencias|count1\(8) & !\Divisor_frecuencias|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(8),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~15\,
	combout => \Divisor_frecuencias|Add0~16_combout\,
	cout => \Divisor_frecuencias|Add0~17\);

-- Location: FF_X38_Y12_N23
\Divisor_frecuencias|count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(8));

-- Location: LCCOMB_X38_Y12_N24
\Divisor_frecuencias|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~18_combout\ = (\Divisor_frecuencias|count1\(9) & (!\Divisor_frecuencias|Add0~17\)) # (!\Divisor_frecuencias|count1\(9) & ((\Divisor_frecuencias|Add0~17\) # (GND)))
-- \Divisor_frecuencias|Add0~19\ = CARRY((!\Divisor_frecuencias|Add0~17\) # (!\Divisor_frecuencias|count1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(9),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~17\,
	combout => \Divisor_frecuencias|Add0~18_combout\,
	cout => \Divisor_frecuencias|Add0~19\);

-- Location: FF_X38_Y12_N25
\Divisor_frecuencias|count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(9));

-- Location: LCCOMB_X38_Y12_N26
\Divisor_frecuencias|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~20_combout\ = (\Divisor_frecuencias|count1\(10) & (\Divisor_frecuencias|Add0~19\ $ (GND))) # (!\Divisor_frecuencias|count1\(10) & (!\Divisor_frecuencias|Add0~19\ & VCC))
-- \Divisor_frecuencias|Add0~21\ = CARRY((\Divisor_frecuencias|count1\(10) & !\Divisor_frecuencias|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(10),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~19\,
	combout => \Divisor_frecuencias|Add0~20_combout\,
	cout => \Divisor_frecuencias|Add0~21\);

-- Location: FF_X38_Y12_N27
\Divisor_frecuencias|count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(10));

-- Location: LCCOMB_X38_Y12_N28
\Divisor_frecuencias|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~22_combout\ = (\Divisor_frecuencias|count1\(11) & (!\Divisor_frecuencias|Add0~21\)) # (!\Divisor_frecuencias|count1\(11) & ((\Divisor_frecuencias|Add0~21\) # (GND)))
-- \Divisor_frecuencias|Add0~23\ = CARRY((!\Divisor_frecuencias|Add0~21\) # (!\Divisor_frecuencias|count1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(11),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~21\,
	combout => \Divisor_frecuencias|Add0~22_combout\,
	cout => \Divisor_frecuencias|Add0~23\);

-- Location: FF_X38_Y12_N29
\Divisor_frecuencias|count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(11));

-- Location: LCCOMB_X38_Y12_N30
\Divisor_frecuencias|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~24_combout\ = (\Divisor_frecuencias|count1\(12) & (\Divisor_frecuencias|Add0~23\ $ (GND))) # (!\Divisor_frecuencias|count1\(12) & (!\Divisor_frecuencias|Add0~23\ & VCC))
-- \Divisor_frecuencias|Add0~25\ = CARRY((\Divisor_frecuencias|count1\(12) & !\Divisor_frecuencias|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(12),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~23\,
	combout => \Divisor_frecuencias|Add0~24_combout\,
	cout => \Divisor_frecuencias|Add0~25\);

-- Location: LCCOMB_X38_Y12_N4
\Divisor_frecuencias|count1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~2_combout\ = (\Divisor_frecuencias|Add0~24_combout\ & !\Divisor_frecuencias|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Add0~24_combout\,
	datad => \Divisor_frecuencias|Equal0~8_combout\,
	combout => \Divisor_frecuencias|count1~2_combout\);

-- Location: FF_X38_Y12_N5
\Divisor_frecuencias|count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(12));

-- Location: LCCOMB_X38_Y11_N0
\Divisor_frecuencias|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~26_combout\ = (\Divisor_frecuencias|count1\(13) & (!\Divisor_frecuencias|Add0~25\)) # (!\Divisor_frecuencias|count1\(13) & ((\Divisor_frecuencias|Add0~25\) # (GND)))
-- \Divisor_frecuencias|Add0~27\ = CARRY((!\Divisor_frecuencias|Add0~25\) # (!\Divisor_frecuencias|count1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(13),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~25\,
	combout => \Divisor_frecuencias|Add0~26_combout\,
	cout => \Divisor_frecuencias|Add0~27\);

-- Location: LCCOMB_X39_Y11_N30
\Divisor_frecuencias|count1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~3_combout\ = (!\Divisor_frecuencias|Equal0~8_combout\ & \Divisor_frecuencias|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal0~8_combout\,
	datad => \Divisor_frecuencias|Add0~26_combout\,
	combout => \Divisor_frecuencias|count1~3_combout\);

-- Location: FF_X39_Y11_N31
\Divisor_frecuencias|count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(13));

-- Location: LCCOMB_X38_Y11_N2
\Divisor_frecuencias|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~28_combout\ = (\Divisor_frecuencias|count1\(14) & (\Divisor_frecuencias|Add0~27\ $ (GND))) # (!\Divisor_frecuencias|count1\(14) & (!\Divisor_frecuencias|Add0~27\ & VCC))
-- \Divisor_frecuencias|Add0~29\ = CARRY((\Divisor_frecuencias|count1\(14) & !\Divisor_frecuencias|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(14),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~27\,
	combout => \Divisor_frecuencias|Add0~28_combout\,
	cout => \Divisor_frecuencias|Add0~29\);

-- Location: LCCOMB_X39_Y11_N20
\Divisor_frecuencias|count1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~4_combout\ = (!\Divisor_frecuencias|Equal0~8_combout\ & \Divisor_frecuencias|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal0~8_combout\,
	datad => \Divisor_frecuencias|Add0~28_combout\,
	combout => \Divisor_frecuencias|count1~4_combout\);

-- Location: FF_X39_Y11_N21
\Divisor_frecuencias|count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(14));

-- Location: LCCOMB_X38_Y11_N4
\Divisor_frecuencias|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~30_combout\ = (\Divisor_frecuencias|count1\(15) & (!\Divisor_frecuencias|Add0~29\)) # (!\Divisor_frecuencias|count1\(15) & ((\Divisor_frecuencias|Add0~29\) # (GND)))
-- \Divisor_frecuencias|Add0~31\ = CARRY((!\Divisor_frecuencias|Add0~29\) # (!\Divisor_frecuencias|count1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(15),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~29\,
	combout => \Divisor_frecuencias|Add0~30_combout\,
	cout => \Divisor_frecuencias|Add0~31\);

-- Location: LCCOMB_X39_Y11_N6
\Divisor_frecuencias|count1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~5_combout\ = (!\Divisor_frecuencias|Equal0~8_combout\ & \Divisor_frecuencias|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|Equal0~8_combout\,
	datac => \Divisor_frecuencias|Add0~30_combout\,
	combout => \Divisor_frecuencias|count1~5_combout\);

-- Location: FF_X39_Y11_N7
\Divisor_frecuencias|count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(15));

-- Location: LCCOMB_X38_Y11_N6
\Divisor_frecuencias|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~32_combout\ = (\Divisor_frecuencias|count1\(16) & (\Divisor_frecuencias|Add0~31\ $ (GND))) # (!\Divisor_frecuencias|count1\(16) & (!\Divisor_frecuencias|Add0~31\ & VCC))
-- \Divisor_frecuencias|Add0~33\ = CARRY((\Divisor_frecuencias|count1\(16) & !\Divisor_frecuencias|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(16),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~31\,
	combout => \Divisor_frecuencias|Add0~32_combout\,
	cout => \Divisor_frecuencias|Add0~33\);

-- Location: FF_X38_Y11_N7
\Divisor_frecuencias|count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(16));

-- Location: LCCOMB_X38_Y11_N8
\Divisor_frecuencias|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~34_combout\ = (\Divisor_frecuencias|count1\(17) & (!\Divisor_frecuencias|Add0~33\)) # (!\Divisor_frecuencias|count1\(17) & ((\Divisor_frecuencias|Add0~33\) # (GND)))
-- \Divisor_frecuencias|Add0~35\ = CARRY((!\Divisor_frecuencias|Add0~33\) # (!\Divisor_frecuencias|count1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(17),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~33\,
	combout => \Divisor_frecuencias|Add0~34_combout\,
	cout => \Divisor_frecuencias|Add0~35\);

-- Location: LCCOMB_X38_Y11_N30
\Divisor_frecuencias|count1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~6_combout\ = (\Divisor_frecuencias|Add0~34_combout\ & !\Divisor_frecuencias|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Add0~34_combout\,
	datad => \Divisor_frecuencias|Equal0~8_combout\,
	combout => \Divisor_frecuencias|count1~6_combout\);

-- Location: FF_X38_Y11_N31
\Divisor_frecuencias|count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(17));

-- Location: LCCOMB_X38_Y11_N10
\Divisor_frecuencias|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~36_combout\ = (\Divisor_frecuencias|count1\(18) & (\Divisor_frecuencias|Add0~35\ $ (GND))) # (!\Divisor_frecuencias|count1\(18) & (!\Divisor_frecuencias|Add0~35\ & VCC))
-- \Divisor_frecuencias|Add0~37\ = CARRY((\Divisor_frecuencias|count1\(18) & !\Divisor_frecuencias|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(18),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~35\,
	combout => \Divisor_frecuencias|Add0~36_combout\,
	cout => \Divisor_frecuencias|Add0~37\);

-- Location: FF_X38_Y11_N11
\Divisor_frecuencias|count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(18));

-- Location: LCCOMB_X38_Y11_N12
\Divisor_frecuencias|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~38_combout\ = (\Divisor_frecuencias|count1\(19) & (!\Divisor_frecuencias|Add0~37\)) # (!\Divisor_frecuencias|count1\(19) & ((\Divisor_frecuencias|Add0~37\) # (GND)))
-- \Divisor_frecuencias|Add0~39\ = CARRY((!\Divisor_frecuencias|Add0~37\) # (!\Divisor_frecuencias|count1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(19),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~37\,
	combout => \Divisor_frecuencias|Add0~38_combout\,
	cout => \Divisor_frecuencias|Add0~39\);

-- Location: LCCOMB_X39_Y11_N4
\Divisor_frecuencias|count1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~7_combout\ = (!\Divisor_frecuencias|Equal0~8_combout\ & \Divisor_frecuencias|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal0~8_combout\,
	datad => \Divisor_frecuencias|Add0~38_combout\,
	combout => \Divisor_frecuencias|count1~7_combout\);

-- Location: FF_X39_Y11_N5
\Divisor_frecuencias|count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(19));

-- Location: LCCOMB_X38_Y11_N14
\Divisor_frecuencias|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~40_combout\ = (\Divisor_frecuencias|count1\(20) & (\Divisor_frecuencias|Add0~39\ $ (GND))) # (!\Divisor_frecuencias|count1\(20) & (!\Divisor_frecuencias|Add0~39\ & VCC))
-- \Divisor_frecuencias|Add0~41\ = CARRY((\Divisor_frecuencias|count1\(20) & !\Divisor_frecuencias|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(20),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~39\,
	combout => \Divisor_frecuencias|Add0~40_combout\,
	cout => \Divisor_frecuencias|Add0~41\);

-- Location: LCCOMB_X38_Y11_N28
\Divisor_frecuencias|count1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~8_combout\ = (\Divisor_frecuencias|Add0~40_combout\ & !\Divisor_frecuencias|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Add0~40_combout\,
	datad => \Divisor_frecuencias|Equal0~8_combout\,
	combout => \Divisor_frecuencias|count1~8_combout\);

-- Location: FF_X38_Y11_N29
\Divisor_frecuencias|count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(20));

-- Location: LCCOMB_X38_Y11_N16
\Divisor_frecuencias|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~42_combout\ = (\Divisor_frecuencias|count1\(21) & (!\Divisor_frecuencias|Add0~41\)) # (!\Divisor_frecuencias|count1\(21) & ((\Divisor_frecuencias|Add0~41\) # (GND)))
-- \Divisor_frecuencias|Add0~43\ = CARRY((!\Divisor_frecuencias|Add0~41\) # (!\Divisor_frecuencias|count1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(21),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~41\,
	combout => \Divisor_frecuencias|Add0~42_combout\,
	cout => \Divisor_frecuencias|Add0~43\);

-- Location: LCCOMB_X39_Y11_N0
\Divisor_frecuencias|count1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~9_combout\ = (!\Divisor_frecuencias|Equal0~8_combout\ & \Divisor_frecuencias|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|Equal0~8_combout\,
	datac => \Divisor_frecuencias|Add0~42_combout\,
	combout => \Divisor_frecuencias|count1~9_combout\);

-- Location: FF_X39_Y11_N1
\Divisor_frecuencias|count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(21));

-- Location: LCCOMB_X38_Y11_N18
\Divisor_frecuencias|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~44_combout\ = (\Divisor_frecuencias|count1\(22) & (\Divisor_frecuencias|Add0~43\ $ (GND))) # (!\Divisor_frecuencias|count1\(22) & (!\Divisor_frecuencias|Add0~43\ & VCC))
-- \Divisor_frecuencias|Add0~45\ = CARRY((\Divisor_frecuencias|count1\(22) & !\Divisor_frecuencias|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(22),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~43\,
	combout => \Divisor_frecuencias|Add0~44_combout\,
	cout => \Divisor_frecuencias|Add0~45\);

-- Location: LCCOMB_X38_Y11_N26
\Divisor_frecuencias|count1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~10_combout\ = (!\Divisor_frecuencias|Equal0~8_combout\ & \Divisor_frecuencias|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal0~8_combout\,
	datad => \Divisor_frecuencias|Add0~44_combout\,
	combout => \Divisor_frecuencias|count1~10_combout\);

-- Location: FF_X38_Y11_N27
\Divisor_frecuencias|count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(22));

-- Location: LCCOMB_X38_Y11_N20
\Divisor_frecuencias|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~46_combout\ = (\Divisor_frecuencias|count1\(23) & (!\Divisor_frecuencias|Add0~45\)) # (!\Divisor_frecuencias|count1\(23) & ((\Divisor_frecuencias|Add0~45\) # (GND)))
-- \Divisor_frecuencias|Add0~47\ = CARRY((!\Divisor_frecuencias|Add0~45\) # (!\Divisor_frecuencias|count1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|count1\(23),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~45\,
	combout => \Divisor_frecuencias|Add0~46_combout\,
	cout => \Divisor_frecuencias|Add0~47\);

-- Location: LCCOMB_X39_Y11_N10
\Divisor_frecuencias|count1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~11_combout\ = (!\Divisor_frecuencias|Equal0~8_combout\ & \Divisor_frecuencias|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal0~8_combout\,
	datad => \Divisor_frecuencias|Add0~46_combout\,
	combout => \Divisor_frecuencias|count1~11_combout\);

-- Location: FF_X39_Y11_N11
\Divisor_frecuencias|count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(23));

-- Location: LCCOMB_X39_Y11_N12
\Divisor_frecuencias|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~6_combout\ = (\Divisor_frecuencias|count1\(22) & (\Divisor_frecuencias|count1\(21) & (\Divisor_frecuencias|count1\(23) & \Divisor_frecuencias|count1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(22),
	datab => \Divisor_frecuencias|count1\(21),
	datac => \Divisor_frecuencias|count1\(23),
	datad => \Divisor_frecuencias|count1\(20),
	combout => \Divisor_frecuencias|Equal0~6_combout\);

-- Location: LCCOMB_X38_Y11_N22
\Divisor_frecuencias|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~48_combout\ = (\Divisor_frecuencias|count1\(24) & (\Divisor_frecuencias|Add0~47\ $ (GND))) # (!\Divisor_frecuencias|count1\(24) & (!\Divisor_frecuencias|Add0~47\ & VCC))
-- \Divisor_frecuencias|Add0~49\ = CARRY((\Divisor_frecuencias|count1\(24) & !\Divisor_frecuencias|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(24),
	datad => VCC,
	cin => \Divisor_frecuencias|Add0~47\,
	combout => \Divisor_frecuencias|Add0~48_combout\,
	cout => \Divisor_frecuencias|Add0~49\);

-- Location: FF_X38_Y11_N23
\Divisor_frecuencias|count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(24));

-- Location: LCCOMB_X38_Y11_N24
\Divisor_frecuencias|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Add0~50_combout\ = \Divisor_frecuencias|Add0~49\ $ (\Divisor_frecuencias|count1\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Divisor_frecuencias|count1\(25),
	cin => \Divisor_frecuencias|Add0~49\,
	combout => \Divisor_frecuencias|Add0~50_combout\);

-- Location: LCCOMB_X39_Y11_N22
\Divisor_frecuencias|count1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|count1~12_combout\ = (!\Divisor_frecuencias|Equal0~8_combout\ & \Divisor_frecuencias|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|Equal0~8_combout\,
	datad => \Divisor_frecuencias|Add0~50_combout\,
	combout => \Divisor_frecuencias|count1~12_combout\);

-- Location: FF_X39_Y11_N23
\Divisor_frecuencias|count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|count1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|count1\(25));

-- Location: LCCOMB_X39_Y11_N8
\Divisor_frecuencias|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~7_combout\ = (\Divisor_frecuencias|count1\(25) & !\Divisor_frecuencias|count1\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Divisor_frecuencias|count1\(25),
	datad => \Divisor_frecuencias|count1\(24),
	combout => \Divisor_frecuencias|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y11_N26
\Divisor_frecuencias|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~5_combout\ = (!\Divisor_frecuencias|count1\(18) & (!\Divisor_frecuencias|count1\(16) & (\Divisor_frecuencias|count1\(19) & \Divisor_frecuencias|count1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(18),
	datab => \Divisor_frecuencias|count1\(16),
	datac => \Divisor_frecuencias|count1\(19),
	datad => \Divisor_frecuencias|count1\(17),
	combout => \Divisor_frecuencias|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y12_N30
\Divisor_frecuencias|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~1_combout\ = (!\Divisor_frecuencias|count1\(4) & (!\Divisor_frecuencias|count1\(6) & (!\Divisor_frecuencias|count1\(5) & \Divisor_frecuencias|count1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(4),
	datab => \Divisor_frecuencias|count1\(6),
	datac => \Divisor_frecuencias|count1\(5),
	datad => \Divisor_frecuencias|count1\(7),
	combout => \Divisor_frecuencias|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y11_N28
\Divisor_frecuencias|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~3_combout\ = (\Divisor_frecuencias|count1\(13) & (\Divisor_frecuencias|count1\(14) & (\Divisor_frecuencias|count1\(12) & \Divisor_frecuencias|count1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(13),
	datab => \Divisor_frecuencias|count1\(14),
	datac => \Divisor_frecuencias|count1\(12),
	datad => \Divisor_frecuencias|count1\(15),
	combout => \Divisor_frecuencias|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y12_N28
\Divisor_frecuencias|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~2_combout\ = (!\Divisor_frecuencias|count1\(10) & (!\Divisor_frecuencias|count1\(9) & (!\Divisor_frecuencias|count1\(8) & !\Divisor_frecuencias|count1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(10),
	datab => \Divisor_frecuencias|count1\(9),
	datac => \Divisor_frecuencias|count1\(8),
	datad => \Divisor_frecuencias|count1\(11),
	combout => \Divisor_frecuencias|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y12_N0
\Divisor_frecuencias|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~0_combout\ = (!\Divisor_frecuencias|count1\(2) & (!\Divisor_frecuencias|count1\(3) & (!\Divisor_frecuencias|count1\(0) & !\Divisor_frecuencias|count1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|count1\(2),
	datab => \Divisor_frecuencias|count1\(3),
	datac => \Divisor_frecuencias|count1\(0),
	datad => \Divisor_frecuencias|count1\(1),
	combout => \Divisor_frecuencias|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y11_N18
\Divisor_frecuencias|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~4_combout\ = (\Divisor_frecuencias|Equal0~1_combout\ & (\Divisor_frecuencias|Equal0~3_combout\ & (\Divisor_frecuencias|Equal0~2_combout\ & \Divisor_frecuencias|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|Equal0~1_combout\,
	datab => \Divisor_frecuencias|Equal0~3_combout\,
	datac => \Divisor_frecuencias|Equal0~2_combout\,
	datad => \Divisor_frecuencias|Equal0~0_combout\,
	combout => \Divisor_frecuencias|Equal0~4_combout\);

-- Location: LCCOMB_X39_Y11_N14
\Divisor_frecuencias|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|Equal0~8_combout\ = (\Divisor_frecuencias|Equal0~6_combout\ & (\Divisor_frecuencias|Equal0~7_combout\ & (\Divisor_frecuencias|Equal0~5_combout\ & \Divisor_frecuencias|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Divisor_frecuencias|Equal0~6_combout\,
	datab => \Divisor_frecuencias|Equal0~7_combout\,
	datac => \Divisor_frecuencias|Equal0~5_combout\,
	datad => \Divisor_frecuencias|Equal0~4_combout\,
	combout => \Divisor_frecuencias|Equal0~8_combout\);

-- Location: LCCOMB_X39_Y11_N24
\Divisor_frecuencias|out1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Divisor_frecuencias|out1~0_combout\ = \Divisor_frecuencias|Equal0~8_combout\ $ (\Divisor_frecuencias|out1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Divisor_frecuencias|Equal0~8_combout\,
	datac => \Divisor_frecuencias|out1~q\,
	combout => \Divisor_frecuencias|out1~0_combout\);

-- Location: FF_X39_Y11_N25
\Divisor_frecuencias|out1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Divisor_frecuencias|out1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Divisor_frecuencias|out1~q\);

-- Location: LCCOMB_X39_Y18_N30
\Semaforo_Talanquera_final|rojo\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Semaforo_Talanquera_final|rojo~combout\ = (!\Front_sensor_funcion|cerrado~q\ & \Divisor_frecuencias|out1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Front_sensor_funcion|cerrado~q\,
	datad => \Divisor_frecuencias|out1~q\,
	combout => \Semaforo_Talanquera_final|rojo~combout\);

-- Location: LCCOMB_X40_Y18_N26
\Front_sensor_funcion|Detector:var_alarma~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_funcion|Detector:var_alarma~0_combout\ = (!\Cat_ID[1]~input_o\ & (!\Butt_inten~input_o\ & (\Sens_Front~input_o\ & !\Cat_ID[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cat_ID[1]~input_o\,
	datab => \Butt_inten~input_o\,
	datac => \Sens_Front~input_o\,
	datad => \Cat_ID[0]~input_o\,
	combout => \Front_sensor_funcion|Detector:var_alarma~0_combout\);

-- Location: LCCOMB_X40_Y18_N24
\Front_sensor_funcion|Detector:var_alarma\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Front_sensor_funcion|Detector:var_alarma~combout\ = (!\Back_sensor_funcion|Pul_reset~q\ & ((\Front_sensor_funcion|Detector:var_alarma~0_combout\) # (\Front_sensor_funcion|Detector:var_alarma~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Back_sensor_funcion|Pul_reset~q\,
	datac => \Front_sensor_funcion|Detector:var_alarma~0_combout\,
	datad => \Front_sensor_funcion|Detector:var_alarma~combout\,
	combout => \Front_sensor_funcion|Detector:var_alarma~combout\);

-- Location: IOIBUF_X16_Y29_N15
\Butt_reset_manual~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Butt_reset_manual,
	o => \Butt_reset_manual~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\Cat_ID[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cat_ID(2),
	o => \Cat_ID[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\Cat_ID[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cat_ID(3),
	o => \Cat_ID[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\Cat_ID[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cat_ID(4),
	o => \Cat_ID[4]~input_o\);

ww_Sema_ini_verde <= \Sema_ini_verde~output_o\;

ww_Sema_ini_rojo <= \Sema_ini_rojo~output_o\;

ww_Sema_fin_verde <= \Sema_fin_verde~output_o\;

ww_Sema_fin_rojo <= \Sema_fin_rojo~output_o\;

ww_Tal_ini <= \Tal_ini~output_o\;

ww_Tal_fin <= \Tal_fin~output_o\;

ww_Alarma <= \Alarma~output_o\;

ww_dinero(0) <= \dinero[0]~output_o\;

ww_dinero(1) <= \dinero[1]~output_o\;

ww_dinero(2) <= \dinero[2]~output_o\;

ww_dinero(3) <= \dinero[3]~output_o\;

ww_dinero(4) <= \dinero[4]~output_o\;
END structure;


