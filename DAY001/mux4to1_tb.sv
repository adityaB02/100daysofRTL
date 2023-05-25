`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 01:47:51 PM
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb(

    );
    logic a0,a1,a2,a3;
    logic [0:1]sel;
    logic out;
 
    mux4to1 dut(.*);
    
    initial begin
       sel[0]=0; sel[1]=0; a0=0; a1=0; a2=0; a3=0; 
       #10 sel[0]=0; sel[1]=1; a0=0; a1=0; a2=0; a3=1; 
       #10 sel[0]=1; sel[1]=0; a0=0; a1=0; a2=1; a3=0; 
       #10 sel[0]=1; sel[1]=1; a0=1; a1=0; a2=1; a3=1; 
       #10 $finish;
    end
endmodule
