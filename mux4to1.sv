module mux4to1(input logic [2:0]a[3:0],
    input logic sel[1:0],
    output logic out);
    
    logic [2:0]y[1:0];
    
    mux2to1 mux1(a[3:2], sel[0], y[1]);
    mux2to1 mux2(a[1:0], sel[0], y[0]);
    mux2to1 mux3(y[1:0], sel[1], out);
endmodule

module mux2to1(input logic [2:0]a[1:0],
    input logic sel,
    output logic y);
    
    assign y = sel? a[1]:a[0];
endmodule