library verilog;
use verilog.vl_types.all;
entity Peaje is
    port(
        CLK             : in     vl_logic;
        Sens_Front      : in     vl_logic;
        Sens_Back       : in     vl_logic;
        Butt_sema       : in     vl_logic;
        Butt_inten      : in     vl_logic;
        Butt_reset_manual: in     vl_logic;
        Cat_ID          : in     vl_logic_vector(4 downto 0);
        Sema_ini_verde  : out    vl_logic;
        Sema_ini_rojo   : out    vl_logic;
        Sema_fin_verde  : out    vl_logic;
        Sema_fin_rojo   : out    vl_logic;
        Tal_ini         : out    vl_logic;
        Tal_fin         : out    vl_logic;
        Alarma          : out    vl_logic;
        dinero          : out    vl_logic_vector(4 downto 0)
    );
end Peaje;
