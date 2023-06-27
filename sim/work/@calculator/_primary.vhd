library verilog;
use verilog.vl_types.all;
entity Calculator is
    generic(
        WIDTH           : integer := 8
    );
    port(
        op_a            : in     vl_logic_vector;
        op_b            : in     vl_logic_vector;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        result          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end Calculator;
