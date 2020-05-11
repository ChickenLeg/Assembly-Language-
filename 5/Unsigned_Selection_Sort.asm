; Unsigned_Selection_Sort.asm
;
; Author: Yanni Li
; Section: TUE. 8:00-10:00
; Date: 30/03/2020

; Purpose:      This lab uses effectively uses iteration, pointers and
;		the Indexed Addressing Mode to sort the following playing cards
;		using the provided Selection Sort Algorithm and Pseudocode.
;
; Operation:    Selection sort will be used in this lab, to achieve our goals,
;               use nested for loop to find the minum number from outter to inner

		org     $1000
Array		db      $08,$04,$05,$0e,$09,$09,$05,$08,$08,$0d         ; define an array stores from $1000
;Array           db      3, 1, 2
EndArray

HEAD            ds      1       ; define storage to swap elements in the array
MIN             ds      1
TEMP            ds      1

Len             equ     EndArray-Array
STACK           equ	#$2000  ; define stack pointer with value $2000
                org     $2000
                lds     #STACK   ; load stack pointer
                
                ldy     #Array  ; load array into y
                ldaa    #0      ; int index a = 0
                
OuterLoop       ldab    a,y     ; b's value will be the first element in array
                psha            ; store a
                staa    HEAD    ; store HEAD into a
                staa    MIN     ; store MIN into a as a parameter
                inca
                
InnerLoop       cmpb    a,y     ; compare a and b
                blo     Jump    ; if b<a  go to the JUMP
                ldab    a,y     ; load b into a
                staa    MIN     ; store a

Jump
                inca            ; index a++
                cmpa    #Len    ; a<Len(10)
                bne     InnerLoop       ; branch if not equal go to InnerLoop
                
                jsr     Switch          ; goes to sub routine
                
                pula                    ; get a's value
                inca
		cmpa    #Len-1
                bne     OuterLoop
                end

Switch          ldaa    HEAD    ; compare elements in the array, take HEAD,
		ldab    a,y     ; TEMP and MIN as variables, find the smallest
                stab    TEMP    ; then swap the positions
                ldaa    MIN
                ldab    a,y
                ldaa    HEAD
                stab    a,y
                ldaa    MIN
                ldab    TEMP
                stab    a,y
                clr     HEAD
                clr     MIN
                clr     TEMP
                rts
                
                



