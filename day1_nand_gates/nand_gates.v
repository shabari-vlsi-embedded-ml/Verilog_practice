`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2026 20:30:40
// Design Name: 
// Module Name: nand_gates
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


// NOT using NAND only
module not_nand (
    input  wire A,
    output wire Y
);
    // Y = ~(A & A)
    nand u_not (Y, A, A);
endmodule

// AND using NAND only
module and_nand (
    input  wire A,
    input  wire B,
    output wire Y
);
    wire n1;
    // n1 = ~(A & B)
    nand u1 (n1, A, B);
    // Y = ~(n1 & n1) = NOT(n1)
    nand u2 (Y, n1, n1);
endmodule

// OR using NAND only
module or_nand (
    input  wire A,
    input  wire B,
    output wire Y
);
    wire na, nb;
    // na = ~(A & A) = NOT A
    nand u_na (na, A, A);
    // nb = ~(B & B) = NOT B
    nand u_nb (nb, B, B);
    // Y = ~(na & nb) = A OR B
    nand u_or (Y, na, nb);
endmodule