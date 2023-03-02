# CONAS v3.0 output file
#
# Processor name: RV32I
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/RISC-V/gpio-test.a
#
#
<1,0>	00000000  37 ;        lui x18,%hi(GPIO)#adresa gpio
|         09
|         00
|         00
<2,0>	00000004  13 ;        addi x18,x18,%lo(GPIO)
|         09
|         89
|         03
<3,0>	00000008  83 ;        lw x19,0(x18)#GPIO
|         29
|         09
|         00
<4,0>	0000000C  13 ;        addi x20,x0,0b11100000#pa_ddr
|         0A
|         00
|         0E
<5,0>	00000010  23 ;        sw x20,8(x19)
|         A4
|         49
|         01
<6,0>	             ;
<7,0>	00000014  83 ;petlja  lw x21,0(x19)
|         AA
|         09
|         00
<8,0>	00000018  93 ;        andi x21,x21,0b10
|         FA
|         2A
|         00
<9,0>	0000001C  63 ;        bne x21,x0,uklj
|         98
|         0A
|         00
<10,0>	             ;
<11,0>	00000020  93 ;isklj   addi x21,x0,0
|         0A
|         00
|         00
<12,0>	00000024  23 ;        sw x21,0(x19)
|         A0
|         59
|         01
<13,0>	00000028  6F ;        jal x0,petlja
|         F0
|         DF
|         FE
<14,0>	             ;
<15,0>	0000002C  93 ;uklj    addi x21,x0,0b00100000
|         0A
|         00
|         02
<16,0>	00000030  23 ;        sw x21,0(x19)
|         A0
|         59
|         01
<17,0>	00000034  6F ;        jal x0,petlja
|         F0
|         1F
|         FE
<18,0>	             ;
<19,0>	             ;
<20,0>	             ;        
<21,0>	             ;
<22,0>	             ;
<23,0>	00000038! 00 ;GPIO    dw 0xFFFF0B00
|         0B
|         FF
|         FF
<24,0>	             ;
#
# Debug Data
#
.debug:

#
#
# Assembling: OK