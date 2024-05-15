library verilog;
use verilog.vl_types.all;
entity Parcial_2 is
    port(
        S_Ha            : in     vl_logic;
        F_sen           : in     vl_logic;
        B_sen           : in     vl_logic;
        Boton_int       : in     vl_logic;
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        Ca_iden         : in     vl_logic_vector(1 downto 0);
        Id_iden         : in     vl_logic_vector(2 downto 0);
        Sem_Ini_R       : out    vl_logic;
        Sem_Ini_V       : out    vl_logic;
        Sem_Fin_R       : out    vl_logic;
        Sem_Fin_V       : out    vl_logic;
        Tal_Ini         : out    vl_logic;
        Tal_Fin         : out    vl_logic;
        Alm             : out    vl_logic;
        Cont_D          : out    vl_logic;
        tiempo_DE       : out    vl_logic_vector(6 downto 0);
        tiempo_UN       : out    vl_logic_vector(6 downto 0);
        Vehiculos_DE    : out    vl_logic_vector(6 downto 0);
        Vehiculos_UN    : out    vl_logic_vector(6 downto 0)
    );
end Parcial_2;
