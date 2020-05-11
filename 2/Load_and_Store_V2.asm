; Load_and_Store_V2.asm

; Copy a word (16 bits)

        org     $1000           ; Data stores here
Source  dw      $1234           ; Define a 16 bit word $1234 starting at Source

        org     $1020           ; Destination address
Dest    ds.w    1               ; Reserve storage for 1 sixteen bit word

        org     $2000           ; Program Code starts at $2000
        ldd     Source          ; Get the word
        std     Dest            ; Store the word
        swi
        end