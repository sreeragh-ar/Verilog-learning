// a sequential logic can have atmost 2 signals in sensitivity list
always @ (posedge i_clock) // posedge - rising edge of clock - clock signal change from 0 to 1
  begin
    and_gate <= input_1 & input_2; // we use <= (non blocking or parallel assignment)
  end                              // we use = (blocking assignment) in sequential logic 