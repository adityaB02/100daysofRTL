`timescale 1ns/1ps
module siso_tb();
	
	// Testbench variables
    logic sdi;
	logic clk;
	logic reset_n;
	logic sdo;
	
	// Instantiate the DUT
    siso dut(.*);
	initial
	   clk =0;
	// Create the clock signal
	always begin #0.5 clk = ~clk; end
	
    // Create stimulus	  
    initial begin
	    #1; // apply reset to the circuit
        reset_n = 0; sdi = 0;
		
		#1.3; // release the reset
		reset_n = 1;
		
		// Set sdi for 1 clock
		@(posedge clk); sdi = 1'b1; @(posedge clk); sdi = 1'b0;
        
		// Wait for the bit to shift
        repeat (5) @(posedge clk); 
		@(posedge clk); sdi = 1'b1; 
		@(posedge clk);
		@(posedge clk); sdi = 1'b0;
	end
	
    // This will stop the simulator when the time expires
    initial begin
        #40 $finish;
    end  
endmodule
