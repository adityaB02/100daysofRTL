`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2023 02:11:42 PM
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


module mux4to1_tb();
    logic [2:0]a[3:0];
    logic sel[1:0];
    logic out;
 
    mux4to1 dut(.*);
    
    initial begin
        sel[0]=0;sel[1]=0;
        #10 sel[1]=0; sel[0]=1;
        #10 sel[1]=1; sel[0]=0;
        #10 sel[1]=1; sel[0]=1;
    end    
    initial begin
        a[0]=3'b000;a[1]=3'b000;a[2]=3'b111;a[3]=3'b101;
        #10 a[0]=3'b001;a[1]=3'b001;a[2]=$urandom_range (0, 8'b111);a[3]=$urandom_range (0, 8'b111);
        #10 a[0]=3'b010;a[1]=3'b010;a[2]=$urandom_range (0, 3'b111);a[3]=$urandom_range (0, 3'b111);
        #10 a[0]=3'b011;a[1]=3'b011;a[2]=$urandom_range (0, 3'b111);a[3]=$urandom_range (0, 3'b111);
        #10 a[0]=3'b100;a[1]=3'b100;a[2]=$urandom_range (0, 3'b111);a[3]=$urandom_range (0, 3'b111);
        $finish;
    end
    
    
    
    
endmodule
