module top(
    input [6:0] sw,
    output [1:0] led
    );
    
    wire w_circuit_a_out; // Internal wire to connect the two blocks

    // Instantiate Circuit A
    circuit_a inst_a (
        .A(sw[0]), .B(sw[1]), .C(sw[2]), .D(sw[3]), 
        .Y(w_circuit_a_out)
    );

    // Instantiate Circuit B
    // Note: Circuit B's input A is connected to Circuit A's output!
    circuit_b inst_b (
        .A(w_circuit_a_out), .B(sw[4]), .C(sw[5]), .D(sw[6]), 
        .Y(led[1])
    );

    // Map LED 0 to show Circuit A's status
    assign led[0] = w_circuit_a_out;

endmodule