# CONAS v3.0 output file
#
# Processor name: ARM 7
#
8 ; memory word width
#
32 ; address width
#
#
# Original file: C:/ARH/ARM/funkcije_s_fiksnim_primjer_s_slajda.a
#
#
<1,0>	00000000  40 DD A0 E3 ;MAIN    mov sp,#0x1000     
<2,0>	00000004  74 00 A0 E3 ;        MOV R0,#STRING
<3,0>	00000008  58 00 8F E5 ;        STR R0, ST
<4,0>	0000000C  61 00 A0 E3 ;        MOV R0, #0x61
<5,0>	00000010  54 00 8F E5 ;        STR R0, CH
<6,0>	00000014  05 00 00 EB ;        BL F ; poziv funkcije
<7,0>	00000018  50 00 9F E5 ;        LDR R0, REZ ; dohvat i upotreba rezultata
<8,0>	0000001C  00 00 50 E3 ;        CMP R0, #0 ; je li vraćen NULL pokazivač?
<9,0>	00000020  01 00 00 0A ;        BEQ KRAJ 
<10,0>	00000024  62 10 A0 E3 ;        MOV R1, #0x62 ; ascii-kod slova ‘b’
<11,0>	00000028  00 10 C0 E5 ;        STRB R1, [R0] ; zamijeni ‘a’ sa ‘b’
<12,0>	0000002C  40 E2 01 EF ;KRAJ    swi 123456
<13,0>	                      ;       
<14,0>	                      ;
<15,0>	                      ;
<16,0>	                      ;
<17,0>	                      ;
<18,0>	00000030  07 00 2D E9 ;F       stmfd sp!,{r0-r2}
<19,0>	00000034  2C 00 9F E5 ;        ldr r0,ST
<20,0>	00000038  2C 10 DF E5 ;        ldrb r1,CH
<21,0>	                      ;
<22,0>	0000003C  00 20 D0 E5 ;LOOP    ldrb r2,[r0]
<23,0>	00000040  00 00 52 E3 ;        cmp r2,#0
<24,0>	00000044  00 00 A0 03 ;        moveq r0,#0
<25,0>	00000048  03 00 00 0A ;        beq VAN
<26,0>	                      ;        
<27,0>	0000004C  01 00 52 E1 ;        cmp r2,r1
<28,0>	00000050  01 00 00 0A ;        beq VAN
<29,0>	                      ;
<30,0>	00000054  01 00 80 E2 ;        add r0,r0,#1
<31,0>	00000058  F7 FF FF EA ;        B LOOP
<32,0>	0000005C  0C 00 8F E5 ;VAN     str r0,REZ
<33,0>	00000060  07 00 BD E8 ;        ldmfd sp!,{r0-r2}
<34,0>	00000064  0E F0 A0 E1 ;        mov pc,lr
<35,0>	                      ;
<36,0>	                      ;
<37,0>	00000068! 00 00 00 00 ;ST dw 0
<38,0>	0000006C! 00          ;CH db 0
<39,0>	00000070! 00 00 00 00 ;REZ dw 0
<40,0>	00000074! 66 67 61 66 ;STRING dstr "fgafasdf"
|         61 73 64 66
|         00
<41,0>	                      ;
#
# Debug Data
#
.debug:

#
#
# Assembling: OK