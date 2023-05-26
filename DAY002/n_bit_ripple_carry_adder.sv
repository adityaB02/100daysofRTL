parameter n=4;
module n_bit_ripple_carry_adder(input logic [n-1:0]a,b,
    input logic carry_in,
    output logic [n-1:0]sum,
    output logic carry_out);
        
    logic [(n-2):0]carry;
    genvar i;
    generate
    for(i=0;i<n;i=i+1) begin
        if(i==0)
            full_adder adder (a[i],b[i],carry_in,sum[i],carry[i]);
        else if(i==(n-1))
            full_adder adder (a[i],b[i],carry[i-1],sum[i],carry_out); 
        else   
            full_adder adder (a[i],b[i],carry[i-1],sum[i],carry[i]);
    end
    endgenerate
endmodule


module full_adder(input logic i0,i1,c_in,
    output logic s, c_out);
    
    logic y0,y1,y2;
    
    xor(y0, i0, i1);
    xor(s, y0,c_in);
    and(y1, i0,i1);
    and(y2, y0,c_in);
    or(c_out, y2,y1);
    
endmodule