module full_adder_tb();
    logic i0,i1,carry_in;
    logic sum, carry_out;
    
    full_adder dut(.*);
    
    initial begin
        i0=0;i1=0;carry_in=0;
        #10 i0=0;i1=0;carry_in=1;
        #10 i0=0;i1=1;carry_in=0;
        #10 i0=0;i1=1;carry_in=1;
        #10 i0=1;i1=0;carry_in=0;
        #10 i0=1;i1=0;carry_in=1;
        #10 i0=1;i1=1;carry_in=0;
        #10 i0=1;i1=1;carry_in=1;
    
    end
endmodule