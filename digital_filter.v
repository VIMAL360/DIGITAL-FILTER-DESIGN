`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2026 23:52:36
// Design Name: 
// Module Name: digital_filter
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


module digital_filter(
    input clk,
    input reset,
    input [7:0] din,
    output reg [7:0] dout
);

reg [7:0] x1, x2;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        x1 <= 0;
        x2 <= 0;
        dout <= 0;
    end
    else
    begin
        dout <= (din + x1 + x2) / 3;

        x2 <= x1;
        x1 <= din;
    end
end

endmodule
