module Calculator #(parameter WIDTH = 8) (
    input [WIDTH-1:0] op_a,
    input [WIDTH-1:0] op_b,
    input clk,
    input reset,
    output [WIDTH-1:0] result
);
    wire [1:0] op_code;

    Controller ctrl (
        .clk(clk),
        .reset(reset),
        .op_code(op_code)
    );

    ALU #(WIDTH) alu (
        .op_a(op_a),
        .op_b(op_b),
        .op_code(op_code),
        .result(result)
    );
endmodule
