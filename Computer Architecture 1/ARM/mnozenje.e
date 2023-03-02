# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/mnozenje.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  05 00 A0 E3 ;        mov r0,#5
<3,0>	00000004  05 10 A0 E3 ;        mov r1,#5
<4,0>	00000008  00 20 A0 E3 ;        mov r2,#0
<5,0>	                      ;
<6,0>	0000000C  A1 10 B0 E1 ;PETLJA  movs r1,r1,lsr #1
<7,0>	00000010  00 20 82 20 ;        addcs r2,r2,r0
<8,0>	00000014  80 00 B0 E1 ;        movs r0,r0,lsl #1
<9,0>	00000018  00 00 51 E3 ;        cmp r1,#0
<10,0>	0000001C  00 00 00 0A ;        beq KRAJ
<11,0>	00000020  F9 FF FF EA ;        b PETLJA
<12,0>	                      ;
<13,0>	00000024  40 E2 01 EF ;KRAJ swi 123456
<14,0>	                      ;        
#
# Debug Data
#
.debug:

#
#
# Assembling: OK