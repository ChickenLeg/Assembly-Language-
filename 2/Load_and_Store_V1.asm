; Load_and_Store_V1.asm

; Copy 8 bits values

        org     $1000           ; Data starts here
Source	db      $12, $34

        org     $1020           ; Destination address
Dest    ds      2               ; define storage

        org     $2000           ; Program code starts at $2000
        ldaa    Source          ; Get first value
        staa    Dest            ; Store first value
        ldaa    Source+1        ; Get second value
        staa    Dest+1          ; Store second value
        swi
        end