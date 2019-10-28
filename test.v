module test 
(input_1,
input_2,
and_gate
);
input input_1;
input input_2;
output and_gate;
reg setup;

// 1) combinational logic with 'always'
always @ (input_1 or input_2)
  begin
    setup = input_1 & input_2;
  end

// 2) sequential logic with 'always'
always @ (posedge input_1)
  begin
    setup <= input_2;
  end

// 3) Clock cycle concept
reg test1 = 1'b1; // 1
reg test2 = 1'b0; // 0
reg test3 = 1'b0; // 0
reg test4 = 1'b0; // 0
 
always @ (posedge input_2)
  begin
    // It takes 3 clock cycles for value of t1 to propagate to t4
    // note that all the 3 statements are executed in parallel in each clock cycle.
    test2 <= test1;
    test3 <= test2;
    test4 <= test3;
  end

endmodule
