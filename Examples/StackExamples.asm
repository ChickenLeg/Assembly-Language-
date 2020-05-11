; Stack Emample1
        org     $2000
        LDS     #$2000  ;Load stack pointer
        LDAA    #$AA    ; load accumulator A
        LDAB    #$BB    ;
        PSHA            ; Push A onto stack
        PSHB            ;
        PULA            ; Pull A from stack
        PULB            ;
        LDD     #$11DD  ; load accumulator D
        PSHD            ; Push D onto stack
        PULD            ; Pull D from stack
        end