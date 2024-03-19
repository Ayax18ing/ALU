LIBRARY IEEE;
use ieee.std_logic_1164.all;
entity Peaje is
	port
	(
		-- Input ports
		CLK	: in  std_logic;
		Sens_Front	      : in  std_logic;
		Sens_Back	      : in  std_logic;
		Butt_sema	      : in  std_logic;
		Butt_inten	      : in  std_logic;
		Cat_ID	         : in  std_logic_vector (4 downto 0);

		-- Inout ports
		Sema_ini_verde	: out std_logic;
		Sema_ini_rojo 	: out std_logic;
		Sema_fin_verde	: out std_logic;
		Sema_fin_rojo	: out std_logic;
		Tal_ini	: out std_logic;
		Tal_fin	: out std_logic;
		Alarma   : out std_logic;
		dinero   : out std_logic_vector(4 downto 0);
		tiempo_DE: out std_logic_vector (6 downto 0);
		tiempo_UN: out std_logic_vector (6 downto 0);
		Vehiculos_DE: out std_logic_vector (6 downto 0);
		Vehiculos_UN: out std_logic_vector (6 downto 0)
	);
end Peaje;
architecture arch_Peaje of Peaje is
	
	Component Divisor
    port
    (
        -- Entrada
        clk     : in  std_logic;     
        
        -- Salida
        out1    : buffer std_logic;
        out2    : buffer std_logic 
    );
	end Component;
	
	Component Contador_tiempo
	port
	(
		-- Input ports
		CLK	: in  std_logic;
		enable	: in  std_logic;
		stop_time : in std_logic;

		-- Output ports
		count	: out  std_logic_vector(4 downto 0);
		minsal: out  std_logic
	);
	end Component;
	
	Component Conversor
	port
	(-- Puertos de entrada
		Sum_Con : in  std_logic_vector (4 downto 0);  -- Número de 4 bits
		-- Puertos de salida
		Dec     : out std_logic_vector (3 downto 0);  -- Decenas del número ingresado
		Uni     : out std_logic_vector (3 downto 0)); -- Unidades del número ingresado
	end Component;
	
	Component BCD7Seg
	port
	(
		-- Input ports
		IA,IB, IC, ID : in STD_LOGIC;
		-- Output ports
		F : out std_logic_vector (6 downto 0)
		
	);
	end Component;
	
	Component Sem_ini 
    port (
        -- Entrada
        BtnIn       : in std_logic;   
        SensSemIni  : in std_logic;
        ResetEnable : in std_logic;
        
        -- Salida
        Verde       : out std_logic;
        Rojo        : out std_logic;
        EnableTime  : buffer std_logic;
        TalIni      : out std_logic
    );
	end Component;
	
	Component Front_sensor 
	port
	(
		-- Input ports
		Reset  : in  std_logic;                       --pulso de reset
		Button : in  std_logic;                       --comparacion de categoria
		b   	 : in  std_logic_vector (4 downto 0);   --registro de categoria e ID
		Sens 	 : in  std_logic;                       --sensor fisico de presencia

		-- Output ports
		alarma     	  : out std_logic:='0';                --alarma por demasiados intentos
		cont_vehiculo : out std_logic;                --pulso para el contador de vehiculos
		EN_salida     : out std_logic;                --habilita talanquera de salida
		Senal_cerrado : out std_logic;
		dinero        : out std_logic_vector(4 downto 0)
	);
	end Component;
	
	Component Sem_fin
    port (
        clk1 : in std_logic;
		  clk2 : in std_logic;											      			-- Señales de reloj
        limite : in std_logic_vector(2 downto 0);											-- Límite de segundos (Salida contador de tiempo)
        enable : in std_logic;															-- Entrada habilitadora
        verde, rojo, talfin : buffer std_logic										-- Salidas
    );
	end Component;
	
	Component Back_sensor
    Port (
        PresenceSensor : in std_logic; -- Sensor de presencia
        CLK            : in std_logic; -- Reloj
        Reset          : out std_logic; -- Pulso de reset
        StopTime       : out std_logic -- Pulso de stop time
    );
	end Component;
	
	Component contador_vehiculos
	port
	(
		-- Input ports
		CLK	 : in  std_logic;
		reset  : in std_logic;
		enable : in std_logic;

		-- Output ports
		count	: out  std_logic_vector (4 downto 0);
		min   : out std_logic
	);
	end Component;
	

	signal Res_tot       : std_logic;                                 --señal reset de todo el sistema
	signal one_second    : std_logic;                                 --señal de reloj de 1 segundo
	signal mid_second    : std_logic;                                 --señal de reloj de 0.5 segundos
	signal cerrado_front : std_logic;                                 --pulso de cerrado para la talanquera inicial y poner el rojo el semaforo
	signal inicio_contador : std_logic;                               --habilitador del contador de tiempo
	signal Pul_contador_vehiculos : std_logic;                        --señal de "reloj" contadora de vehículos
	signal abrir_front   : std_logic;                                 --abrir la talanquera y poner en verde el semanforo de salida
	signal limite_time   :std_logic_vector(2 downto 0);               --señal limite de 5 segundos 
	signal Pul_contador_stoptime :std_logic;                          --pulso que detiene el contador 
	signal tiempo                :std_logic_vector(4 downto 0);       --tiempo del contador de tiempo
	signal Vehiculos             :std_logic_vector(4 downto 0);       --tiempo del contador de tiempo
	signal pul_Ext :std_logic; 
	signal pul_Ext_2 :std_logic; 
	signal UN_Tiempo, DEC_Tiempo :std_logic_vector(3 downto 0);       --Decenas y unidades de SALUI 
	signal UN_Vehiculos, DEC_Vehiculos :std_logic_vector(3 downto 0);       --Decenas y unidades de SALUI 
	

