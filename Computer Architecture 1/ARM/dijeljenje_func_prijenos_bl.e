# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/dijeljenje_func_prijenos_bl.a
#
#
<1,0>	00000000  40 DD A0 E3 ;MAIN    mov sp,#0x1000
<2,0>	00000004  06 00 00 EB ;        bl DIJELI
<3,0>	00000008! 23 00 00 00 ;DJELJ dw 35
<4,0>	0000000C! 06 00 00 00 ;DJELI dw 6
<5,0>	00000010! 00 00 00 00 ;REZ dw 0
<6,0>	00000014! 00 00 00 00 ;OST dw 0
<7,0>	00000018  10 00 1F E5 ;        ldr r0,REZ
<8,0>	0000001C  10 10 1F E5 ;        ldr r1,OST
<9,0>	00000020  40 E2 01 EF ;        swi 123456
<10,0>	                      ;        
<11,0>	                      ;
<12,0>	                      ;
<13,0>	00000024  07 00 2D E9 ;DIJELI  stmfd sp!,{r0-r2}
<14,0>	00000028  04 00 9E E4 ;        ldr r0,[lr],#4;A
<15,0>	0000002C  04 10 9E E4 ;        ldr r1,[lr],#4;B
<16,0>	00000030  00 20 A0 E3 ;        mov r2,#0;rez
<17,0>	                      ;        
<18,0>	00000034  01 00 50 E1 ;LOOP    cmp r0,r1
<19,0>	00000038  01 00 40 20 ;        subhs r0,r0,r1
<20,0>	0000003C  01 20 82 22 ;        addhs r2,r2,#1
<21,0>	00000040  FB FF FF 2A ;        bhs LOOP
<22,0>	                      ;        
<23,0>	00000044  04 20 8E E4 ;KRAJ    str r2,[lr],#4
<24,0>	00000048  04 00 8E E4 ;        str r0,[lr],#4
<25,0>	0000004C  07 00 BD E8 ;        ldmfd sp!,{r0-r2}
<26,0>	00000050  0E F0 A0 E1 ;        mov pc,lr
#
# Debug Data
#
.debug:
<!3,0> <!4,0> <!5,0> <!6,0> 
#
#
# Assembling: OK