library verilog;
use verilog.vl_types.all;
entity Sem_fin is
    port(
        clk1            : in     vl_logic;
        clk2            : in     vl_logic;
        limite          : in     vl_logic_vector(2 downto 0);
        enable          : in     vl_logic;
        verde           : out    vl_logic;
        rojo            : out    vl_logic;
        talfin          : out    vl_logic
    );
end Sem_fin;
