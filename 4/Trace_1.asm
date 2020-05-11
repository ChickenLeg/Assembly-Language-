; Trace_1.asm
; Given the following program listing, trace the results
; (hexadecimal value of registers being asked) of each program step after the line of code has been executed,
; as per the example answer for the Stack Pointer (SP).
; Author: Yanni Li
; Date: Mar 23th

        org     $1000
Data1   db      $55,$19,$35,$08
Data2   db      $00,$FF,$10,$01,$E7,$9E,$8F,$31

        org     $2000
        lds     #$2000          ;SP =? ___$2000____<= example answer	load stack pointer with the value $2000
        
        ldy     #Data1          ; Y =  $1000	load index register Y with array Data1's value
        
        ldab    4,y             ; B =  $00	load memeory location y points to the 5th item of array
                                ; Y =  $1000    y remains the same

        ldaa    1,y+            ; A =  $55      load y's value first then add 1 to the location
                                ; Y =  $1001
        
        ldab    0,y             ; B = $19       load the first item of array
                                ; Y = $1001
        
        
        ldx     #Data2          ; X = $1004     Data1 takes 4 bytes thus x begins at $1004
        
        ldd     6,x+            ; D = $00FF     double accumulator which means load 2 bytes of X's value
                                ; X = $100A     $1004 + $6 = $100A
        
        std     2,x+            ; X = $100C   store double accumulator $100C + $2 = $100C
        
        
        swi                     ; software interrupt
        end