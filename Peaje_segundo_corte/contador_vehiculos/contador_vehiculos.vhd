library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Usamos numeric_std en lugar de std_logic_arith y std_logic_unsigned

entity contador_vehiculos is
	port
	(
		-- Input ports
		CLK	: in  std_logic;
		reset : in std_logic;

		-- Output ports
		count	: out  std_logic_vector (4 downto 0)
	);
end contador_vehiculos;


architecture arch_contador_vehiculos of contador_vehiculos is

    signal cnt : integer range 0 to 15;

begin

   Contador : process (CLK) is
   begin
      if rising_edge(CLK) then
			if (reset = '1') then
				if cnt = 59 then
					cnt <= 0;
				else
					cnt <= cnt + 1;
				end if;
			else
				cnt <= 0;
			end if;
      end if;
   end process;

   count  <= std_logic_vector(to_unsigned(cnt, 5));

end arch_contador_vehiculos;