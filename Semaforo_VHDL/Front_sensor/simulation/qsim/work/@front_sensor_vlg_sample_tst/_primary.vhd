library verilog;
use verilog.vl_types.all;
entity Front_sensor_vlg_sample_tst is
    port(
        b               : in     vl_logic_vector(4 downto 0);
        Button          : in     vl_logic;
        Reset           : in     vl_logic;
        Sens            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Front_sensor_vlg_sample_tst;
