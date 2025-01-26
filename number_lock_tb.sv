`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 20:20:57
// Design Name: 
// Module Name: number_lock_tb
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


module number_lock_tb();
    logic  clk;
  logic  reset;
  logic  [3:0] code;
  logic unlock;

number_lock u1(.clk(clk), .reset(reset), .code(code), .unlock(unlock));
initial begin
    // Initialize signals
    clk = 0;
    reset = 1;
    code = 4'b0000;

    // Apply reset
    #10 reset = 0;
    #10 reset = 1;
    #10 reset = 0;

    // Apply the unlock code sequence
    #10 code = 4'b1011;

    // Wait and observe the unlock signal
    #10 $display("Unlock signal: %b", unlock);
    
    // End the simulation
    #10 $finish;
  end
   // Clock generation
  always #5 clk = ~clk;

endmodule

