# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/promijeni_a_u_b_funkcija_s_fiksnim.a
#
#
<1,0>	00000000  40 DD A0 E3 ;MAIN    mov sp,#0x1000
<2,0>	00000004  58 00 A0 E3 ;        mov r0,#STRING
<3,0>	00000008  40 00 8F E5 ;        str r0,ST
<4,0>	0000000C  01 00 00 EB ;        BL F
<5,0>	00000010  3C 00 9F E5 ;        ldr r0,REZ
<6,0>	00000014  40 E2 01 EF ;        swi 123456
<7,0>	                      ;        
<8,0>	                      ;
<9,0>	00000018  07 00 2D E9 ;F       stmfd sp!,{r0-r2}
<10,0>	0000001C  2C 00 9F E5 ;        ldr r0,ST
<11,0>	00000020  00 10 A0 E3 ;        mov r1,#0
<12,0>	                      ;LOOP
<13,0>	00000024  00 20 D0 E5 ;        ldrb r2,[r0]
<14,0>	00000028  00 00 52 E3 ;        cmp r2,#0
<15,0>	0000002C  04 00 00 0A ;        beq KRAJ
<16,0>	00000030  61 00 52 E3 ;DALJE   cmp r2,#0x61
<17,0>	00000034  62 20 A0 03 ;        moveq r2,#0x62
<18,0>	00000038  01 10 81 02 ;        addeq r1,r1,#1
<19,0>	0000003C  01 20 C0 E4 ;        strb r2,[r0],#1
<20,0>	00000040  F7 FF FF EA ;        b LOOP
<21,0>	                      ;KRAJ
<22,0>	00000044  08 10 8F E5 ;        str r1,REZ
<23,0>	00000048  07 00 BD E8 ;        ldmfd sp!,{r0-r2}
<24,0>	0000004C  0E F0 A0 E1 ;        mov pc,lr
<25,0>	                      ;
<26,0>	                      ;
<27,0>	                      ;
<28,0>	00000050! 00 00 00 00 ;ST dw 0
<29,0>	00000054! 00 00 00 00 ;REZ dw 0
<30,0>	00000058! 61 62 61 62 ;STRING dstr "abababa"
|         61 62 61 00
#
# Debug Data
#
.debug:
<!28,0> <!29,0> <!30,0> 
#
#
# Assembling: OK