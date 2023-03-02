# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/labos1.a
#
#
<1,0>	00000000  C0 DD A0 E3 ;MAIN    mov sp,#0X3000
<2,0>	00000004  18 01 9F E5 ;        ldr r0,IZVOR;izvor
<3,0>	00000008  1C 91 9F E5 ;        ldr r9,ODRED;odrediste
<4,0>	0000000C  1C 71 9F E5 ;        ldr r7,KONACNI;80808080
<5,0>	                      ;
<6,0>	                      ;LOOP    
<7,0>	00000010  04 10 90 E4 ;        ldr r1,[r0],#4;POČETAK UPISIVANJA
<8,0>	00000014  07 00 51 E1 ;        cmp r1,r7;ako je r1 80808080 skaci na kraj,gotovo sve
<9,0>	00000018  25 00 00 0A ;        beq KRAJ
<10,0>	0000001C  04 20 90 E4 ;        ldr r2,[r0],#4
<11,0>	00000020  04 30 90 E4 ;        ldr r3,[r0],#4;KRAJ UPISIVANJA
<12,0>	                      ;        ;PROVJERA PREDZNAKA
<13,0>	00000024  80 64 12 E2 ;        ands r6,r2,#0x80000000
<14,0>	00000028  01 40 A0 03 ;        moveq r4,#1;AKO JE POZITIVAN PRVI OPERAND PIŠI 1 U REGISTAR
<15,0>	0000002C  00 40 A0 13 ;        movne r4,#0;NEGATIVAN,PIŠI 0
<16,0>	00000030  80 64 13 E2 ;        ands r6,r3,#0x80000000
<17,0>	00000034  01 50 A0 03 ;        moveq r5,#1;AKO JE POZITIVAN DRUGI OPERAND PIŠI 1 U REGISTAR
<18,0>	00000038  00 50 A0 13 ;        movne r5,#0;NEGATIVAN,PIŠI 0
<19,0>	                      ;        ;GOTOVA PROVJERA PREDZNAKA
<20,0>	                      ;
<21,0>	                      ;        ;GLEDAMO KOJA JE OPERACIJA 
<22,0>	                      ;        ;ZBRAJANJE?
<23,0>	0000003C  00 00 51 E3 ;        cmp r1,#0
<24,0>	00000040  04 00 00 0A ;        beq ZBR
<25,0>	                      ;        ;ODUZIMANJE?
<26,0>	00000044  01 00 51 E3 ;        cmp r1,#1
<27,0>	00000048  05 00 00 0A ;        beq ODU
<28,0>	                      ;        ;MNOZENJE?
<29,0>	0000004C  02 00 51 E3 ;        cmp r1,#2
<30,0>	00000050  05 00 00 0A ;        beq MNOZ
<31,0>	                      ;        ;DIJELJENJE?
<32,0>	00000054  10 00 00 EA ;        B DIJELI
<33,0>	                      ;        
<34,0>	                      ;
<35,0>	                      ;;zbrajanje
<36,0>	00000058  03 80 82 E0 ;ZBR     add r8,r2,r3
<37,0>	0000005C  04 80 89 E4 ;        str r8,[r9],#4
<38,0>	00000060  EA FF FF EA ;        B LOOP
<39,0>	                      ;        
<40,0>	                      ;;oduzimanje
<41,0>	00000064  00 30 63 E2 ;ODU     rsb r3,r3,#0  ;2kompl
<42,0>	00000068  FA FF FF EA ;        b ZBR;oduzimanje je zbrajanje s 2kompl
<43,0>	                      ;
<44,0>	                      ;;mnozenje
<45,0>	                      ;MNOZ    ;negativne clanove pretvaramo u pozitivne, i pomocu predznaka operanada nalazimo predznak rjesenja
<46,0>	                      ;        ;1 operand
<47,0>	0000006C  01 00 54 E3 ;        cmp r4,#1
<48,0>	00000070  00 20 62 12 ;        rsbne r2,r2,#0;operand je negativan,spremamo njegov komplement
<49,0>	                      ;        ;2 operand
<50,0>	00000074  01 00 55 E3 ;        cmp r5,#1
<51,0>	00000078  00 30 63 12 ;        rsbne r3,r3,#0;;operand je negativan,spremamo njegov komplement
<52,0>	                      ;        ;r4 ce postati registar u kojeg spremamo predzank rjesenja
<53,0>	0000007C  05 00 54 E1 ;        cmp r4,r5
<54,0>	00000080  00 40 A0 13 ;        movne r4,#0;nisu isti,negativan je
<55,0>	00000084  01 40 A0 03 ;        moveq r4,#1;isti su, pozitivan je
<56,0>	                      ;        ;mnozenje
<57,0>	00000088  92 03 08 E0 ;        mul r8,r2,r3
<58,0>	                      ;        ;predznak rj
<59,0>	0000008C  01 00 54 E3 ;        cmp r4,#1
<60,0>	00000090  00 80 68 12 ;        rsbne r8,r8,#0;negativan broj
<61,0>	00000094  04 80 89 E4 ;        str r8,[r9],#4
<62,0>	00000098  DC FF FF EA ;        b LOOP
<63,0>	                      ;DIJELI
<64,0>	0000009C  3C 01 AD E9 ;        stmfa sp!,{r2,r3,r4,r5,r8}
<65,0>	                      ;        
<66,0>	000000A0  06 00 00 EB ;        BL DJEL
<67,0>	000000A4  00 80 9D E5 ;        ldr r8,[sp]
<68,0>	000000A8  14 D0 4D E2 ;        sub sp,sp,#20
<69,0>	000000AC  04 80 89 E4 ;        str r8,[r9],#4
<70,0>	000000B0  D6 FF FF EA ;        B LOOP
<71,0>	                      ;    
<72,0>	                      ;
<73,0>	000000B4  6C 80 9F E5 ;KRAJ    ldr r8,ZADNJI
<74,0>	000000B8  04 80 89 E4 ;        str r8,[r9],#4
<75,0>	000000BC  40 E2 01 EF ;        swi 123456
<76,0>	                      ;
<77,0>	000000C0  38 09 AD E9 ;DJEL    stmfa sp!,{r11,r3,r8,r4,r5};kontekst
<78,0>	000000C4  24 20 1D E5 ;        ldr r2,[sp,#-36];1 operand
<79,0>	000000C8  20 30 1D E5 ;        ldr r3,[sp,#-32];2 operand
<80,0>	000000CC  1C 40 1D E5 ;        ldr r4,[sp,#-28];1 predznak
<81,0>	000000D0  18 50 1D E5 ;        ldr r5,[sp,#-24];2 predznak
<82,0>	                      ;        ;negativne clanove pretvaramo u pozitivne, i pomocu predznaka operanada nalazimo predznak rjesenja
<83,0>	                      ;        ;1 operand
<84,0>	000000D4  01 00 54 E3 ;        cmp r4,#1
<85,0>	000000D8  00 20 62 12 ;        rsbne r2,r2,#0;operand je negativan,spremamo njegov komplement
<86,0>	                      ;        ;2 operand
<87,0>	000000DC  01 00 55 E3 ;        cmp r5,#1
<88,0>	000000E0  00 30 63 12 ;        rsbne r3,r3,#0;;operand je negativan,spremamo njegov komplement
<89,0>	                      ;        ;r4 ce postati registar u kojeg spremamo predzank rjesenja
<90,0>	000000E4  05 00 54 E1 ;        cmp r4,r5
<91,0>	000000E8  00 40 A0 13 ;        movne r4,#0;nisu isti,negativan je
<92,0>	000000EC  01 40 A0 03 ;        moveq r4,#1;isti su, pozitivan je
<93,0>	                      ;
<94,0>	                      ;
<95,0>	                      ;
<96,0>	                      ;
<97,0>	000000F0  00 80 A0 E3 ;        mov r8,#0;rjesenje
<98,0>	                      ;        
<99,0>	                      ;        ;pocinje dijeljenje
<100,0>	000000F4  00 00 53 E3 ;        cmp r3,#0
<101,0>	000000F8  00 80 A0 03 ;        moveq r8,#0
<102,0>	000000FC  03 00 00 0A ;        beq GOTOVO
<103,0>	                      ;
<104,0>	00000100  03 00 52 E1 ;PETLJA  cmp r2,r3;dok je r6>r7
<105,0>	00000104  01 80 88 22 ;        addhs r8,r8,#1;rezultat se dize za 1
<106,0>	00000108  03 20 42 20 ;        subhs r2,r2,r3
<107,0>	0000010C  FB FF FF 2A ;        bhs PETLJA
<108,0>	                      ;
<109,0>	                      ;GOTOVO  ;predznak rj
<110,0>	00000110  01 00 54 E3 ;        cmp r4,#1
<111,0>	00000114  00 80 68 12 ;        rsbne r8,r8,#0;negativan broj
<112,0>	00000118  14 80 0D E5 ;        str r8,[sp,#-20];spremi rezultat
<113,0>	0000011C  3C 01 3D E8 ;        ldmfa sp!,{r2,r3,r8,r4,r5}
<114,0>	                      ;        
<115,0>	00000120  0E F0 A0 E1 ;        mov pc,lr
<116,0>	                      ;
<117,0>	                      ;        
<118,0>	                      ;
<119,0>	                      ;
<120,0>	                      ;
<121,0>	                      ;
<122,0>	00000124! 00 05 00 00 ;IZVOR dw 0X500
<123,0>	00000128! FF FF FF FF ;ZADNJI DW 0XFFFFFFFF
<124,0>	0000012C! 00 10 00 00 ;ODRED dw 0X1000
<125,0>	00000130! 80 80 80 80 ;KONACNI dw 0x80808080
<126,0>	                      ;        org 0x500
<127,0>	00000500! 03 00 00 00 ;                dw 0x3, 0xFFFFFEFF, 0x00000010, 0x00000001,0x000001F4,0xFFFFFD44,0x00000002,0xFFFFFFFE,0x0000000A,0x00000003,0xFFFFF000,0xFFFFFFC0,0x80808080
|         FF FE FF FF
|         10 00 00 00
|         01 00 00 00
|         F4 01 00 00
|         44 FD FF FF
|         02 00 00 00
|         FE FF FF FF
|         0A 00 00 00
|         03 00 00 00
|         00 F0 FF FF
|         C0 FF FF FF
|         80 80 80 80
<128,0>	                      ;
<129,0>	                      ;
<130,0>	                      ;        org 0x1000
<131,0>	00001000! 00 00 00 00 ;                dw 0x0,0x0,0x0,0x0,0x0
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
#
# Debug Data
#
.debug:
<!122,0> <!127,0> <!131,0> 
#
#
# Assembling: OK