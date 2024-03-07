library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity U_logic is
	port
	(
		-- Input ports
		A2,B2	: in  std_logic_vector (3 downto 0);  --dos números de entrada
		SELEC     : in  std_logic_vector (1 downto 0);  --selector de operaciones
		-- Output ports
		SOUT	: out std_logic_vector (3 downto 0)   --resultado de las operaciones 
	);
end U_logic;


architecture arch_U_logic of U_logic is
begin

	process (A2, B2, SELEC) is 
	begin
		if SELEC="11" then
			SOUT <= not A2;
		elsif SELEC="01" then
			SOUT <= not B2;
		elsif SELEC="10" then
			SOUT <= A2 or (not B2);
		elsif SELEC="11" then
			SOUT <= A2 and B2;
		end if;
	end process;

end arch_U_logic;
