library verilog;
use verilog.vl_types.all;
entity Front_sensor_vlg_check_tst is
    port(
        alarma          : in     vl_logic;
        cont_vehiculo   : in     vl_logic;
        dinero          : in     vl_logic_vector(4 downto 0);
        EN_salida       : in     vl_logic;
        Senal_cerrado   : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Front_sensor_vlg_check_tst;
