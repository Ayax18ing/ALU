library verilog;
use verilog.vl_types.all;
entity Peaje_vlg_check_tst is
    port(
        Alarma          : in     vl_logic;
        dinero          : in     vl_logic_vector(4 downto 0);
        Sema_fin_rojo   : in     vl_logic;
        Sema_fin_verde  : in     vl_logic;
        Sema_ini_rojo   : in     vl_logic;
        Sema_ini_verde  : in     vl_logic;
        Tal_fin         : in     vl_logic;
        Tal_ini         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Peaje_vlg_check_tst;
