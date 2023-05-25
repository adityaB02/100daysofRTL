module mux2to1(input logic a0,a1,
    input logic sel,
    output logic y);
    
    assign y = sel? a1:a0;
endmodule

module mux4to1(input logic a0,a1,a2,a3,
    input logic [0:1]sel,
    output logic out);
    
    logic y0,y1;
    
    mux2to1 mux1(a0, a1, sel[0], y0);
    mux2to1 mux2(a2, a3, sel[0], y1);
    mux2to1 mux3(y0, y1, sel[1], out);
endmodule