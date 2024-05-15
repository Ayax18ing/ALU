library verilog;
use verilog.vl_types.all;
entity contador_vehiculos_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_vehiculos_vlg_sample_tst;
