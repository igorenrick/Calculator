library verilog;
use verilog.vl_types.all;
entity Controller is
    generic(
        \WAIT\          : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        ADD             : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        SUBTRACT        : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        MULTIPLY        : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        op_code         : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \WAIT\ : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of SUBTRACT : constant is 1;
    attribute mti_svvh_generic_type of MULTIPLY : constant is 1;
end Controller;
