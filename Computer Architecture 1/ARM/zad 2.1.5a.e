# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/zad 2.1.5a.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  34 00 9F E5 ;        ldr r0,IZVOR
<3,0>	00000004  34 10 9F E5 ;        ldr r1,ODRED
<4,0>	00000008  03 20 A0 E3 ;        mov r2,#3 
<5,0>	                      ;
<6,0>	0000000C  04 30 90 E4 ;PETLJA        ldr r3,[r0],#4
<7,0>	00000010  00 40 A0 E3 ;        mov r4,#0
<8,0>	00000014  03 00 13 E1 ;        TST r3,r3
<9,0>	00000018  01 00 00 5A ;        bpl POZ
<10,0>	0000001C  00 30 63 E2 ;NEG     rsb r3,r3,#0
<11,0>	00000020  80 4C A0 E3 ;        mov r4,#0x00008000
<12,0>	                      ;
<13,0>	00000024  04 30 81 E4 ;POZ     str r3,[r1],#4
<14,0>	00000028  04 40 81 E4 ;        str r4,[r1],#4
<15,0>	0000002C  01 20 52 E2 ;        subs r2,r2,#1
<16,0>	00000030  00 00 00 0A ;        beq KRAJ
<17,0>	00000034  F4 FF FF EA ;        B PETLJA
<18,0>	00000038  40 E2 01 EF ;KRAJ    swi 123456
<19,0>	                      ;
<20,0>	                      ;
<21,0>	                      ;
<22,0>	0000003C! 00 10 00 00 ;IZVOR dw 0x1000
<23,0>	00000040! 00 20 00 00 ;ODRED dw 0x2000
<24,0>	                      ;        org 0x1000
<25,0>	00001000! 01 00 00 80 ;                dw 0x80000001,0x80000005,3
|         05 00 00 80
|         03 00 00 00
#
# Debug Data
#
.debug:
<!23,0> <!25,0> 
#
#
# Assembling: OK