library verilog;
use verilog.vl_types.all;
entity Contador_des is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        count           : out    vl_logic_vector(5 downto 0);
        minsal          : out    vl_logic
    );
end Contador_des;
