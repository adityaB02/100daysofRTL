`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 11:50:20 PM
// Design Name: 
// Module Name: siso
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
module siso(
	input logic reset_n,
	input logic clk,
    input logic sdi, // serial data in
	output logic sdo // serial data out
    );
	
	// Internal 4 bits wide register
	logic [n-1:0] buffer;
	
	// Async negative reset is used
	// The input data is the same as the output data
	always @(posedge clk or negedge reset_n) begin
	    if (!reset_n)
		    buffer <= 4'b0;
	    else
		    buffer[n-1:0] <= {buffer[n-2:0], sdi};
	end

    // Connect the sdo net to the register MSB
    assign sdo = buffer[n-1];

endmodule
