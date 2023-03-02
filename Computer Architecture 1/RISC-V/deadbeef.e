# CONAS v3.0 output file
#
# Processor name: RV32I
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/RISC-V/deadbeef.a
#
#
<1,0>	00000000  B7 ;        lui x1,%hi(0xDEADB)
|         F0
|         0D
|         00
<2,0>	00000004  93 ;        addi x1,x1,%lo(0xEEF)
|         80
|         F0
|         EE
<3,0>	00000008  13 ;        addi sp,x0,0x100
|         01
|         00
|         10
<4,0>	0000000C  93 ;        addi x5,x0,5
|         02
|         50
|         00
<5,0>	             ;
<6,0>	00000010  00 ;        halt
|         00
|         00
|         00
<7,0>	             ;
<8,0>	             ;
<9,0>	             ;
<10,0>	             ;
#
# Debug Data
#
.debug:

#
#
# Assembling: OK