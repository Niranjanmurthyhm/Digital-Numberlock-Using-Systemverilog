`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 20:17:17
// Design Name: 
// Module Name: number_lock
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
/////////////////////////////////////////////////////////////////////////////////

module number_lock(input logic clk,
                   input logic reset, 
                   input logic [3:0] code, 
                   output logic unlock);

  logic [3:0] state;

  always @(posedge clk or posedge reset)
   begin
    if (reset)
     begin
      state <= 4'b0000;
    end 
    else 
    begin
      state <= {state[2:0], code};
    end
  end

  assign unlock = (state == 4'b1011) ? 1'b1 : 1'b0;

endmodule
