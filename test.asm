STACK   equ     $2000

        org     $1000
MyArray db      $0C,$81,$0A,11
Result  ds      1

        org     $2000
Start   lds     #STACK
        clrb
        addb    MyArray
        ldaa    MyArray+1
        coma
        aba
        staa    Result
        swi
        end