module pipo_tb();
    logic clk, reset;
    logic [n-1:0]d;
    logic [n-1:0]q;
    
    pipo dut(.*);
    
    initial begin
    clk=0;
    reset=0;
    end
    
    always
        #10 clk =~clk;
    
    initial begin
        d=4'b1101;
        #10 d=4'b1001;
        #10 d=4'b0001;
        #10 d=4'b0011;
        #10 d=4'b0101;
        #10 $finish;
    
    end
    
endmodule