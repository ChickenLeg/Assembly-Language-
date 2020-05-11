; First_Stack_Example.asm
;

STACK           equ     $2000
PHONE_NUMBER    equ     $1234

        org     $1000
NUM_POP         ds      1
NUM_PIZZA       ds      1

        org     $2000
        lds     #$2000
        
        clra
        ldaa    #$21            ; Number of Pizzas to order
        psha
        ldab    #$32            ; Number of Pop to order
        pshb
        jsr     Order_Food      ; Transmit Food Order to Shop
        pula
        staa    NUM_POP
        pula
        staa    NUM_PIZZA

        bra     Here
        
        org     $2059
Order_Food
        ldy    #PHONE_NUMBER   ; prepare to fax order
;
;
;
        rts
        
Here    End

        
        
        
        