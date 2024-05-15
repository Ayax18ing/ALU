library verilog;
use verilog.vl_types.all;
entity Parcial_2_vlg_check_tst is
    port(
        Alm             : in     vl_logic;
        Cont_D          : in     vl_logic;
        Sem_Fin_R       : in     vl_logic;
        Sem_Fin_V       : in     vl_logic;
        Sem_Ini_R       : in     vl_logic;
        Sem_Ini_V       : in     vl_logic;
        Tal_Fin         : in     vl_logic;
        Tal_Ini         : in     vl_logic;
        tiempo_DE       : in     vl_logic_vector(6 downto 0);
        tiempo_UN       : in     vl_logic_vector(6 downto 0);
        Vehiculos_DE    : in     vl_logic_vector(6 downto 0);
        Vehiculos_UN    : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end Parcial_2_vlg_check_tst;
