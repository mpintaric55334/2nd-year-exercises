# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/temperatura.a
#
#
<1,0>	00000000  6C 00 9F E5 ;        ldr r0,GPIO
<2,0>	00000004  80 10 A0 E3 ;        mov r1,#0b10000000
<3,0>	00000008  08 10 80 E5 ;        str r1,[r0,#8]
<4,0>	0000000C  00 10 A0 E3 ;        mov r1,#0b00000000
<5,0>	00000010  0C 10 80 E5 ;        str r1,[r0,#12]
<6,0>	00000014  0D 20 A0 E3 ;        mov r2,#0x0D
<7,0>	00000018  0C 00 00 EB ;        bl LCDWR
<8,0>	                      ;        
<9,0>	                      ;        
<10,0>	0000001C  00 30 90 E5 ;PETLJA  ldr r3,[r0]
<11,0>	00000020  40 30 13 E2 ;        ands r3,r3,#0b01000000
<12,0>	00000024  FC FF FF 0A ;        beq PETLJA
<13,0>	                      ;        
<14,0>	00000028  00 20 90 E5 ;        ldr r2,[r0]
<15,0>	0000002C  1F 20 02 E2 ;        and r2,r2,#0b00011111
<16,0>	00000030  06 00 00 EB ;        bl LCDWR
<17,0>	00000034  80 20 82 E3 ;        orr r2,r2,#0b10000000
<18,0>	00000038  00 20 80 E5 ;        str r2,[r0]
<19,0>	0000003C  7F 20 02 E2 ;        and r2,r2,#0x7F
<20,0>	00000040  00 20 80 E5 ;        str r2,[r0]
<21,0>	00000044  0A 20 A0 E3 ;        mov r2,#0x0A
<22,0>	00000048  00 00 00 EB ;        bl LCDWR
<23,0>	0000004C  F2 FF FF EA ;        b PETLJA
<24,0>	                      ;
<25,0>	00000050  05 20 A0 E3 ;LCDWR   mov r2,#5
<26,0>	00000054  7F 20 02 E2 ;        and r2,r2,#0x7F
<27,0>	00000058  04 20 80 E5 ;        str r2,[r0,#4]
<28,0>	0000005C  80 20 82 E3 ;        orr r2,r2,#0x80
<29,0>	00000060  04 20 80 E5 ;        str r2,[r0,#4]
<30,0>	00000064  7F 20 02 E2 ;        and r2,r2,#0x7F
<31,0>	00000068  04 20 80 E5 ;        str r2,[r0,#4]
<32,0>	0000006C  0E F0 A0 E1 ;        mov pc,lr        
<33,0>	                      ;
<34,0>	00000070  40 E2 01 EF ;KRAJ    swi 123456
<35,0>	                      ;
<36,0>	                      ;
<37,0>	                      ;
<38,0>	                      ;
<39,0>	                      ;
<40,0>	00000074! 00 0F FF FF ;GPIO    dw 0xFFFF0F00
#
# Debug Data
#
.debug:

#
#
# Assembling: OK