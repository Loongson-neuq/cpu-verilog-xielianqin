`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 00:07:09
// Design Name: 
// Module Name: tb_timer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_timer;

    // Inputs
    reg clk;

    // Outputs
    wire [7:0] timer;

    // Instantiate the Unit Under Test (UUT)
    timer uut (
        .clk(clk), 
        .timer(timer)
    );

    initial begin
        // Initialize Inputs
        clk = 0;

        // Monitor the output
        $monitor("Time = %0d, timer = %0d", $time, timer);

        // Run the simulation for a certain period
        #100 $finish;
    end

    // Generate clock signal
    always begin
        #5 clk = ~clk; // Toggle clock every 5 time units
    end

endmodule
