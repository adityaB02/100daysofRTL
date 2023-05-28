`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 11:10:00 PM
// Design Name: 
// Module Name: pipo
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

parameter n=4;
module pipo(input logic clk, reset,
    input logic [n-1:0]d,
    output logic [n-1:0]q);
    
    always_ff@(posedge clk) begin
        if(reset)
            q<=0;
        else
            q[n-1:0]<= d[n-1:0];
    end
endmodule
