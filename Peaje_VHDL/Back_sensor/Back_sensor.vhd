library ieee;
use ieee.std_logic_1164.all;

entity Back_sensor is
    Port (
        PresenceSensor : in std_logic; -- Sensor de presencia
        CLK            : in std_logic; -- Reloj
        Reset          : out std_logic; -- Pulso de reset
        StopTime       : out std_logic -- Pulso de stop time
    );
end Back_sensor;

architecture arch_CarSensor of Back_sensor is

    signal Pul_reset    : std_logic := '1';
    signal Pul_time     : std_logic := '0';
    signal cnt          : natural range 0 to 3 := 0;

begin

    process (CLK)
    begin
        if rising_edge(CLK) then
            if cnt = 2 then
                Pul_reset <= '1'; -- Pulso de reset
                Pul_time <= '0'; -- Pulso de stop time
                cnt <= 0; -- Reiniciar el contador cuando se detecta el flanco de bajada
            elsif PresenceSensor = '1' then
                Pul_reset <= '0'; -- Pulso de reset
                Pul_time <= '1'; -- Pulso de stop time
            else
                Pul_reset <= '1'; -- Regresar a su posición inicial
                Pul_time <= '0'; -- Regresar a su posición inicial
                cnt <= cnt + 1; -- Incrementar el contador en cada flanco de subida del reloj
            end if;
        end if;
    end process;

    Reset <= Pul_reset;
    StopTime <= Pul_time;

end arch_CarSensor;
