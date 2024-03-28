library verilog;
use verilog.vl_types.all;
entity Peaje_vlg_sample_tst is
    port(
        Butt_inten      : in     vl_logic;
        Butt_reset_manual: in     vl_logic;
        Butt_sema       : in     vl_logic;
        Cat_ID          : in     vl_logic_vector(4 downto 0);
        CLK             : in     vl_logic;
        Sens_Back       : in     vl_logic;
        Sens_Front      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Peaje_vlg_sample_tst;
