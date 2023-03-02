# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/djeljenje_s_pomakom.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  65 00 A0 E3 ;        mov r0,#101;A
<3,0>	00000004  32 10 A0 E3 ;        mov r1,#50;B
<4,0>	00000008  00 20 A0 E3 ;        mov r2,#0;rezultat
<5,0>	0000000C  00 30 A0 E3 ;        mov r3,#0;br_pomaka
<6,0>	00000010  01 00 12 E1 ;        tst r2,r1
<7,0>	00000014  0E 00 00 8A ;        bhi KRAJ
<8,0>	                      ;
<9,0>	00000018  80 44 11 E2 ;PORAV   ands r4,r1,#0x80000000;check MSB
<10,0>	0000001C  04 00 00 1A ;        bne DIV
<11,0>	00000020  81 00 50 E1 ;        cmp r0,r1,lsl #1;A>=2B
<12,0>	00000024  02 00 00 3A ;        blo DIV
<13,0>	00000028  01 30 83 E2 ;        add r3,r3,#1;povecaj broj pomaka
<14,0>	0000002C  81 10 A0 E1 ;        mov r1,r1,lsl #1;shift B
<15,0>	00000030  F8 FF FF EA ;        B PORAV
<16,0>	                      ;
<17,0>	00000034  01 00 50 E1 ;DIV     cmp r0,r1
<18,0>	00000038  01 00 40 20 ;        subhs r0,r0,r1
<19,0>	0000003C  01 20 82 22 ;        addhs r2,r2,#1
<20,0>	00000040  00 00 53 E3 ;        cmp r3,#0
<21,0>	00000044  A1 10 A0 11 ;        movne r1,r1,lsr #1
<22,0>	00000048  82 20 A0 11 ;        movne r2,r2,lsl #1
<23,0>	0000004C  01 30 43 12 ;        subne r3,r3,#1
<24,0>	00000050  F7 FF FF 1A ;        bne DIV
<25,0>	                      ;
<26,0>	00000054  40 E2 01 EF ;KRAJ    swi 123456
<27,0>	                      ;        
<28,0>	                      ;
<29,0>	                      ;
<30,0>	                      ;
<31,0>	                      ;
<32,0>	                      ;
#
# Debug Data
#
.debug:

#
#
# Assembling: OK