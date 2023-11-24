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

@KBD
D=M
@KBD_NOT0
D;JGT
(SCREEN_NOT0)
@0
D=M //50
@23
D;JLE //D<=0
@16
M=D  //@16=50
@16834
D=A  //D=16384
@17  
M=D  //@17=16384
@17 
A=M  //A=16384
M=-1 //RAM[16384]=-1 
@17
D=M  //D=16384
@32
D=D+A  //D=16384+32=16416
@17  
M=D  //@17=16416
@16
MD=M-1  //MD=50-1
@10
D;JGT  //D>0 JUMP @10
@23
0;JMP  //JUMP @23

@KBD_EQ0
D;JEQ
(KBD_EQ0)

