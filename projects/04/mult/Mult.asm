// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
    @R2
    M=0     // R2 = 0
(LOOP)
    @R1
    D=M     // D = R1
    @END
    D;JEQ   // If R1 == 0, goto END
    @R0
    D=M     // D = R0
    @R2
    M=D+M
    @R1
    M=M-1   // R1 -= 1
    @LOOP
    0;JMP   // Goto LOOP
(END)
    @END
    0;JMP