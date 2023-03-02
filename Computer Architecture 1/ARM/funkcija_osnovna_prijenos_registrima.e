# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/funkcija_osnovna_prijenos_registrima.a
#
#
<1,0>	00000000  40 DD A0 E3 ;MAIN    mov sp,#0x1000
<2,0>	00000004  05 00 A0 E3 ;        mov r0,#5
<3,0>	00000008  04 10 A0 E3 ;        mov r1,#4
<4,0>	0000000C  01 00 00 EB ;        BL RAZL_KV
<5,0>	                      ;
<6,0>	00000010  18 00 8F E5 ;        str r0,REZ
<7,0>	00000014  40 E2 01 EF ;        swi 123456
<8,0>	                      ;
<9,0>	                      ;RAZL_KV
<10,0>	00000018  04 00 2D E9 ;        stmfd sp!,{r2}
<11,0>	0000001C  90 00 02 E0 ;        MUL r2,r0,r0
<12,0>	00000020  91 01 00 E0 ;        MUL r0,r1,r1
<13,0>	00000024  00 00 42 E0 ;        sub r0,r2,r0
<14,0>	00000028  04 00 BD E8 ;        ldmfd sp!,{r2}
<15,0>	0000002C  0E F0 A0 E1 ;        mov pc,lr    
<16,0>	                      ;
<17,0>	00000030! 00 00 00 00 ;REZ dw 0
#
# Debug Data
#
.debug:

#
#
# Assembling: OK