# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:\ARH\ARM\drugi_zad_lab.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  06 00 00 EA ;        b MAIN
<3,0>	                      ;        org 0x18;kod za irq
<4,0>	00000018  19 00 00 EA ;        b IRQ
<5,0>	                      ;        org 0x1C;kod za fiq
<6,0>	0000001C  2A 00 00 EA ;        b FIQ
<7,0>	                      ;
<8,0>	                      ;MAIN    ; Inicijalizacija stogova
<9,0>	                      ;        ; stog za IRQ
<10,0>	00000020  D2 F0 29 E3 ;        msr CPSR, #0b11010010 ; prelazak u način rada IRQ
<11,0>	00000024  40 DB A0 E3 ;        mov R13, #0x10000 ; inicijalizacija R13_irq
<12,0>	                      ;        ; stog za FIQ
<13,0>	00000028  D1 F0 29 E3 ;        msr CPSR, #0b11010001 ; prelazak u način rada FIQ
<14,0>	0000002C  FC DC A0 E3 ;        mov R13, #0xFC00 ; inicijalizacija R13_fiq
<15,0>	                      ;        ; stog za SVC
<16,0>	00000030  D3 F0 29 E3 ;        msr CPSR, #0b11010011 ; prelazak u način rada SVC
<17,0>	00000034  F8 DC A0 E3 ;        mov R13, #0xF800 ; inicijalizacija R13_svc
<18,0>	                      ;
<19,0>	                      ;        ;dozvoljavanje fiq i irq
<20,0>	00000038  00 00 0F E1 ;        mrs R0, CPSR
<21,0>	0000003C  C0 00 C0 E3 ;        bic R0, R0, #0b11000000 ; brisanje bitova 7 i 6
<22,0>	00000040  00 F0 29 E1 ;        msr CPSR, R0
<23,0>	                      ;
<24,0>	                      ;
<25,0>	                      ;        ;incijalizacija DMAC-a
<26,0>	00000044  FF 08 A0 E3 ;        mov R0,#0x00FF0000;adresa DMAC-a
<27,0>	                      ;
<28,0>	00000048  50 2E A0 E3 ;        mov R2,#0x500
<29,0>	0000004C  10 20 80 E5 ;        str R2,[R0,#0x10];adresa izvora
<30,0>	                      ;
<31,0>	00000050  70 2E A0 E3 ;        mov R2,#0x700
<32,0>	00000054  14 20 80 E5 ;        str R2,[R0,#0x14];adresa destinacije
<33,0>	                      ;
<34,0>	00000058  B0 20 9F E5 ;        ldr R2,KONF
<35,0>	0000005C  18 20 80 E5 ;        str R2,[R0,#0x18];T=10,B=1
<36,0>	                      ;
<37,0>	00000060  AC 20 A0 E3 ;        mov R2,#0b10101100
<38,0>	00000064  1C 20 80 E5 ;        str R2,[R0,#0x1C];konfiguracija
<39,0>	                      ;        
<40,0>	                      ;
<41,0>	                      ;        ;pripremi brojač 
<42,0>	00000068  00 70 A0 E3 ;        mov R7,#0
<43,0>	                      ;
<44,0>	                      ;        ;pokreni DMAC prvi put
<45,0>	0000006C  01 20 A0 E3 ;        mov R2, #1
<46,0>	00000070  00 20 80 E5 ;        str R2, [R0,#0] ; Control
<47,0>	                      ;        
<48,0>	                      ;
<49,0>	                      ;
<50,0>	00000074  05 00 57 E3 ;PETLJA  cmp R7,#5;nakon 5 puta gotovo je 
<51,0>	00000078  FD FF FF 1A ;        bne PETLJA
<52,0>	0000007C  FF FF FF EA ;        b KRAJ
<53,0>	                      ;
<54,0>	00000080  40 E2 01 EF ;KRAJ    swi 123456
<55,0>	                      ;
<56,0>	                      ;IRQ   ;kraj DMAC_a, krece 3 sekunde,upisi i 80808080
<57,0>	00000084  1F 40 2D E9 ;        stmfd R13!,{R0-R4,LR}
<58,0>	00000088  01 70 97 E2 ;        adds R7,R7,#1;digni brojac
<59,0>	0000008C  FF 08 A0 E3 ;        mov R0,#0x00FF0000
<60,0>	00000090  01 20 A0 E3 ;        mov R2,#1
<61,0>	00000094  04 20 80 E5 ;        str R2,[R0,#0x4]
<62,0>	00000098  14 30 90 E5 ;        ldr R3,[R0,#20]
<63,0>	0000009C  70 40 9F E5 ;        ldr R4,BROJ
<64,0>	000000A0  00 40 83 E5 ;        str R4,[R3];spremi 80808080
<65,0>	                      ;        ;inicijalizacija rtc-a
<66,0>	000000A4  6C 10 9F E5 ;        ldr R1, RTC;
<67,0>	000000A8  00 20 A0 E3 ;        mov R2, #0
<68,0>	000000AC  0C 20 81 E5 ;        str R2, [R1, #0x0C] ; pobrisati brojilo preko LR
<69,0>	000000B0  08 20 81 E5 ;        str R2,[R1,#0x08];obrisi status !!!!!!!!!!!!!!!!!!!!!
<70,0>	000000B4  03 20 A0 E3 ;        mov R2, #3 ; 
<71,0>	000000B8  04 20 81 E5 ;        str R2, [R1, #0x04] ; upisati konstantu brojenja u MR
<72,0>	000000BC  01 20 A0 E3 ;        mov R2, #1
<73,0>	000000C0  10 20 81 E5 ;        str R2, [R1, #0x10] ; dozvoli prekid RTC-u
<74,0>	                      ;
<75,0>	000000C4  1F 40 BD E8 ;        ldmfd R13!,{R0-R4,LR}
<76,0>	000000C8  04 F0 5E E2 ;        subs PC,LR,#4
<77,0>	                      ;
<78,0>	                      ;FIQ     ;nakon sto prode 3 sekunde,inicijaliziraj DMAC opet
<79,0>	000000CC  07 40 2D E9 ;        stmfd R13!,{R0-R2,LR}
<80,0>	                      ;        ;nedaj RTC-u da radi prekide dok DMAC upisuje
<81,0>	000000D0  40 10 9F E5 ;        ldr R1, RTC;
<82,0>	000000D4  00 20 A0 E3 ;        mov R2, #0
<83,0>	000000D8  10 20 81 E5 ;        str R2, [R1, #0x10] ; ne dozvoli prekid RTC-u 
<84,0>	                      ;
<85,0>	000000DC  FF 08 A0 E3 ;        mov R0,#0x00FF0000;adresa DMAC-a
<86,0>	                      ;
<87,0>	000000E0  50 2E A0 E3 ;        mov R2,#0x500
<88,0>	000000E4  10 20 80 E5 ;        str R2,[R0,#0x10];adresa izvora
<89,0>	                      ;
<90,0>	000000E8  70 2E A0 E3 ;        mov R2,#0x700
<91,0>	000000EC  14 20 80 E5 ;        str R2,[R0,#0x14];adresa destinacije
<92,0>	                      ;
<93,0>	000000F0  18 20 9F E5 ;        ldr R2,KONF
<94,0>	000000F4  18 20 80 E5 ;        str R2,[R0,#0x18];T=10,B=1
<95,0>	                      ;
<96,0>	000000F8  AC 20 A0 E3 ;        mov R2,#0b10101100
<97,0>	000000FC  1C 20 80 E5 ;        str R2,[R0,#0x1C];konfiguracija
<98,0>	                      ;        ;pokreni DMAC
<99,0>	00000100  01 20 A0 E3 ;        mov R2, #1
<100,0>	00000104  00 20 80 E5 ;        str R2, [R0,#0] ; Control
<101,0>	                      ;
<102,0>	                      ;        ;zavrsi
<103,0>	00000108  07 40 BD E8 ;        ldmfd R13!,{R0-R2,LR}
<104,0>	0000010C  04 F0 5E E2 ;        subs PC,LR,#4
<105,0>	                      ;        
<106,0>	                      ;
<107,0>	00000110! 0A 00 00 00 ;KONF    dw 0x000A
<108,0>	00000114! 80 80 80 80 ;BROJ    dw 0x80808080
<109,0>	00000118! 00 0E FF FF ;RTC     dw 0xFFFF0E00
<110,0>	                      ;
<111,0>	                      ;        org 0x500
<112,0>	00000500! 01 00 00 00 ;        dw 1,2,3,4,5,6,7,8,9,10
|         02 00 00 00
|         03 00 00 00
|         04 00 00 00
|         05 00 00 00
|         06 00 00 00
|         07 00 00 00
|         08 00 00 00
|         09 00 00 00
|         0A 00 00 00
<113,0>	                      ; 
<114,0>	                      ;        org 0x700
<115,0>	00000700! 00 00 00 00 ;        dw 0,0,0,0,0,0,0,0,0,0,0
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
|         00 00 00 00
#
# Debug Data
#
.debug:
<!112,0> <!115,0> 
#
#
# Assembling: OK