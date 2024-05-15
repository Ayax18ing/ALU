library verilog;
use verilog.vl_types.all;
entity Parcial_2_vlg_sample_tst is
    port(
        B_sen           : in     vl_logic;
        Boton_int       : in     vl_logic;
        Ca_iden         : in     vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic;
        F_sen           : in     vl_logic;
        Id_iden         : in     vl_logic_vector(2 downto 0);
        reset           : in     vl_logic;
        S_Ha            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Parcial_2_vlg_sample_tst;
