# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/ispit_prijenos_s_registrima.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  05 00 A0 E3 ;        mov r0,#5
<3,0>	00000004  06 10 A0 E3 ;        mov r1,#6
<4,0>	00000008  00 00 00 EB ;        BL MNOZI
<5,0>	0000000C  40 E2 01 EF ;        swi 123456
<6,0>	                      ;
<7,0>	00000010  90 01 02 E0 ;MNOZI   mul r2,r0,r1
<8,0>	00000014  0E F0 A0 E1 ;        mov pc,lr
<9,0>	                      ;        
#
# Debug Data
#
.debug:

#
#
# Assembling: OK