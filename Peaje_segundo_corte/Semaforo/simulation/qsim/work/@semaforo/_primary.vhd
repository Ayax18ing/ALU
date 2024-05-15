library verilog;
use verilog.vl_types.all;
entity Semaforo is
    port(
        clk1            : in     vl_logic;
        clk2            : in     vl_logic;
        enable          : in     vl_logic;
        alarma          : in     vl_logic;
        verde           : out    vl_logic;
        rojo            : out    vl_logic;
        talfin          : out    vl_logic
    );
end Semaforo;
