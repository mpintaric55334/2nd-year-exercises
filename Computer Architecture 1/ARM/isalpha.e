# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/isalpha.a
#
#
<1,0>	00000000  40 DB A0 E3 ;MAIN MOV SP, #0x10000
<2,0>	00000004  30 10 A0 E3 ;        MOV R1, #STRN
<3,0>	00000008  01 00 D1 E4 ;LOOP    LDRB R0, [R1], #1
<4,0>	0000000C  00 00 50 E3 ;        CMP R0, #0 ; kraj stringa?
<5,0>	00000010  05 00 00 0A ;        BEQ KRAJ
<6,0>	00000014  18 00 00 EB ;        BL ISALPHA
<7,0>	00000018  01 00 50 E3 ;        CMP R0, #1
<8,0>	0000001C  F9 FF FF 1A ;        BNE LOOP
<9,0>	00000020  20 00 A0 E3 ;SLOVO   MOV R0, #32 ; razmak=32
<10,0>	00000024  01 00 41 E5 ;        STRB R0, [R1, #-1]
<11,0>	00000028  F6 FF FF EA ;        B LOOP
<12,0>	0000002C  56 34 12 EF ;KRAJ SWI 0x123456
<13,0>	00000030! 41 73 38 20 ;STRN DSTR "As8 5kLvb7(Jd.$u"
|         35 6B 4C 76
|         62 37 28 4A
|         64 2E 24 75
|         00
<14,0>	                      ;
<15,0>	                      ;
<16,0>	                      ;
<17,0>	                      ;;lower
<18,0>	00000044  61 00 50 E3 ;ISLOWER cmp r0,#0X61
<19,0>	00000048  02 00 00 3A ;        blo NIJE2
<20,0>	0000004C  7A 00 50 E3 ;        cmp r0,#0x7A
<21,0>	00000050  00 00 00 8A ;        bhi NIJE2
<22,0>	                      ;
<23,0>	00000054  01 00 A0 E3 ;JE2   mov r0,#1
<24,0>	                      ;
<25,0>	00000058  00 00 A0 E3 ;NIJE2   mov r0,#0
<26,0>	                      ;
<27,0>	0000005C  0E F0 A0 E1 ;        mov pc,lr
<28,0>	                      ;
<29,0>	                      ;
<30,0>	                      ;;upper     
<31,0>	00000060  41 00 50 E3 ;ISUPPER cmp r0,#0X41
<32,0>	00000064  02 00 00 3A ;        blo NIJE1
<33,0>	00000068  5A 00 50 E3 ;        cmp r0,#0x5A
<34,0>	0000006C  00 00 00 8A ;        bhi NIJE1
<35,0>	                      ;
<36,0>	00000070  01 00 A0 E3 ;JE1      mov r0,#1
<37,0>	                      ;
<38,0>	00000074  00 00 A0 E3 ;NIJE1    mov r0,#0
<39,0>	                      ;
<40,0>	00000078  0E F0 A0 E1 ;        mov pc,lr
<41,0>	                      ;
<42,0>	                      ;;isalpha
<43,0>	                      ;
<44,0>	0000007C  00 40 2D E9 ;ISALPHA stmfd sp!,{lr}
<45,0>	                      ;
<46,0>	00000080  EF FF FF EB ;        BL ISLOWER
<47,0>	00000084  01 00 50 E3 ;        cmp r0,#1
<48,0>	00000088  00 00 00 0A ;        beq KRAJ1
<49,0>	                      ;
<50,0>	0000008C  F3 FF FF EB ;        BL ISUPPER
<51,0>	                      ;
<52,0>	00000090  00 40 BD E8 ;KRAJ1    ldmfd sp!,{lr}
<53,0>	00000094  0E F0 A0 E1 ;        mov pc,lr
<54,0>	                      ;        
<55,0>	                      ;        
#
# Debug Data
#
.debug:

#
#
# Assembling: OK