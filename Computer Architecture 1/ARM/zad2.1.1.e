# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/zad2.1.1.a
#
#
<1,0>	                      ;    org 0    
<2,0>	00000000  1C 00 9F E5 ;        ldr r0,POD
<3,0>	                      ;PETLJA  
<4,0>	00000004  00 10 90 E5 ;        ldr r1,[r0]
<5,0>	00000008  00 00 51 E3 ;        CMP R1,#0
<6,0>	0000000C  03 00 00 0A ;        BEQ KRAJ  
<7,0>	                      ;
<8,0>	00000010  00 00 00 5A ;POZITI BPL DALJE
<9,0>	                      ;
<10,0>	00000014  01 10 81 E2 ;        add r1,r1,#1
<11,0>	                      ;
<12,0>	00000018  04 10 80 E4 ;DALJE   str r1,[r0],#4
<13,0>	0000001C  F8 FF FF EA ;        B PETLJA
<14,0>	                      ;
<15,0>	00000020  40 E2 01 EF ;KRAJ swi 123456
<16,0>	                      ;
<17,0>	                      ;
<18,0>	                      ;
<19,0>	                      ;
<20,0>	00000024! 00 10 00 00 ;POD dw 0x1000
<21,0>	                      ;
<22,0>	                      ;        org 0x1000
<23,0>	00001000! FE FF FF FF ;                dw 0x0FFFFFFFE, 0x0FFFFFFFD, 0x2, 0x0FFFFFFEF, 0x11, 0x0
|         FD FF FF FF
|         02 00 00 00
|         EF FF FF FF
|         11 00 00 00
|         00 00 00 00
#
# Debug Data
#
.debug:
<!20,0> <!23,0> 
#
#
# Assembling: OK