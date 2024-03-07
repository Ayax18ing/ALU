library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity UArith is
	
	port
	(-- Input ports
		A1, B1     : in integer range 0 to 15;        --dos numeros de 4 bits representados en enteros del 0 al 15
		SIGA,SIGB  : in std_logic;                    --signo de los números A y B
		SELECTOR   : in std_logic_vector (1 downto 0);--selector de la operación a realizar 
		-- Output ports
		S_Out      : buffer integer range 0 to 31;    --resultado de las operaciones
	   S_OutAB    : out std_logic);--signo de salida
end UArith;

architecture arch_UArith of UArith is

	signal SIG_NO : std_logic;--signo de salida
	
begin
	PArith : process (A1, B1, SELECTOR, SIGA) is
		variable S_Out1 : integer range 0 to 31;
	begin
		SIG_NO <= '1';  -- Inicializamos S_OutAB1 en '1' predeterminado numeros negativos

		-- Realizamos operaciones aritméticas basadas en SELECTOR y SIGA/SIGB
		if SELECTOR = "11" then
			if SIGA = '0' then
				S_Out1 := -1*A1 + 3;
			else
				S_Out1 := A1 + 3;
			end if;
		elsif SELECTOR = "01" then
			if SIGA = '0' then
				S_Out1 := -1*A1 - 3;
			else
				S_Out1 := A1 - 3;
			end if;
		elsif SELECTOR = "10" then
			if SIGB='0' then
				S_Out1 := -1*B1 - 4;
			else
				S_Out1 := B1 - 4;
			end if;
		elsif SELECTOR ="00" then
			if SIGB='0' then
				S_Out1 := -1*B1 - 3;
			else
				S_Out1 := B1 - 3;
			end if;
		end if;

		-- Verificamos si S_Out es positivo, establecemos S_OutAB1 en '0' en ese caso
		if S_Out1 >= 0 then
			SIG_NO <= '0';
		else
			S_Out1 := -1*S_Out1;  -- Tomamos el valor absoluto de S_Out
		end if;

		-- Asignamos los resultados a las señales de salida
		S_Out <= S_Out1;
	end process PArith;
	
	S_OutAB <= SIG_NO;
	
end arch_UArith;


	