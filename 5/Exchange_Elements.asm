; Exchange_Elements.asm

; Author: Yanni Li
; Section: TUE. 8:00-10:00
; Date: 30/03/2020

; Purpose:      This lab uses iteration and pointers to swap the first element with
;		the last element of an array, the second element with the
;		second-to-last element, and so on.

; Operation:    Use push and pop function to store and get values,
;               last in first out on stack, address is getting bigger when goes
;               down, vice versa. For Loop to loop though array elements.

        org     $1000   ; where program starts
Elements        db      115,110,065,045,032,115,105,032,101,103,097
                db      117,103,110,097,076,033,121,109,098,107,102
                db      116,116,067
EndElements
Len     equ     EndElements-Elements    ; sizeof ()=Length of the array
STACK   equ     #$2000                  ; create stack pointer with value
        org     $2000
        lds     #STACK			; load the stack poiner with value $2000
        ldx     #Elements
        
        ldaa    #0                      ; int i = 0;
loop1   cmpa    #Len                    ; i < Len(25)
        bhs     EndLoop1
        ldab    1,x+                    ; ldab 0,x; inx;
        pshb                            ; push B into the stack
        inca                            ; i++
        bra     Loop1
EndLoop1

        ldaa    #0                      ; int i = 0;
        ldx     #Elements               ; load x of array Elements
loop2   cmpa    #Len                    ; i < Len(25)
        bhs     EndLoop2
        pulb                  		; pop B
        stab	1,x+                    ; push B into the stack
        inca
        bra     Loop2
EndLoop2

        end