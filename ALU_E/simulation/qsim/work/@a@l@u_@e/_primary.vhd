library verilog;
use verilog.vl_types.all;
entity ALU_E is
    port(
        Ai              : in     vl_logic_vector(3 downto 0);
        Bi              : in     vl_logic_vector(3 downto 0);
        SA              : in     vl_logic;
        SB              : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0);
        UN              : out    vl_logic_vector(6 downto 0);
        DE              : out    vl_logic_vector(6 downto 0);
        SI_G            : out    vl_logic_vector(6 downto 0)
    );
end ALU_E;
