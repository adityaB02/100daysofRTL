module full_adder(input logic i0,i1,carry_in,
    output logic sum, carry_out);
    
    logic y0,y1,y2;
    
    xor(y0, i0, i1);
    xor(sum, y0,carry_in);
    and(y1, i0,i1);
    and(y2, y0,carry_in);
    or(carry_out, y2,y1);
    
endmodule