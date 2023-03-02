# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/ispit_mnozenje_iza_bl.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  40 DB A0 E3 ;        mov sp,#0x10000
<3,0>	00000004  02 00 00 EB ;        BL MNOZI
<4,0>	00000008! 05 00 00 00 ;OPER1 dw 5
<5,0>	0000000C! 06 00 00 00 ;OPER2 dw 6
<6,0>	00000010! 00 00 00 00 ;REZ   dw 0
<7,0>	                      ;        
<8,0>	                      ;
<9,0>	00000014  07 00 2D E9 ;MNOZI   stmfd sp!,{r0-r2}
<10,0>	00000018  04 00 9E E4 ;        ldr r0,[LR],#4 ;1operand
<11,0>	0000001C  04 10 9E E4 ;        ldr r1,[LR],#4  ;2operand
<12,0>	00000020  00 20 A0 E3 ;        mov r2,#0;rez
<13,0>	                      ;        
<14,0>	                      ;LOOP    
<15,0>	00000024  A1 10 B0 E1 ;        movs r1,r1,lsr #1
<16,0>	00000028  00 20 82 20 ;        addcs r2,r2,r0
<17,0>	0000002C  80 00 A0 E1 ;        mov r0,r0,lsl #1
<18,0>	00000030  00 00 51 E3 ;        cmp r1,#0
<19,0>	00000034  FA FF FF 1A ;        bne LOOP
<20,0>	                      ;
<21,0>	00000038  04 20 8E E4 ;        str r2,[LR],#4
<22,0>	0000003C  07 00 BD E8 ;        ldmfd sp!,{r0-r2}
<23,0>	00000040  0E F0 A0 E1 ;        mov pc,lr
<24,0>	                      ;        
#
# Debug Data
#
.debug:
<!4,0> <!5,0> <!6,0> 
#
#
# Assembling: OK