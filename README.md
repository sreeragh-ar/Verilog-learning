# Introduction to Verilog

Codes are based on the below tutorial
https://www.nandland.com/verilog/tutorials/tutorial-introduction-to-verilog-for-beginners.html



* To compile
`iverilog file_name.v -o out`

* To run
`vvp out`

* To run and visualise testench
    * Install ModelSim
    http://vineeshvs.blogspot.com/2014/02/installing-and-using-modelsim-in-ubuntu.html

    `iverilog file_name.v -o out`
    `vvp out -lxt2`
    `gtkwave  test.vcd`
