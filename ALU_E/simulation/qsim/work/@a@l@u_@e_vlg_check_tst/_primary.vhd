library verilog;
use verilog.vl_types.all;
entity ALU_E_vlg_check_tst is
    port(
        DE              : in     vl_logic_vector(6 downto 0);
        SI_G            : in     vl_logic_vector(6 downto 0);
        UN              : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_E_vlg_check_tst;
