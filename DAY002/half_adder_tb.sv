module half_adder_tb();    
    logic input_0,input_1;
    logic out;
    
    half_adder dut(.*);
    
    initial begin
        input_0=0;input_1=0;
        #10 input_0=0;input_1=1;
        #10 input_0=1;input_1=0;
        #10 input_0=1;input_1=1;
        #10 $finish;
    end   
endmodule