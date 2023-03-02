# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:\ARH\ARM\brojac_a_funkc_stog.a
#
#
<1,0>	00000000  40 DD A0 E3 ;MAIN    mov sp,#0x1000
<2,0>	00000004  54 00 A0 E3 ;        mov r0,#STRING
<3,0>	00000008  00 10 A0 E3 ;        mov r1,#0
<4,0>	0000000C  03 00 AD E9 ;        stmfa sp!,{r0,r1}
<5,0>	00000010  02 00 00 EB ;        bl FUNKC
<6,0>	00000014  04 10 9D E5 ;        ldr r1,[sp,#4]
<7,0>	00000018  08 D0 8D E2 ;        add sp,sp,#8
<8,0>	0000001C  40 E2 01 EF ;        SWI 123456
<9,0>	                      ;        
<10,0>	00000020  38 00 2D E9 ;FUNKC   stmfd sp!,{r3,r4,r5}
<11,0>	00000024  0C 30 9D E5 ;        ldr r3,[sp,#12]
<12,0>	00000028  10 40 9D E5 ;        ldr r4,[sp,#16]
<13,0>	0000002C  00 50 D3 E5 ;        ldrb r5,[r3]
<14,0>	                      ;
<15,0>	00000030  01 50 D3 E4 ;LOOP    ldrb r5,[r3],#1
<16,0>	00000034  00 00 55 E3 ;        cmp r5,#0
<17,0>	00000038  02 00 00 0A ;        beq KRAJ
<18,0>	0000003C  61 00 55 E3 ;        cmp r5,#0x61
<19,0>	00000040  01 40 84 02 ;        addeq r4,r4,#1
<20,0>	00000044  F9 FF FF EA ;        b LOOP
<21,0>	                      ;        
<22,0>	                      ;
<23,0>	00000048  10 40 8D E5 ;KRAJ    str r4,[sp,#16]
<24,0>	0000004C  38 00 BD E8 ;        ldmfd sp!,{r3,r4,r5}
<25,0>	                      ;        
<26,0>	00000050  0E F0 A0 E1 ;        mov pc,lr
<27,0>	                      ;
<28,0>	                      ;
<29,0>	                      ;
<30,0>	00000054! 61 62 63 61 ;STRING dstr "abcabba"
|         62 62 61 00
#
# Debug Data
#
.debug:

#
#
# Assembling: OK