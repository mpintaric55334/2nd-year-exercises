# CONAS v3.0 output file
#
# Processor name: RV32I
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/RISC-V/test1.a
#
#
<1,0>	00000000  B7 ;        lui x1,%hi(IZV)
|         00
|         00
|         00
<2,0>	00000004  93 ;        addi x1,x1,%lo(IZV)
|         80
|         00
|         50
<3,0>	00000008  B7 ;        lui x19,%hi(ADR)
|         19
|         00
|         00
<4,0>	0000000C  93 ;        addi x19,x19,%lo(ADR)
|         89
|         09
|         80
<5,0>	00000010  03 ;        lw x18,0(x1)
|         A9
|         00
|         00
<6,0>	00000014  23 ;        sw x1,0(x19)
|         A0
|         19
|         00
<7,0>	00000018  00 ;        halt
|         00
|         00
|         00
<8,0>	             ;
<9,0>	             ;
<10,0>	             ;
<11,0>	             ;
<12,0>	             ;
<13,0>	             ;
<14,0>	             ;
<15,0>	             ;        org 0x500
<16,0>	00000500! F4 ;IZV        dw 500
|         01
|         00
|         00
<17,0>	             ;
<18,0>	             ;        org 0x800
<19,0>	00000800! 00 ;ADR     dw 0
|         00
|         00
|         00
#
# Debug Data
#
.debug:
<!16,0> <!19,0> 
#
#
# Assembling: OK