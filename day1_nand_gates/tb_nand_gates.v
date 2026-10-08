`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2026 20:32:33
// Design Name: 
// Module Name: tb_nand_gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_nand_gates;
    reg A, B;
    wire Y_not, Y_and, Y_or;

    // Instantiate DUTs
    not_nand u_not (.A(A), .Y(Y_not));
    and_nand u_and (.A(A), .B(B), .Y(Y_and));
    or_nand  u_or  (.A(A), .B(B), .Y(Y_or));

    initial begin
        $display("Time | A B | NOT(A) AND(A,B) OR(A,B)");
        $monitor("%0t  | %b %b |   %b      %b       %b",
                 $time, A, B, Y_not, Y_and, Y_or);

        // Apply all input combinations
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule

