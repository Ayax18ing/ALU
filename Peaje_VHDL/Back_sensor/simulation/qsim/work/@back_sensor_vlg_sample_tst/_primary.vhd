library verilog;
use verilog.vl_types.all;
entity Back_sensor_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        PresenceSensor  : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Back_sensor_vlg_sample_tst;
