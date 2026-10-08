`timescale 1ns / 1ps

module tb_nand_xor_xnor;
    reg  A, B;
    wire xor_y, xnor_y;

    // Instantiate both designs
    xor_nand  dut_xor  (.A(A), .B(B), .Y(xor_y));
    xnor_nand dut_xnor (.A(A), .B(B), .Y(xnor_y));

    initial begin
        $display("A B | XOR XNOR");
        $display("------------");

        A = 0; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, xor_y, xnor_y);

        A = 0; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, xor_y, xnor_y);

        A = 1; B = 0; #10;
        $display("%b %b |  %b    %b", A, B, xor_y, xnor_y);

        A = 1; B = 1; #10;
        $display("%b %b |  %b    %b", A, B, xor_y, xnor_y);

        $finish;
    end
endmodule