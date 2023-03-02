# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:\ARH\ARM\dijeljenje_za_lab_proba.a
#
#
<1,0>	00000000  40 DD A0 E3 ;MAIN    mov sp,#0X1000
<2,0>	00000004  23 00 A0 E3 ;        mov r0,#35
<3,0>	00000008  80 10 9F E5 ;        ldr r1,BROJ
<4,0>	0000000C  01 20 A0 E3 ;        MOV r2,#1
<5,0>	00000010  00 30 A0 E3 ;        mov r3,#0
<6,0>	00000014  00 40 A0 E3 ;        mov r4,#0
<7,0>	00000018  1F 00 AD E9 ;        stmfa sp!,{r0,r1,r2,r3,r4}
<8,0>	0000001C  01 00 00 EB ;        BL DIJELI
<9,0>	                      ;        
<10,0>	00000020  00 40 9D E5 ;        ldr r4,[sp]
<11,0>	00000024  14 D0 5D E2 ;        subs sp,sp,#20
<12,0>	                      ;
<13,0>	                      ;
<14,0>	                      ;
<15,0>	00000028  1F 00 AD E9 ;DIJELI  stmfa sp!,{r0,r1,r2,r3,r4}
<16,0>	0000002C  24 00 1D E5 ;        ldr r0,[sp,#-36] ;1op
<17,0>	00000030  20 10 1D E5 ;        ldr r1,[sp,#-32] ;2op
<18,0>	00000034  1C 20 1D E5 ;        ldr r2,[sp,#-28] ;1pred
<19,0>	00000038  18 30 1D E5 ;        ldr r3,[sp,#-24];2pred
<20,0>	0000003C  00 40 A0 E3 ;        mov r4,#0;rj
<21,0>	                      ;        ;negativne clanove pretvaramo u pozitivne, i pomocu predznaka operanada nalazimo predznak rjesenja
<22,0>	                      ;        ;1 operand
<23,0>	00000040  01 00 52 E3 ;        cmp r2,#1
<24,0>	00000044  00 00 60 12 ;        rsbne r0,r0,#0;operand je negativan,spremamo njegov komplement
<25,0>	                      ;        ;2 operand
<26,0>	00000048  01 00 53 E3 ;        cmp r3,#1
<27,0>	0000004C  00 10 61 12 ;        rsbne r1,r1,#0;;operand je negativan,spremamo njegov komplement
<28,0>	                      ;        ;r4 ce postati registar u kojeg spremamo predzank rjesenja
<29,0>	00000050  03 00 52 E1 ;        cmp r2,r3
<30,0>	00000054  00 20 A0 13 ;        movne r2,#0;nisu isti,negativan je
<31,0>	00000058  01 20 A0 03 ;        moveq r2,#1;isti su, pozitivan je
<32,0>	                      ;
<33,0>	                      ;
<34,0>	0000005C  00 40 A0 E3 ;        mov r4,#0;rjesenje
<35,0>	                      ;        
<36,0>	                      ;        ;pocinje dijeljenje
<37,0>	00000060  00 00 51 E3 ;        cmp r1,#0
<38,0>	00000064  00 40 A0 03 ;        moveq r4,#0
<39,0>	00000068  03 00 00 0A ;        beq GOTOVO
<40,0>	                      ;
<41,0>	0000006C  01 00 50 E1 ;PETLJA  cmp r0,r1;dok je r6>r7
<42,0>	00000070  01 40 84 22 ;        addhs r4,r4,#1;rezultat se dize za 1
<43,0>	00000074  01 00 40 20 ;        subhs r0,r0,r1
<44,0>	00000078  FB FF FF 2A ;        bhs PETLJA
<45,0>	                      ;
<46,0>	                      ;GOTOVO  ;predznak rj
<47,0>	0000007C  01 00 52 E3 ;        cmp r2,#1
<48,0>	00000080  00 40 64 12 ;        rsbne r4,r4,#0;negativan broj
<49,0>	00000084  14 40 0D E5 ;        str r4,[sp,#-20];spremi rezultat
<50,0>	00000088  1F 00 3D E8 ;        ldmfa sp!,{r0,r1,r2,r3,r4}
<51,0>	                      ;        
<52,0>	0000008C  0E F0 A0 E1 ;        mov pc,lr
<53,0>	                      ;         
<54,0>	                      ;
<55,0>	                      ;
<56,0>	                      ;
<57,0>	00000090! FE FF FF FF ;BROJ DW 0XFFFFFFFE
#
# Debug Data
#
.debug:

#
#
# Assembling: OK