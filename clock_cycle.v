// Verilog Example: 
reg test1 = 1'b1; // 1
reg test2 = 1'b0; // 0
reg test3 = 1'b0; // 0
reg test4 = 1'b0; // 0
 
always @ (posedge i_clock)
  begin
    // It takes 3 clock cycles for value of t1 to propagate to t4
    // note that all the 3 statements are executed in parallel in each clock cycle.
    test2 <= test1;
    test3 <= test2;
    test4 <= test3;
  end