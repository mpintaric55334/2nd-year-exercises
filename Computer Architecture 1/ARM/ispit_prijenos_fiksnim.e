# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/ispit_prijenos_fiksnim.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  40 DB A0 E3 ;        mov sp,#0x10000
<3,0>	00000004  00 00 00 EB ;        BL MNOZI
<4,0>	00000008  40 E2 01 EF ;        swi 123456
<5,0>	                      ;
<6,0>	0000000C  07 00 2D E9 ;MNOZI   stmfd sp!,{r0-r2}
<7,0>	00000010  10 00 9F E5 ;        ldr r0,A
<8,0>	00000014  10 10 9F E5 ;        ldr r1,BA
<9,0>	00000018  91 00 02 E0 ;        mul r2,r1,r0
<10,0>	0000001C  0C 20 8F E5 ;        str r2,REZ
<11,0>	00000020  07 00 2D E9 ;        stmfd sp!,{r0-r2}
<12,0>	00000024  0E F0 A0 E1 ;        mov pc,lr
<13,0>	                      ;
<14,0>	00000028! 05 00 00 00 ;A       dw 0x5
<15,0>	0000002C! 06 00 00 00 ;BA      dw 0x6
<16,0>	00000030! 00 00 00 00 ;REZ     dw 0x0
#
# Debug Data
#
.debug:
<!14,0> <!15,0> <!16,0> 
#
#
# Assembling: OK