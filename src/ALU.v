module ALU #(parameter WIDTH = 8) (
    input [WIDTH-1:0] op_a,
    input [WIDTH-1:0] op_b,
    input [1:0] op_code,
    output reg [WIDTH-1:0] result
);
    always @(*) begin
        case (op_code)
            2'b00: result = op_a + op_b;  // Add
            2'b01: result = op_a - op_b;  // Subtract
            2'b10: result = op_a * op_b;  // Multiply
            2'b11: if(op_b != 0) result = op_a / op_b; else result = 0;  // Divide
            default: result = 0;
        endcase
    end
endmodule
