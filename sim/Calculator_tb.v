module Calculator_tb;
    reg [7:0] op_a;
    reg [7:0] op_b;
    reg clk;
    reg reset;
    wire [7:0] result;

    // Instantiate the Calculator module
    Calculator #(8) calculator (
        .op_a(op_a),
        .op_b(op_b),
        .clk(clk),
        .reset(reset),
        .result(result)
    );

    // Clock process
    always begin
        #5 clk = ~clk;    // Toggle clock every 5 time units
    end

    // Test process
    initial begin
        // Initialize inputs
        clk = 0;
        reset = 1;
        op_a = 0;
        op_b = 0;

        // Apply reset
        #10 reset = 0;
        #10 reset = 1;

        // Test Case 1: Add 3 and 5
        #20 op_a = 3; op_b = 5;
        
        // Test Case 2: Subtract 3 from 5
        #20 op_a = 5; op_b = 3;

        // Test Case 3: Multiply 3 and 5
        #20 op_a = 3; op_b = 5;

        // Test Case 4: Divide 10 by 2
        #20 op_a = 10; op_b = 2;
        
        // End of tests
        #20 $stop;
    end

endmodule
