library verilog;
use verilog.vl_types.all;
entity Sem_fin_vlg_sample_tst is
    port(
        clk1            : in     vl_logic;
        clk2            : in     vl_logic;
        enable          : in     vl_logic;
        limite          : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Sem_fin_vlg_sample_tst;
