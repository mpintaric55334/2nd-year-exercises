# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/zad2.1.3.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  24 00 9F E5 ;        ldr r0,ADRESA
<3,0>	00000004  24 30 9F E5 ;        ldr r3,STORE
<4,0>	00000008  00 10 A0 E3 ;        mov r1,#0
<5,0>	                      ;
<6,0>	0000000C  01 10 81 E2 ;PETLJA  add r1,r1,#1
<7,0>	00000010  32 00 51 E3 ;        cmp r1,#50
<8,0>	00000014  03 00 00 0A ;        beq KRAJ
<9,0>	00000018  04 20 90 E4 ;        ldr r2,[r0],#4
<10,0>	0000001C  02 29 A0 E1 ;        mov r2,r2,LSL #18
<11,0>	00000020  42 29 A0 E1 ;        mov r2,r2,ASR #18
<12,0>	00000024  04 20 83 E4 ;        str r2,[r3],#4
<13,0>	00000028  40 E2 01 EF ;KRAJ    swi 123456
<14,0>	                      ;        
<15,0>	                      ;
<16,0>	                      ;
<17,0>	                      ;
<18,0>	                      ;
<19,0>	                      ;
<20,0>	                      ;
<21,0>	0000002C! 00 21 00 00 ;ADRESA dw 0x2100
<22,0>	00000030! 00 31 00 00 ;STORE  dw 0x3100
#
# Debug Data
#
.debug:

#
#
# Assembling: OK