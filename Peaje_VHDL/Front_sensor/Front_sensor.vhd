library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Front_sensor is
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
end Front_sensor;


architecture arch_Front_sensor of Front_sensor is

	signal Categoria    : std_logic_vector (1 downto 0);   --primeros 2 bits del vector b
	signal ID           : std_logic_vector (2 downto 0);   --3 ultimos bits del vetor b
	signal dinero_count : integer range 0 to 49;           --contador de dinero por carro ingresado con respecto a su categoria
	signal alarm        : integer range 0 to 2;            --contador de intentos cuando se ingresa categoria 00
	signal enable, cerrado : std_logic;                 --señales controladoras de la talanquera de sañida y entada respectivamente 
	signal traba        : std_logic;                       --ingresar el código en un bucle infinito cuando esté encendida la alarma hasta que se resetee fisicamente
	

begin
	
	Categoria <= b(0) & b(1);                          --concatenación de la categoria
	ID <= b(2) & b(3) & b(4);                          --concatenacion del ID
	cont_vehiculo <= Sens;                             --establecer el pulso contador de vehiculos igual al pulso del sensor de presencia 
	
	Detector : process (Sens, Button, Categoria, ID) is
		variable var_alarma : std_logic:='0';                    --variable asignada a la salida "alarma"
		variable deten_pro  : std_logic;                         --impide que cuando suene la alarma el vehiculosalga
		variable dinero_count : integer range 0 to 49;           --contador de dinero por carro ingresado con respecto a su categoria
	begin
		if Reset = '1' then                             --con la señal de reset en 1 hacer:
			if (Sens = '1') then                  --con francos de subida cuando detecte un carro hacer:
				if (Button = '0') then
					deten_pro:='0';
					if Categoria="00" then
						var_alarma := '1';
						deten_pro := '1';
					elsif Categoria="01" then
						dinero_count := dinero_count+1;
					elsif Categoria="10" then
						dinero_count := dinero_count+2;
					elsif Categoria="11" then
						dinero_count := dinero_count+4;
					end if;
				end if;
			elsif (falling_edge(Sens) and deten_pro='0') then            --si ya pasó el carro, no lo detecta hacer:
				enable <= '1';
				cerrado <= '0';
			end if;
		elsif Reset = '0' then
			enable <= '0';
			cerrado <= '1';
			var_alarma := '0';
		end if;
		alarma <= var_alarma;
	end process;
	EN_salida <= enable;
	Senal_cerrado <= cerrado;
	dinero <= std_logic_vector(to_unsigned(dinero_count, 5));

end arch_Front_sensor;