begin

	Divisor_frecuencias            : Divisor         port map(CLK, one_second, mid_second);
	Semaforo_Talanquera_inical     : Sem_ini         port map(Butt_sema, cerrado_front, Res_tot, Sema_ini_verde, Sema_ini_rojo, inicio_contador, Tal_ini);
	Front_sensor_funcion           : Front_sensor    port map(Res_tot, Butt_inten, Cat_ID, Sens_Front, Alarma, Pul_contador_vehiculos, abrir_front, cerrado_front, dinero);
	Semaforo_Talanquera_final      : Sem_fin         port map(one_second, mid_second, limite_time, abrir_front, Sema_fin_verde, Sema_fin_rojo, Tal_fin);
	Back_sensor_funcion            : Back_sensor     port map(Sens_Back, mid_second, Res_tot, Pul_contador_stoptime);
	Contador_tiempo_funcion        : Contador_tiempo port map(one_second, inicio_contador, Pul_contador_stoptime, tiempo, pul_Ext);
	Conversor_tiempo               : Conversor       port map(tiempo, DEC_Tiempo, UN_Tiempo);
	Display7seg_dec                : BCD7Seg         port map(DEC_Tiempo(3),DEC_Tiempo(2),DEC_Tiempo(1),DEC_Tiempo(0),tiempo_DE);
	Display7seg_un                 : BCD7Seg         port map(UN_Tiempo(3),UN_Tiempo(2),UN_Tiempo(1),UN_Tiempo(0),tiempo_UN);
	Display7seg_vehiculos          : contador_vehiculos port map(Pul_contador_vehiculos, Res_tot, inicio_contador, Vehiculos,pul_Ext_2);
	Conversor_vehiculos            : Conversor       port map(Vehiculos, DEC_Vehiculos, UN_Vehiculos);
	Display7seg_dec_ve             : BCD7Seg         port map(DEC_Vehiculos(3),DEC_Vehiculos(2),DEC_Vehiculos(1),DEC_Vehiculos(0),Vehiculos_DE);
	Display7seg_un_ve              : BCD7Seg         port map(UN_Vehiculos(3), UN_Vehiculos(2), UN_Vehiculos(1), UN_Vehiculos(0), Vehiculos_UN);
	

end arch_Peaje;
