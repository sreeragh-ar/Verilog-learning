module and_gate
(
    input_1,
    input_2,
    and_result
);
input input_1;
input input_2;
output and_result;
wire res;
assign res = input_1 & input_2;
assign and_result = res;

endmodule
