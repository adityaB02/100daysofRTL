module mux2to1_tb();
    logic [3:0] i0,i1;
    logic sel;
    logic [3:0] y;
    mux2to1 dut(.*);
    initial
        sel =0;
    always
        #10 sel=~sel;
    initial begin
        i0=4'b0010; i1=4'b0001;
        #10 i0=4'b0011; i1=4'b0100;
        #10 i0=4'b0101; i1=4'b0110;
        #10 i0=4'b0111; i1=4'b1000;
        $finish;
    end
    
endmodule