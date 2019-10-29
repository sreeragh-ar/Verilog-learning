`include "and.v"
`timescale 1us/1ns
module and_gate_tb;
reg input_1_t    = 1'b0;
reg input_2_t = 1'b1;
wire out;

and_gate UUT(
   .input_1(input_1_t),
   .input_2(input_2_t),
   .and_result(out)
   );

// always #20 r_CLOCK <= !r_CLOCK;
initial begin
$dumpfile("test.vcd");
$dumpvars(0,and_gate_tb);
input_1_t <= 1'b0;
input_2_t <= 1'b0;
#200000 // 0.2 seconds

input_1_t <= 1'b0;
input_2_t <= 1'b1;
#200000 // 0.2 seconds

input_1_t <= 1'b1;
input_2_t <= 1'b0;
#200000 // 0.2 seconds

input_1_t <= 1'b1;
input_2_t <= 1'b1;
#200000 // 0.2 seconds

$display("Test Complete");
end

endmodule