; Nested_Loop.asm

Len             equ     $05
                org     $2000

                lds     #$2000
                
                
                
		ldaa    #0      ; int index a = 0
OuterLoop            ; b's value will be the first element in array
                psha            ; store a in STACK


InnerLoop

		inca            ; index a++
                cmpa    #Len    ; a<Len(10)
		bne     InnerLoop       ; branch if not equal go to InnerLoop


                pula            ; get a's value
                inca
                cmpa    #Len-1
                bne     OuterLoop
                
                
                end

