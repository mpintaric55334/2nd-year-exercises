# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/dijeljenje_s_pomako_pokusajsam.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  23 00 A0 E3 ;        mov r0,#35
<3,0>	00000004  08 10 A0 E3 ;        mov r1,#8
<4,0>	00000008  00 20 A0 E3 ;        mov r2,#0
<5,0>	0000000C  80 34 A0 E3 ;        mov r3,#0x80000000
<6,0>	00000010  00 50 A0 E3 ;        mov r5,#0
<7,0>	                      ;        
<8,0>	00000014  01 40 13 E0 ;PORAV   ands r4,r3,r1
<9,0>	00000018  03 00 00 1A ;        bne DIV
<10,0>	0000001C  81 00 50 E1 ;        cmp r0,r1,lsl #1
<11,0>	00000020  01 20 82 22 ;        addhs r2,r2,#1
<12,0>	00000024  81 10 A0 21 ;        movhs r1,r1,lsl#1
<13,0>	00000028  F9 FF FF 2A ;        bhs PORAV
<14,0>	                      ;
<15,0>	0000002C  01 00 50 E1 ;DIV     cmp r0,r1
<16,0>	00000030  01 00 40 20 ;        subhs r0,r0,r1
<17,0>	00000034  01 50 85 22 ;        addhs r5,r5,#1
<18,0>	00000038  00 00 52 E3 ;        cmp r2,#0
<19,0>	0000003C  A1 10 A0 81 ;        movhi r1,r1,lsr #1
<20,0>	00000040  85 50 A0 81 ;        movhi r5,r5,lsl #1
<21,0>	00000044  01 20 42 82 ;        subhi r2,r2,#1
<22,0>	00000048  F7 FF FF 8A ;        bhi DIV
<23,0>	                      ;
<24,0>	0000004C  40 E2 01 EF ;KRAJ swi 123456
<25,0>	                      ;
#
# Debug Data
#
.debug:

#
#
# Assembling: OK