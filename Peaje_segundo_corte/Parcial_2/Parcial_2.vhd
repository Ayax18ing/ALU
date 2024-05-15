LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Parcial_2 is
   port (
      S_Ha, F_sen, B_sen, Boton_int, CLK, reset : in std_logic;
      Ca_iden : in std_logic_vector(1 downto 0);
      Id_iden : in std_logic_vector(2 downto 0);
      -- Output ports
      Sem_Ini_R, Sem_Ini_V, Sem_Fin_R, Sem_Fin_V, Tal_Ini, Tal_Fin, Alm, Cont_D : out std_logic;
		second : out std_LOGIC;
		midsecond :out std_LOGIC;
		estado_boton_habilitador : out std_LOGIC;
		tiempo_DE: out std_logic_vector (6 downto 0);
		tiempo_UN: out std_logic_vector (6 downto 0);
		Vehiculos_DE: out std_logic_vector (6 downto 0);
		Vehiculos_UN: out std_logic_vector (6 downto 0)
   );
end Parcial_2;

architecture arch_Parcial_2 of Parcial_2 is

	Component Contador_tiempo is
	port
	(
		-- Input ports
		CLK	    : in  std_logic;
		enable	 : in  std_logic;
		reset     : in  std_logic;

		-- Output ports
		count	: out  std_logic_vector(2 downto 0);
		minsal: out  std_logic
	);
   end Component;
	
	Component Divisor is
   port
   (
      -- Entrada
		clk     : in  std_logic;     
        
      -- Salida
      out1    : buffer std_logic;
      out2    : buffer std_logic
   );
	end Component;
	
	Component Conversor is
	port
	(
		-- Input ports
		Sum_Con : in std_logic_vector(4 downto 0);

		-- Output ports
		Dec     : out std_logic_vector (3 downto 0);  -- Decenas del número ingresado
		Uni     : out std_logic_vector (3 downto 0) -- Unidades del número ingresado
	);
	end Component;
	
	Component BCD7Seg is
	port
	(
		-- Input ports
		IA,IB, IC, ID : in STD_LOGIC;
		-- Output ports
		F : out std_logic_vector (6 downto 0)
	);
	end Component;
	
	Component contador_vehiculos is
	port
	(
		-- Input ports
		CLK	: in  std_logic;
		reset : in std_logic;
		-- Output ports
		count	: out  std_logic_vector (4 downto 0)
	);
	end Component;
	
	Component Semaforo is
    port (
        clk1   : in std_logic;
		  clk2   : in std_logic;								 -- Señales de reloj
        enable : in std_logic;								 -- Si es 1, 
		  alarma : in std_logic;                         -- Parpadeo por categoría inválida
        verde, rojo : buffer std_logic					    -- Salidas
    );
	end Component;

   type State_type is (Ini, paso, intento1, intento2, intento3, alerta, cobro, exito);
   signal next_state : State_type;
   signal current_state : State_type;
	
	signal Cont_oneS : std_logic;      --señal de clk de 1 segundo
	signal Cont_midS : std_logic;      --señal de clk de 0.5 segundos

	signal tiempo_limit : std_logic;
	signal Cont_T : std_logic;
	signal cronometro : std_logic_vector(2 downto 0);
	signal Cromometro_concatenado : std_logic_vector(4 downto 0);
	
	signal Parpadeo : std_logic;
	
	signal UN_Tiempo, DEC_Tiempo :std_logic_vector(3 downto 0);
	signal UN_Vehiculos, DEC_Vehiculos :std_logic_vector(3 downto 0);
	signal num_vehiculos	: std_logic_vector (4 downto 0);   -- contador de vehículos
	
	signal Sem_Ini  : std_logic;            -- bit de control semaforo inicial
	signal Sem_Fin  : std_logic;            -- bit de control semaforo final
	signal Cont_V  : std_logic;             -- pulso para el contador de vehículos

