library verilog;
use verilog.vl_types.all;
entity ALU_E_vlg_sample_tst is
    port(
        Ai              : in     vl_logic_vector(3 downto 0);
        Bi              : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        SA              : in     vl_logic;
        SB              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ALU_E_vlg_sample_tst;
