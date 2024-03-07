library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD7Seg2 is
    port
    (
        -- Input ports
        EN : in STD_LOGIC;
		  IA : in STD_LOGIC;
        IB : in STD_LOGIC;
        IC : in STD_LOGIC;
        ID : in STD_LOGIC;
        -- Output ports
        F : out std_logic_vector (6 downto 0)
    );
end BCD7Seg2;

architecture BCD7Seg_Arch of BCD7Seg2 is
    signal ABCD : std_logic_vector(3 downto 0);
begin
    ABCD <= IA & IB & IC & ID;

    DISplay : process (IA, IB, IC, ID) is
    begin
	 if EN='1' then
            case ABCD is
                when "0000" =>
                    F <= "0000001";
                when "0001" =>
                    F <= "1001111";
                when "0010" =>
                    F <= "0010010";
                when "0011" =>
                    F <= "0000110";
                when "0100" =>
                    F <= "1001100";
                when "0101" =>
                    F <= "0100100";
                when "0110" =>
                    F <= "0100000";
                when "0111" =>
                    F <= "0001111";
                when "1000" =>
                    F <= "0000000";
                when "1001" =>
                    F <= "0001100";
					 when "1010" =>
					     F <= "1111110"; --signo en display
                when others =>
                    F <= "1111111";
            end case;
	 end if;
    end process DISplay;
end BCD7Seg_Arch;
