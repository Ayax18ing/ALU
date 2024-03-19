library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Sem_ini is
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
end Sem_ini;

architecture arch_Sem_ini of Sem_ini is

	signal Button : std_logic;
	signal Paso : std_logic;
	
begin
   Boton : process (ResetEnable, BtnIn) is
	begin
		if ResetEnable = '0' then
			Button <= '0';
			EnableTime <= '0';
		elsif BtnIn'event and BtnIn = '0'then
			Button <= '1';	
			EnableTime <= '1';
		end if;
   end process;
	
	Sensor : process (Button, SensSemIni,ResetEnable) is
	begin
		if ResetEnable = '1'then
			if SensSemIni = '0' then	
				Paso <= '0';	
			else
				Paso <= '1';
			end if;
		end if;
   end process;
	
	Talanquera: process (Button, Paso) is
	begin
		if Button = '1' and Paso = '1'then
			TalIni <= '1';
			Verde <= '1';
			Rojo <= '0';
		else	
			TalIni <= '0';
			Verde <= '0';
			Rojo <= '1';
		end if;
	end process;

end arch_Sem_ini;