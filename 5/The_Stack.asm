; The_Stack.asm
; Author: Brightspace Example

STACK           equ     $2000   ; Stack pointer of $2000

                org     $1000                    ;
Data		db      $19,$FE,$32,$C4,$65     ; define bite in an array
                org     $2000
                lds     #Stack          ; load stack
                
                ldy     #Data   ; load array
                ldaa    1,y     ; load the second item of array into a
                ldab	1,y+    ; load the second item then change the y address
                psha            ; store a
                pshy            ; store y
                jsr     Here
                puld            ; get d
                bra     Finish
Here            ldab    Data+3
                dey
                rts
Finish          swi
                end