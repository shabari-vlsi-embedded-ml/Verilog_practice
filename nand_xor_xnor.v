`timescale 1ns / 1ps

// =========================================================
// XOR using only NAND gates
// Y = A ^ B = A'B + AB'
// Uses 4 NAND gates
// =========================================================
module xor_nand (
    input  wire A,
    input  wire B,
    output wire Y
);
    wire n1, n2, n3;

    nand u1 (n1, A, B);      // n1 = ~(A & B)
    nand u2 (n2, A, n1);     // n2 = ~(A & ~(A & B))
    nand u3 (n3, B, n1);     // n3 = ~(B & ~(A & B))
    nand u4 (Y, n2, n3);     // Y  = A XOR B
endmodule


// =========================================================
// XNOR using only NAND gates
// Y = ~(A ^ B)
// Uses 5 NAND gates: 4 for XOR + 1 as inverter
// =========================================================
 module xnor_nand (
    input  wire A,
    input  wire B,
    output wire Y
);
    wire n1, n2, n3, xor_out;

    nand u1 (n1, A, B);          // n1 = ~(A & B)
    nand u2 (n2, A, n1);
    nand u3 (n3, B, n1);
    nand u4 (xor_out, n2, n3);   // xor_out = A XOR B
    nand u5 (Y, xor_out, xor_out); // Y = NOT(xor_out) = XNOR
endmodule