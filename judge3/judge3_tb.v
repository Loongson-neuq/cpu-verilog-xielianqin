`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 00:28:13
// Design Name: 
// Module Name: tb_judge
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


module tb_judge3;

    // Inputs
    reg a;
    reg b;
    reg c;

    // Output
    wire out;

    // Instantiate the Unit Under Test (UUT)
    judge3 uut (
        .a(a), 
        .b(b), 
        .c(c), 
        .out(out)
    );

    initial begin
        // Initialize Inputs
        a = 0; b = 0; c = 0;
        #10; // Wait for 10 time units
        a = 0; b = 0; c = 1;
        #10;
        a = 0; b = 1; c = 0;
        #10;
        a = 0; b = 1; c = 1;
        #10;
        a = 1; b = 0; c = 0;
        #10;
        a = 1; b = 0; c = 1;
        #10;
        a = 1; b = 1; c = 0;
        #10;
        a = 1; b = 1; c = 1;
        #10;
    end
      
endmodule
