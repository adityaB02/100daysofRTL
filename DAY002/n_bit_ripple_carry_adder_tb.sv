module n_bit_ripple_carry_adder_tb();
    //localparam n=4;
    
    logic [0:n-1]a,b;
    logic carry_in;
    logic [0:n-1]sum;
    logic carry_out;
    
    n_bit_ripple_carry_adder dut(.*);
    
    initial begin
//            a=4'b1101;
//            b=4'b0010;
//            carry_in=1;
            a=$urandom_range(4'b0000,4'b1111);
            b=$urandom_range(4'b0000,4'b1111);
            carry_in = $random();
            #10;
            $finish;
        //$monitor("%d ", carry_out);
    end
    
    
    
endmodule