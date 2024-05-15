library verilog;
use verilog.vl_types.all;
entity Semaforo_vlg_check_tst is
    port(
        rojo            : in     vl_logic;
        talfin          : in     vl_logic;
        verde           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Semaforo_vlg_check_tst;
