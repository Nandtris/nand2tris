// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// Reverse Fill.asm edition. 
// the Fill.asm I do NOT kown.
@KBD
D=M
@LOOP1
D;JNE

@SCREEN //@16384 & reset pointer
D=A
@POINTER
M=D
(LOOP)
@POINTER
A=M
M=-1
@POINTER
D=M
//@32
@1
D=D+A
@POINTER
M=D
@KBD
D=M
@LOOP
D;JEQ


@SCREEN
D=A
@POINTER
M=D
(LOOP1)
@POINTER
A=M
M=0
@POINTER
D=M
@1
D=D+A
@POINTER
M=D
@KBD
D=M
@LOOP1
D;JNE


@SCREEN
D=A
@POINTER //reset pointer=16384
M=D
@KBD
D=M
@LOOP
D;JEQ