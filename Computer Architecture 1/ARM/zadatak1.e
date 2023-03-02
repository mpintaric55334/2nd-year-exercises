# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:\ARH\ARM\zadatak1.a
#
#
<1,0>	                      ;        org 0
<2,0>	00000000  05 00 00 EA ;        b GLAVNI ;glavni dio programa
<3,0>	                      ;        org 0x18
<4,0>	00000018  14 00 00 EA ;        b IRQ ;posluzi irq prekid
<5,0>	                      ;
<6,0>	                      ;GLAVNI
<7,0>	                      ;     
<8,0>	                      ;INIT    ;incijalizacija stogova i potrebnih stvari za irq
<9,0>	                      ;        ;stog za IRQ
<10,0>	0000001C  D2 F0 29 E3 ;        msr CPSR,#0b11010010; prelazak u irq nacin rada  
<11,0>	00000020  40 DB A0 E3 ;        mov R13,#0x10000
<12,0>	                      ;        
<13,0>	                      ;        ;stog za svc
<14,0>	00000024  D3 F0 29 E3 ;        msr CPSR,#0b11010011 ;prelazak u nacin rada SVC
<15,0>	00000028  F8 DC A0 E3 ;        mov R13,#0xF800 ;inicijalizacija R13_svc
<16,0>	                      ;
<17,0>	                      ;        ;dozvoljavanje prekida irq
<18,0>	0000002C  00 00 0F E1 ;        mrs R0, CPSR
<19,0>	00000030  80 00 C0 E3 ;        bic R0, R0, #0b10000000 ; brisanje bitova 7 i 6
<20,0>	00000034  00 F0 29 E1 ;        msr CPSR, R0
<21,0>	                      ;
<22,0>	                      ;
<23,0>	                      ;        ;nastavak glavnoga
<24,0>	00000038  B0 00 9F E5 ;        ldr R0,GPIO ;dohvati adresu GPIO-a
<25,0>	0000003C  E0 10 A0 E3 ;        mov R1,#0b11100000 ;postavljanje smjera vrata A-> 7,6,5 bit su izlazni, ostali ulazni
<26,0>	00000040  08 10 80 E5 ;        str R1,[R0,#8]; spremanje smjera u PA_DDR
<27,0>	00000044  20 10 A0 E3 ;        mov R1,#0b00100000; na početku je upaljeno crveno svjetlo
<28,0>	00000048  00 10 80 E5 ;        str R1,[R0]; paljenje crvene lampice
<29,0>	                      ;
<30,0>	                      ;        ;inicijalizacija RTC-a
<31,0>	0000004C  A0 20 9F E5 ;        ldr R2,RTC; upis adrese RTC
<32,0>	00000050  00 10 A0 E3 ;        mov R1,#0
<33,0>	00000054  0C 10 82 E5 ;        str R1,[R2,#0x0C];pobrisi brojilo
<34,0>	                      ;        
<35,0>	00000058  05 10 A0 E3 ;        mov R1,#5; konstanta brojanja je 5 jer je period 1Hz
<36,0>	0000005C  04 10 82 E5 ;        str R1,[R2,#0x04];upisi konstantu brojenja u MR
<37,0>	                      ;
<38,0>	00000060  01 10 A0 E3 ;        mov R1,#1
<39,0>	00000064  10 10 82 E5 ;        str R1,[R2,#0x10];dozvoli prekid RTC-u
<40,0>	                      ;
<41,0>	00000068  00 40 A0 E3 ;        mov R4,#0 ;brojac kojim pamtim stanja->0=crvena,1=crveno zuta,2=zelena,3=zuta
<42,0>	0000006C  FE FF FF EA ;PET     b PET ;prazna petlja        
<43,0>	                      ;
<44,0>	                      ;IRQ     ;posluzi_irq
<45,0>	00000070  07 40 2D E9 ;        stmfd R13!,{R0-R2,LR}
<46,0>	00000074  74 00 9F E5 ;        ldr R0,GPIO; adresa GPIO
<47,0>	00000078  74 10 9F E5 ;        ldr R1, RTC;adresa RTC
<48,0>	0000007C  00 20 A0 E3 ;        mov R2,#0
<49,0>	00000080  0C 20 81 E5 ;        str R2,[R1,#0x0C];pobrisi brojilo,MR ostaje 125
<50,0>	00000084  08 20 81 E5 ;        str R2,[R1,#0x08];obrisi status
<51,0>	                      ;
<52,0>	                      ;        ;gledamo koja je boja na semaforu
<53,0>	00000088  00 00 54 E3 ;        cmp R4,#0
<54,0>	0000008C  05 00 00 0A ;        beq CRV
<55,0>	00000090  01 00 54 E3 ;        cmp R4,#1
<56,0>	00000094  07 00 00 0A ;        beq CZU
<57,0>	00000098  02 00 54 E3 ;        cmp R4,#2
<58,0>	0000009C  09 00 00 0A ;        beq ZE
<59,0>	000000A0  03 00 54 E3 ;        cmp R4,#3
<60,0>	000000A4  0B 00 00 0A ;        beq ZU
<61,0>	                      ;
<62,0>	000000A8  60 20 A0 E3 ;CRV     mov R2,#0b01100000;ukljuci crvenu i zutu
<63,0>	000000AC  01 40 A0 E3 ;        mov R4,#1
<64,0>	000000B0  00 20 80 E5 ;        str R2,[R0]
<65,0>	000000B4  0B 00 00 EA ;        b DALJE
<66,0>	                      ;
<67,0>	000000B8  80 20 A0 E3 ;CZU     mov R2,#0b10000000;ukljuci zelenu
<68,0>	000000BC  02 40 A0 E3 ;        mov R4,#2
<69,0>	000000C0  00 20 80 E5 ;        str R2,[R0]
<70,0>	000000C4  07 00 00 EA ;        b DALJE
<71,0>	                      ;
<72,0>	000000C8  40 20 A0 E3 ;ZE      mov R2,#0b01000000;ukljuci zutu
<73,0>	000000CC  03 40 A0 E3 ;        mov R4,#3
<74,0>	000000D0  00 20 80 E5 ;        str R2,[R0]
<75,0>	000000D4  03 00 00 EA ;        b DALJE
<76,0>	                      ;
<77,0>	000000D8  20 20 A0 E3 ;ZU      mov R2,#0b00100000;ukljuci crvenu
<78,0>	000000DC  00 40 A0 E3 ;        mov R4,#0
<79,0>	000000E0  00 20 80 E5 ;        str R2,[R0]
<80,0>	000000E4  FF FF FF EA ;        b DALJE
<81,0>	                      ;
<82,0>	                      ;DALJE   ;gotov prekid
<83,0>	000000E8  07 40 BD E8 ;        ldmfd R13!,{R0-R2,LR};obnovi kontekst
<84,0>	000000EC  04 F0 5E E2 ;        subs PC,LR,#4;povratak u glavni program
<85,0>	                      ;        
<86,0>	                      ;
<87,0>	                      ;
<88,0>	000000F0! 00 0B FF FF ;GPIO dw 0xFFFF0B00
<89,0>	000000F4! 00 0E FF FF ;RTC  dw 0xFFFF0E00
#
# Debug Data
#
.debug:

#
#
# Assembling: OK