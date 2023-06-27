library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        WIDTH           : integer := 8
    );
    port(
        op_a            : in     vl_logic_vector;
        op_b            : in     vl_logic_vector;
        op_code         : in     vl_logic_vector(1 downto 0);
        result          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end ALU;
