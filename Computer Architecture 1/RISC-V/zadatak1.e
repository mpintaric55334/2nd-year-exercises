# CONAS v3.0 output file
#
# Processor name: RV32I
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/RISC-V/zadatak1.a
#
#
<1,0>	             ;        ;#inicijalizacija stoga
<2,0>	00000000  37 ;        lui sp,%hi(0x5000)
|         51
|         00
|         00
<3,0>	00000004  13 ;        addi sp,sp,%lo(0x5000)
|         01
|         01
|         00
<4,0>	             ;
<5,0>	             ;        ;#ucitavanje adrese
<6,0>	00000008  37 ;        lui x18,%hi(0x500)
|         09
|         00
|         00
<7,0>	0000000C  13 ;        addi x18,x18,%lo(0x500)   
|         09
|         09
|         50
<8,0>	             ;        ;#ucitavanje GPIO
<9,0>	00000010  B7 ;        lui x19,%hi(GPIO)
|         09
|         00
|         00
<10,0>	00000014  93 ;        addi x19,x19,%lo(GPIO);#adresa gpioa
|         89
|         C9
|         27
<11,0>	00000018  03 ;        lw x20,0(x19)     ;#GPIO
|         AA
|         09
|         00
<12,0>	0000001C  03 ;        lw x10,0(x18)
|         25
|         09
|         00
<13,0>	00000020  93 ;        addi x31,x0,0x00 ;#pb_ddr
|         0F
|         00
|         00
<14,0>	00000024  23 ;        sw x31,12(x20);#spremi pb_ddr
|         26
|         FA
|         01
<15,0>	             ;        ;#dodavanje vrijednosti registrima
<16,0>	00000028  93 ;        addi x21,x0,100 ;#x21=100
|         0A
|         40
|         06
<17,0>	0000002C  13 ;        addi x22,x0,90 ;#x21=90
|         0B
|         A0
|         05
<18,0>	00000030  93 ;        addi x23,x0,50 ;#x21=50
|         0B
|         20
|         03
<19,0>	00000034  13 ;        addi x24,x0,40 ;#x21=40
|         0C
|         80
|         02
<20,0>	00000038  93 ;        addi x25,x0,10 ;#x21=10
|         0C
|         A0
|         00
<21,0>	0000003C  13 ;        addi x26,x0,9 ;#x21=9
|         0D
|         90
|         00
<22,0>	00000040  93 ;        addi x27,x0,5 ;#x21=5
|         0D
|         50
|         00
<23,0>	00000044  13 ;        addi x28,x0,4 ;#x21=4
|         0E
|         40
|         00
<24,0>	00000048  93 ;        addi x29,x0,1 ;#x21=1
|         0E
|         10
|         00
<25,0>	             ;
<26,0>	0000004C  EF ;        jal ra,PRETVORI
|         00
|         80
|         00
<27,0>	00000050  00 ;        halt
|         00
|         00
|         00
<28,0>	             ;
<29,0>	             ;
<30,0>	             ;
<31,0>	             ;PRETVORI
<32,0>	             ;
<33,0>	             ;        ;#kontekst
<34,0>	00000054  23 ;        sw x30,0(sp)
|         20
|         E1
|         01
<35,0>	00000058  13 ;        addi sp,sp,-4     
|         01
|         C1
|         FF
<36,0>	             ;        ;#ocisti
<37,0>	0000005C  13 ;        addi x30,x0,0x0D
|         0F
|         D0
|         00
<38,0>	00000060  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<39,0>	00000064  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<40,0>	00000068  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<41,0>	0000006C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<42,0>	00000070  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<43,0>	00000074  23 ;        sw x30,4(x20)   
|         22
|         EA
|         01
<44,0>	             ;
<45,0>	00000078  63 ;petlja  beq x10,x0,gotovo
|         0E
|         05
|         1C
<46,0>	0000007C  63 ;        bge x10,x21,sto
|         52
|         55
|         03
<47,0>	00000080  63 ;        bge x10,x22,deved
|         52
|         65
|         05
<48,0>	00000084  63 ;        bge x10,x23,pede
|         50
|         75
|         09
<49,0>	00000088  63 ;        bge x10,x24,cetrd
|         50
|         85
|         0B
<50,0>	0000008C  63 ;        bge x10,x25,deset
|         5E
|         95
|         0D
<51,0>	00000090  63 ;        bge x10,x26,devet
|         5E
|         A5
|         0F
<52,0>	00000094  63 ;        bge x10,x27,pet
|         5C
|         B5
|         13
<53,0>	00000098  63 ;        bge x10,x28,cetri
|         5C
|         C5
|         15
<54,0>	0000009C  63 ;        bge x10,x29,jedn
|         5A
|         D5
|         19
<55,0>	             ;
<56,0>	             ;sto     ;#100=C
<57,0>	000000A0  13 ;        addi x30,x0,0x43
|         0F
|         30
|         04
<58,0>	000000A4  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<59,0>	000000A8  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<60,0>	000000AC  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<61,0>	000000B0  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<62,0>	000000B4  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<63,0>	000000B8  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<64,0>	000000BC  13 ;        addi x10,x10,-100
|         05
|         C5
|         F9
<65,0>	000000C0  6F ;        jal x0,petlja
|         F0
|         9F
|         FB
<66,0>	             ;
<67,0>	             ;deved   ;#90=XC
<68,0>	             ;        ;#X
<69,0>	000000C4  13 ;        addi x30,x0,0x58
|         0F
|         80
|         05
<70,0>	000000C8  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<71,0>	000000CC  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<72,0>	000000D0  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<73,0>	000000D4  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<74,0>	000000D8  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<75,0>	000000DC  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<76,0>	             ;        ;#C
<77,0>	000000E0  13 ;        addi x30,x0,0x43
|         0F
|         30
|         04
<78,0>	000000E4  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<79,0>	000000E8  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<80,0>	000000EC  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<81,0>	000000F0  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<82,0>	000000F4  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<83,0>	000000F8  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<84,0>	000000FC  13 ;        addi x10,x10,-90
|         05
|         65
|         FA
<85,0>	00000100  6F ;        jal x0,petlja
|         F0
|         9F
|         F7
<86,0>	             ;
<87,0>	             ;pede    ;#50=L
<88,0>	00000104  13 ;        addi x30,x0,0x4C
|         0F
|         C0
|         04
<89,0>	00000108  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<90,0>	0000010C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<91,0>	00000110  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<92,0>	00000114  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<93,0>	00000118  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<94,0>	0000011C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<95,0>	00000120  13 ;        addi x10,x10,-50
|         05
|         E5
|         FC
<96,0>	00000124  6F ;        jal x0,petlja
|         F0
|         5F
|         F5
<97,0>	             ;cetrd   ;#40=XL
<98,0>	             ;        ;#X
<99,0>	00000128  13 ;        addi x30,x0,0x58
|         0F
|         80
|         05
<100,0>	0000012C  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<101,0>	00000130  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<102,0>	00000134  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<103,0>	00000138  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<104,0>	0000013C  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<105,0>	00000140  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<106,0>	             ;        ;#L
<107,0>	00000144  13 ;        addi x30,x0,0x4C
|         0F
|         C0
|         04
<108,0>	00000148  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<109,0>	0000014C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<110,0>	00000150  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<111,0>	00000154  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<112,0>	00000158  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<113,0>	0000015C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<114,0>	00000160  13 ;        addi x10,x10,-40
|         05
|         85
|         FD
<115,0>	00000164  6F ;        jal x0,petlja
|         F0
|         5F
|         F1
<116,0>	             ;
<117,0>	             ;deset   ;#10=X
<118,0>	00000168  13 ;        addi x30,x0,0x58
|         0F
|         80
|         05
<119,0>	0000016C  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<120,0>	00000170  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<121,0>	00000174  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<122,0>	00000178  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<123,0>	0000017C  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<124,0>	00000180  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<125,0>	00000184  13 ;        addi x10,x10,-10
|         05
|         65
|         FF
<126,0>	00000188  6F ;        jal x0,petlja
|         F0
|         1F
|         EF
<127,0>	             ;
<128,0>	             ;devet   ;#9=IX
<129,0>	             ;        ;#I
<130,0>	0000018C  13 ;        addi x30,x0,0x49
|         0F
|         90
|         04
<131,0>	00000190  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<132,0>	00000194  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<133,0>	00000198  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<134,0>	0000019C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<135,0>	000001A0  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<136,0>	000001A4  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<137,0>	             ;        ;#L
<138,0>	000001A8  13 ;        addi x30,x0,0x58
|         0F
|         80
|         05
<139,0>	000001AC  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<140,0>	000001B0  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<141,0>	000001B4  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<142,0>	000001B8  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<143,0>	000001BC  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<144,0>	000001C0  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<145,0>	000001C4  13 ;        addi x10,x10,-9
|         05
|         75
|         FF
<146,0>	000001C8  6F ;        jal x0,petlja
|         F0
|         1F
|         EB
<147,0>	             ;
<148,0>	             ;pet     ;#5=V
<149,0>	000001CC  13 ;        addi x30,x0,0x56
|         0F
|         60
|         05
<150,0>	000001D0  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<151,0>	000001D4  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<152,0>	000001D8  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<153,0>	000001DC  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<154,0>	000001E0  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<155,0>	000001E4  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<156,0>	000001E8  13 ;        addi x10,x10,-5
|         05
|         B5
|         FF
<157,0>	000001EC  6F ;        jal x0,petlja
|         F0
|         DF
|         E8
<158,0>	             ;
<159,0>	             ;cetri   ;#4=IV
<160,0>	             ;        ;#I
<161,0>	000001F0  13 ;        addi x30,x0,0x49
|         0F
|         90
|         04
<162,0>	000001F4  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<163,0>	000001F8  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<164,0>	000001FC  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<165,0>	00000200  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<166,0>	00000204  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<167,0>	00000208  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<168,0>	             ;        ;#V
<169,0>	0000020C  13 ;        addi x30,x0,0x56
|         0F
|         60
|         05
<170,0>	00000210  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<171,0>	00000214  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<172,0>	00000218  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<173,0>	0000021C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<174,0>	00000220  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<175,0>	00000224  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<176,0>	00000228  13 ;        addi x10,x10,-4
|         05
|         C5
|         FF
<177,0>	0000022C  6F ;        jal x0,petlja
|         F0
|         DF
|         E4
<178,0>	             ;
<179,0>	             ;jedn    ;#1=I
<180,0>	00000230  13 ;        addi x30,x0,0x49
|         0F
|         90
|         04
<181,0>	00000234  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<182,0>	00000238  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<183,0>	0000023C  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<184,0>	00000240  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<185,0>	00000244  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<186,0>	00000248  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<187,0>	0000024C  13 ;        addi x10,x10,-1
|         05
|         F5
|         FF
<188,0>	00000250  6F ;        jal x0,petlja
|         F0
|         9F
|         E2
<189,0>	             ;
<190,0>	             ;gotovo  
<191,0>	             ;
<192,0>	00000254  13 ;        addi x30,x0,0x0A;#ucini vidljivim
|         0F
|         A0
|         00
<193,0>	00000258  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<194,0>	0000025C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<195,0>	00000260  13 ;        ori x30,x30,0x80
|         6F
|         0F
|         08
<196,0>	00000264  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<197,0>	00000268  13 ;        andi x30,x30,0x7F
|         7F
|         FF
|         07
<198,0>	0000026C  23 ;        sw x30,4(x20)
|         22
|         EA
|         01
<199,0>	             ;
<200,0>	             ;        ;#obnovi kontekst
<201,0>	00000270  03 ;        lw x30,4(sp)
|         2F
|         41
|         00
<202,0>	00000274  13 ;        addi sp,sp,4
|         01
|         41
|         00
<203,0>	             ;
<204,0>	00000278  67 ;        jalr x0,0(ra)
|         80
|         00
|         00
<205,0>	             ;
<206,0>	             ;
<207,0>	0000027C! 00 ;GPIO    dw 0xFFFF0F00
|         0F
|         FF
|         FF
<208,0>	             ;
#
# Debug Data
#
.debug:

#
#
# Assembling: OK