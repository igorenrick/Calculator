module Controller (
    input clk,
    input reset,
    output reg [1:0] op_code
);
    parameter WAIT = 2'b00, ADD = 2'b01, SUBTRACT = 2'b10, MULTIPLY = 2'b11;
    reg [1:0] state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset) state <= WAIT;
        else state <= next_state;
    end

    always @(*) begin
        case(state)
            WAIT: begin
                next_state <= ADD;
            end
            ADD: begin
                next_state <= SUBTRACT;
            end
            SUBTRACT: begin
                next_state <= MULTIPLY;
            end
            MULTIPLY: begin
                next_state <= WAIT;
            end
            default: next_state <= WAIT;
        endcase
    end

    always @(*) begin
        case(state)
            WAIT: op_code <= 2'b00;
            ADD: op_code <= 2'b00;
            SUBTRACT: op_code <= 2'b01;
            MULTIPLY: op_code <= 2'b10;
            default: op_code <= 2'b00;
        endcase
    end
endmodule
