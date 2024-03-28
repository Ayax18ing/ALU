library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Usamos numeric_std en lugar de std_logic_arith y std_logic_unsigned

entity Contador_as is
	port
	(
		-- Input ports
		CLK	: in  std_logic;
		reset	: in  std_logic;
		enable	: in  std_logic;

		-- Output ports
		count	: out  std_logic_vector (5 downto 0);
		minsal: out  std_logic
	);
end Contador_as;


architecture arch_Contador_as of Contador_as is

    signal cnt : integer range 0 to 59;

begin

    pSeq : process (CLK, reset) is
    begin
        if rising_edge(CLK) then
            if reset = '1' then
                cnt <= 0;
            elsif enable = '1' then
                if cnt = 59 then
                    cnt <= 0;
                    minsal <= '1';						  
                else
                    cnt <= cnt + 1;
						  if (cnt = 1) then
								minsal <= '0';
						  end if;
                end if;
            end if;
        end if;
    end process pSeq;

    count  <= std_logic_vector(to_unsigned(cnt, 6));

end arch_Contador_as;