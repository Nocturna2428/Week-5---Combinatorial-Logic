module circuit_b(
    // Declare inputs
 
input A,B,C,D,
output Y
 // Declare Y output
);

assign Y = (~C&~D)|
(A&B)|
(~D&B);

    // Enter logic equation here

endmodule
