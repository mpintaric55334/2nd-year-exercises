# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/funkcija_dijeljenje_s_pomakom_registarski_prijenos.a
#
#
<1,0>	00000000  40 DD A0 E3 ;MAIN    mov sp,#0x1000
<2,0>	00000004  23 00 A0 E3 ;        mov r0,#35;A
<3,0>	00000008  06 10 A0 E3 ;        mov r1,#6;B
<4,0>	0000000C  00 40 A0 E3 ;        mov r4,#0 ;rez
<5,0>	00000010  00 60 A0 E3 ;        mov r6,#0;ostatak
<6,0>	                      ;
<7,0>	00000014  00 00 00 EB ;        BL DIJELP
<8,0>	00000018  40 E2 01 EF ;        swi 123456
<9,0>	                      ;
<10,0>	                      ;
<11,0>	                      ;DIJELP
<12,0>	0000001C  2C 00 2D E9 ;        stmfd sp!,{r2,r3,r5}
<13,0>	00000020  00 50 A0 E3 ;        mov r5,#0;pomak
<14,0>	00000024  00 20 A0 E1 ;        mov r2,r0;A
<15,0>	00000028  01 30 A0 E1 ;        mov r3,r1;B
<16,0>	0000002C  83 00 52 E1 ;POMAK   cmp r2,r3,lsl#1
<17,0>	00000030  01 50 85 22 ;        addhs r5,r5,#1
<18,0>	00000034  83 30 A0 21 ;        movhs r3,r3,lsl #1
<19,0>	00000038  FB FF FF 2A ;        bhs POMAK
<20,0>	                      ;
<21,0>	0000003C  03 00 52 E1 ;DIV     cmp r2,r3
<22,0>	00000040  01 40 84 22 ;        addhs r4,r4,#1
<23,0>	00000044  03 20 42 20 ;        subhs r2,r2,r3
<24,0>	                      ;        
<25,0>	00000048  00 00 55 E3 ;        cmp r5,#0
<26,0>	0000004C  01 50 45 82 ;        subhi r5,r5,#1
<27,0>	00000050  A3 30 A0 81 ;        movhi r3,r3,lsr #1
<28,0>	00000054  84 40 A0 81 ;        movhi r4,r4,lsl #1
<29,0>	00000058  F7 FF FF 8A ;        bhi DIV
<30,0>	0000005C  02 60 A0 E1 ;        mov r6,r2
<31,0>	                      ;
<32,0>	00000060  2C 00 BD E8 ;        ldmfd sp!,{r2,r3,r5}
<33,0>	00000064  0E F0 A0 E1 ;        mov pc,lr
<34,0>	                      ;
<35,0>	                      ;        
#
# Debug Data
#
.debug:

#
#
# Assembling: OK