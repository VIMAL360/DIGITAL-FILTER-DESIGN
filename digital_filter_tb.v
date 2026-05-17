`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2026 23:54:17
// Design Name: 
// Module Name: digital_filter_tb
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


module digital_filter_tb;

reg clk;
reg reset;
reg [7:0] din;

wire [7:0] dout;

digital_filter uut(
    .clk(clk),
    .reset(reset),
    .din(din),
    .dout(dout)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    reset = 1;
    din = 0;

    #10;
    reset = 0;

    din = 10;
    #10;

    din = 20;
    #10;

    din = 30;
    #10;

    din = 40;
    #10;

    $finish;

end

endmodule
