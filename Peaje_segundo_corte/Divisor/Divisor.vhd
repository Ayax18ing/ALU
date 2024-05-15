library IEEE;
use IEEE.std_logic_1164.all;

entity Divisor is
    port
    (
        -- Entrada
        clk     : in  std_logic;     
        
        -- Salida
        out1    : buffer std_logic;
        out2    : buffer std_logic
    );
end Divisor;

architecture arch_Divisor_frecuencia of Divisor is

   signal count1 : integer range 0 to 49999999;  -- Contador para dividir la frecuencia a 1hz      49999999
   signal count2 : integer range 0 to 24999999;  -- Contador para dividir la frecuencia a 0.5 Hz   24999999
	
begin

    DIVIDIR: process(clk) is
    begin     
        if (clk'event and clk = '1') then 
            count1 <= count1 + 1;
            count2 <= count2 + 1;
            
            if (count1 = 49999998) then  -- Dividir la frecuencia a 1hz
                out1 <= not out1;
                count1 <= 0;
            end if;
            
            if (count2 = 24999995) then  -- Dividir la frecuencia a 0.5hz
                out2 <= not out2;
                count2 <= 0;
            end if;
        end if;
    end process;
end arch_Divisor_frecuencia;