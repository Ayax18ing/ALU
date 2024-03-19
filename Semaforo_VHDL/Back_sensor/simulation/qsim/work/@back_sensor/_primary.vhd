library verilog;
use verilog.vl_types.all;
entity Back_sensor is
    port(
        PresenceSensor  : in     vl_logic;
        CLK             : in     vl_logic;
        Reset           : out    vl_logic;
        StopTime        : out    vl_logic
    );
end Back_sensor;
