# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/zad 2.1.2.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  20 00 9F E5 ;        ldr r0,POD
<3,0>	00000004  00 10 90 E5 ;PETLJA  ldr r1,[r0]
<4,0>	00000008  00 00 51 E3 ;        cmp r1,#0
<5,0>	0000000C  04 00 00 0A ;        beq KRAJ
<6,0>	00000010  01 00 00 5A ;POZ     bpl DALJE
<7,0>	                      ;
<8,0>	00000014  01 10 E0 E1 ;NEG     mvn r1,r1
<9,0>	00000018  80 14 81 E3 ;        orr r1,r1,#0x80000000 
<10,0>	                      ;
<11,0>	0000001C  04 10 80 E4 ;DALJE   str r1,[r0],#4
<12,0>	00000020  F7 FF FF EA ;        B PETLJA
<13,0>	00000024  40 E2 01 EF ;KRAJ    swi 123456
<14,0>	                      ;
<15,0>	00000028! 00 10 00 00 ;POD dw 0x1000
<16,0>	                      ; ORG 0x1000
<17,0>	00001000! FE FF FF FF ;        DW 0x0FFFFFFFE, 0x0FFFFFFFD, 0x2, 0x0FFFFFFEF, 0x1671, 0x0
|         FD FF FF FF
|         02 00 00 00
|         EF FF FF FF
|         71 16 00 00
|         00 00 00 00
#
# Debug Data
#
.debug:
<!17,0> 
#
#
# Assembling: OK