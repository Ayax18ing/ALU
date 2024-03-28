library verilog;
use verilog.vl_types.all;
entity Back_sensor_vlg_check_tst is
    port(
        Reset           : in     vl_logic;
        StopTime        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Back_sensor_vlg_check_tst;
