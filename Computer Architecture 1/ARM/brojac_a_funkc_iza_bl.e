# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/brojac_a_funkc_iza_bl.a
#
#
<1,0>	00000000  40 DD A0 E3 ;MAIN    mov sp,#0x1000
<2,0>	00000004  03 00 00 EB ;        bl FUNKC
<3,0>	00000008! 48 00 00 00 ;SR dw STRING
<4,0>	0000000C! 00 00 00 00 ;REZ DW 0
<5,0>	00000010  0C 00 1F E5 ;        ldr r0,REZ
<6,0>	00000014  40 E2 01 EF ;        swi 123456
<7,0>	                      ;        
<8,0>	00000018  07 00 2D E9 ;FUNKC   stmfd sp!,{r0-r2}
<9,0>	0000001C  04 00 9E E4 ;        ldr r0,[lr],#4;string
<10,0>	                      ;        
<11,0>	00000020  00 20 A0 E3 ;        mov r2,#0
<12,0>	                      ;
<13,0>	00000024  01 10 D0 E4 ;LOOP    ldrb r1,[r0],#1
<14,0>	00000028  00 00 51 E3 ;        cmp r1,#0
<15,0>	0000002C  02 00 00 0A ;        beq KRAJ
<16,0>	00000030  61 00 51 E3 ;        cmp r1,#0x61
<17,0>	00000034  01 20 82 02 ;        addeq r2,r2,#1
<18,0>	00000038  F9 FF FF EA ;        b LOOP
<19,0>	                      ;
<20,0>	0000003C  04 20 8E E4 ;KRAJ   str r2,[lr],#4
<21,0>	00000040  07 00 BD E8 ;        ldmfd sp!,{r0-r2} 
<22,0>	00000044  0E F0 A0 E1 ;        mov pc,lr     
<23,0>	                      ;
<24,0>	                      ;
<25,0>	                      ;
<26,0>	00000048! 61 62 61 62 ;STRING dstr "ababab"
|         61 62 00
#
# Debug Data
#
.debug:
<!3,0> <!4,0> 
#
#
# Assembling: OK