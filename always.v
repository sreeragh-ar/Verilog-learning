always @ (input_1 or input_2) //sensitivity list - change in any of the signals will execute the code
  begin
    and_gate = input_1 & input_2;
  end

// The above code is equivalent to 
//   assign and_gate = input_1 & input_2