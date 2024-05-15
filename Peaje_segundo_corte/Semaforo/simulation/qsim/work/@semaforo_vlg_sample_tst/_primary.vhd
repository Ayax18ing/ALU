library verilog;
use verilog.vl_types.all;
entity Semaforo_vlg_sample_tst is
    port(
        alarma          : in     vl_logic;
        clk1            : in     vl_logic;
        clk2            : in     vl_logic;
        enable          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Semaforo_vlg_sample_tst;
