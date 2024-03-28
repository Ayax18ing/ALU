library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Usamos numeric_std en lugar de std_logic_arith y std_logic_unsigned

entity Contador_tiempo is
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
end Contador_tiempo;


architecture arch_Contador_as of Contador_tiempo is

    signal cnt : integer range 0 to 31;
	 signal stop : std_logic:='0';

begin

   pSeq : process (CLK, stop_time, enable) is
   begin
			if rising_edge(CLK) then
            if enable = '1' then
               cnt <= 0;
					if stop_time = '0' then
						stop <= '0';
						if stop = '0' then
							if cnt = 22 then
								cnt <= 0;
								minsal <= '1';						  
							else
								cnt <= cnt + 1;
								if (cnt = 1) then
									minsal <= '0';
								end if;
							end if;
						end if;
					else
						stop <= '1';
					end if;
            end if;
			end if;
   end process pSeq;

   count  <= std_logic_vector(to_unsigned(cnt, 5));

end arch_Contador_as;
