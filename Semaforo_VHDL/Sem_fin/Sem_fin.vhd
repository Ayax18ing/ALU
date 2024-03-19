library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sem_fin is
    port (
        clk1 : in std_logic;
		  clk2 : in std_logic;											      			-- Señales de reloj
        limite : in integer range 0 to 5;										   	-- Límite de segundos (Salida contador de tiempo)
        enable : in std_logic;															-- Entrada habilitadora
        verde, rojo, talfin : buffer std_logic										-- Salidas
    );
end entity Sem_fin;

architecture arch_Sem_fin of Sem_fin is

	

begin
   Reloj: process(clk1, clk2, enable, limite) is
	begin
		if (enable='1' or limite>=5) then
			verde <= clk2;
			rojo <= '0';
			talfin <= '1';
		elsif (enable='0') then
			verde <= '0';
			rojo <= clk1;
			talfin <= '0';
		end if;
    end process;
end architecture arch_Sem_fin;