begin
   STATE_MEMORY : process (Cont_midS, reset)
   begin
      if (reset = '0') then
         current_state <= Ini;
      elsif (Cont_midS'event and Cont_midS = '1') then
         current_state <= next_state;
      end if;
   end process;

   NEXT_STATE_LOGIC : process (S_Ha, F_sen, B_sen, Id_iden, Ca_iden, Boton_int)
   begin
      case (current_state) is
         when Ini =>
            if (S_Ha = '1') then
               next_state <= paso;
            else
               next_state <= Ini;
            end if;
         when paso =>
            if (F_sen = '1') then
               next_state <= intento1;
				elsif(tiempo_limit='1') then
				   next_state <= exito;
            else
               next_state <= paso;
            end if;
         when intento1 =>
            if (Boton_int = '1' and Ca_iden = "00") then
               next_state <= intento2;
            elsif (Ca_iden /= "00" and Boton_int = '1')then
               next_state <= cobro;
				elsif (tiempo_limit='1') then
				   next_state <= exito;
            end if;
         when intento2 =>
				if (tiempo_limit='1') then
					next_state <= exito;
            elsif (Boton_int = '1' and Ca_iden = "00") then
               next_state <= intento3;
            elsif (Ca_iden /= "00" and Boton_int = '1')then
               next_state <= cobro;
            end if;
         when intento3 =>
				if (tiempo_limit='1') then
				   next_state <= exito;
            elsif (Boton_int = '1' and Ca_iden = "00") then
               next_state <= alerta;
            elsif (Ca_iden /= "00" and Boton_int = '1') then
               next_state <= cobro;
            end if;
         when cobro =>
				next_state <= exito;
         when alerta =>
				next_state <= exito;
         when exito =>
            if (B_sen = '1') then
               next_state <= paso;
            else
               next_state <= exito;
            end if;
         when others =>
            next_state <= paso;
			end case;
    end process;

   OUTPUT_LOGIC : process (current_state, S_Ha, F_sen, B_sen, Id_iden, Ca_iden, Boton_int)
   begin
      case (current_state) is
         when Ini =>
            Sem_Ini <= '0';
            Tal_Ini <= '0';
            Sem_Fin <= '0';
            Tal_Fin <= '0';
            Alm <= '0';
            Cont_V <= '0';    --contador de vehiculos
            Cont_T <= '0'; -- Contador de tiempo desactivado
            Cont_D <= '0';
				Parpadeo <= '0';
			when paso =>
            Sem_Ini <= '1';
            Tal_Ini <= '1';
            Cont_T <= '1'; -- Activar contador de tiempo
            Cont_V <= '1';
         when intento1 =>
				Cont_V <= '0';
				Sem_Ini <= '0';
				Tal_Ini <= '0';
				Cont_T <= '1'; -- Mantener contador de tiempo activado
				Alm <= '0';
			when intento2 =>
				Cont_V <= '0';
				Sem_Ini <= '0';
				Tal_Ini <= '0';
				Cont_T <= '1'; -- Mantener contador de tiempo activado
				Alm <= '0';
			when intento3 =>
				Cont_V <= '0';
				Sem_Ini <= '0';
				Tal_Ini <= '0';
				Cont_T <= '1'; -- Mantener contador de tiempo activado
				Alm <= '1';	
         when cobro =>
            Cont_D <= '1';
            Cont_T <= '1'; -- Mantener contador de tiempo activado
         when alerta =>
				Alm <= '1';
				Cont_T <= '1'; -- Mantener contador de tiempo activado
				Parpadeo <= '1';    -- Entrada alarma del componente semaforo
         when exito =>
            Sem_Fin <= '1';
            Tal_Fin <= '1';
            Cont_T <= '0';
         when others =>
				Sem_Ini <= '0';
            Tal_Ini <= '0';
            Sem_Fin <= '0';
            Tal_Fin <= '0';
            Alm <= '0';
            Cont_V <= '0';
            Cont_T <= '0';
            Cont_D <= '0';
      end case;
   end process;
	 
	second <= Cont_oneS;
	midsecond <= Cont_midS;
	estado_boton_habilitador <= S_Ha;
	 
	Divisor_de_frecuencias : Divisor            port map (CLK, Cont_oneS, Cont_midS);
	Contador_de_tiempo     : Contador_tiempo	  port map (Cont_oneS, Cont_T, reset, cronometro, tiempo_limit);
	Contador_de_vehiculos  : contador_vehiculos port map (Cont_V, reset, num_vehiculos);
	
	-- Tiempo en el fpga
	Cromometro_concatenado <= '0' & '0' & cronometro(2) & cronometro(1) & cronometro(0);
	Conversor_a_bcd_tiempo : Conversor          port map (Cromometro_concatenado, DEC_Tiempo, UN_Tiempo);
	Display7seg_dec        : BCD7Seg            port map (DEC_Tiempo(3),DEC_Tiempo(2),DEC_Tiempo(1),DEC_Tiempo(0),tiempo_DE);
	Display7seg_un         : BCD7Seg            port map (UN_Tiempo(3),UN_Tiempo(2),UN_Tiempo(1),UN_Tiempo(0),tiempo_UN);
	
	-- Contador de vehiculos
	Conversor_a_bcd_vehicu : Conversor          port map (num_vehiculos, DEC_Vehiculos, UN_Vehiculos);
	Decodificador_bcd_vehi1: BCD7Seg            port map (DEC_Vehiculos(3),DEC_Vehiculos(2),DEC_Vehiculos(1),DEC_Vehiculos(0),Vehiculos_DE);
	Decodificador_bcd_vehi2: BCD7Seg            port map (UN_Vehiculos(3), UN_Vehiculos(2), UN_Vehiculos(1), UN_Vehiculos(0), Vehiculos_UN);
	
	semaforo_inicial       : Semaforo           port map (Cont_oneS, Cont_midS, Sem_Ini, '0', Sem_Ini_V, Sem_Ini_R);
	semaforo_final         : Semaforo           port map (Cont_oneS, Cont_midS, Sem_Fin, '0', Sem_Fin_V, Sem_Fin_R);
	
end arch_Parcial_2;