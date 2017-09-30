;-------------------------------------------------------------------------------
; MSP430 Assembler Code Template for use with TI Code Composer Studio
;
;
;-------------------------------------------------------------------------------
            .cdecls C,LIST,"msp430.h"       ; Include device header file
           
;-------------------------------------------------------------------------------
            .def    RESET                   ; Export program entry-point to
                                            ; make it known to linker.
;-------------------------------------------------------------------------------
            .text                           ; Assemble into program memory.
            .retain                         ; Override ELF conditional linking
                                            ; and retain current section.
            .retainrefs                     ; And retain any sections that have
                                            ; references to current section.
 
;-------------------------------------------------------------------------------
RESET       mov.w   #__STACK_END,SP         ; Initialize stackpointer
StopWDT     mov.w   #WDTPW|WDTHOLD,&WDTCTL  ; Stop watchdog timer

 SNAT                                       ;Sensor Alto Tanque, informa se o tanque esta cheio
       bic      #0x01, P2SEL                ;P2.0, configura primeira função I/0                                          
       bic      #0x01, P2DIR                ;P2.0, configura como porta de entrada
      
SNBT
       bic      #0x02, P2SEL                ;P2.1, configura primeira função (I/0)                                          
       bic      #0x02, P2DIR                ;P2.1, configura como porta de entrada
SNBP
       bic      #0x04, P2SEL                ;P2.2, configura primeira função (I/0)                                          
       bic      #0x04, P2DIR                ;P2.2, configura como porta de entrada
BH
       bic      #0x08, P2SEL                ;P2.3, configura primeira função (I/0) 
       bis      #0x08, P2DIR                ;P2.3, configura como porta de saida
ANBP
       bic      #0x16, P2SEL                ;P2.4, configura primeira função (I/0)
       bis      #0x16, P2DIR                ;P2.4, configura como porta de saida
COL0  
       bic      #0x01, P1SEL                ;P1.0, configura primeira função (I/0)
       bis      #0x01, P1DIR                ;P1.0, configura como porta de saida
       bic      #0x01, P1OUT                ;P1.0, coloca em baixo(0),a porta, coluna teclado
      
LEDEN
       bic      #0x02, P1SEL                ;P1.1, configura primeira função (I/0)
       bis      #0x02, P1DIR                ;P1.0, configura como porta de saida
       bis      #0x02, P1OUT                ;P1.0,Coloca em Alto(1),a porta. Habilita os Leds
 
 
;-------------------------------------------------------------------------------
; Main loop here
;-------------------------------------------------------------------------------
 
 

LOOP
       bit    #0x04, P2IN
       jz     POÇOCHEIO
       jnz    POÇOVAZIO
      
      
      
      
      
      
       jmp    LOOP
      
;-------------------------------------------------------------------------------
; Stack Pointer definition
;-------------------------------------------------------------------------------
            .global __STACK_END
            .sect   .stack
           
;-------------------------------------------------------------------------------
; Interrupt Vectors
;-------------------------------------------------------------------------------
            .sect   ".reset"                ; MSP430 RESET Vector
            .short  RESET