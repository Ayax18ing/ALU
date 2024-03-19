library verilog;
use verilog.vl_types.all;
entity Front_sensor is
    port(
        Reset           : in     vl_logic;
        Button          : in     vl_logic;
        b               : in     vl_logic_vector(4 downto 0);
        Sens            : in     vl_logic;
        alarma          : out    vl_logic;
        cont_vehiculo   : out    vl_logic;
        EN_salida       : out    vl_logic;
        Senal_cerrado   : out    vl_logic;
        dinero          : out    vl_logic_vector(4 downto 0)
    );
end Front_sensor;
