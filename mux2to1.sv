module mux2to1(input logic [3:0] i0,i1,
    input logic sel,
    output logic [3:0] y);
        assign y = sel ? i0:i1; 
endmodule