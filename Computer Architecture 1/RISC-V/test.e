# CONAS v3.0 output file
#
# Processor name: RV32I
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/RISC-V/test.a
#
#
<1,0>	00000000  B7 ;        lui x1,%hi(GPIO)
|         00
|         00
|         00
<2,0>	00000004  93 ;        addi x1,x1,%lo(GPIO)
|         80
|         00
|         01
<3,0>	             ;
<4,0>	00000008  83 ;        lw x1,0(x1)
|         A0
|         00
|         00
<5,0>	             ;
<6,0>	0000000C  00 ;        halt
|         00
|         00
|         00
<7,0>	             ;
<8,0>	00000010! 00 ;GPIO    dw 0xFFFF0000
|         00
|         FF
|         FF
#
# Debug Data
#
.debug:

#
#
# Assembling: OK