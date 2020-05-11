; Those_Were_The_Memories.asm
; Author : Yanni Li
; Date: Mar.10th

Value1	equ     128     ;Value1 equals 128,
                        ; constant doesn't use memory, only when program is running,while data stores in memory

        org     $1000   ;Set current loction to start of RAM (data startd)
Value2  db      $3F     ;define bytes first added Value2 $3F
Value3  dw      3456    ;define world


        org     $1030   ;current location start at $1030
Result1 ds      1       ;define storage
Result2 ds      2
Result3 ds      1
Result4 dw      1

        org     $2000
        ldaa    #Value1 ;load accumulator a
        staa    Result1 ;store accumulator a
        ldab    Value2  ;load accumulator b
        stab    Result3 ;store accumulator b
        ldd     #Value3 ;load double accumulator
        stab    Result2
        staa    Result3
        ldab    Value3+1
        ldaa    Value3
        std     Result4
        swi             ;software interrupt
        end