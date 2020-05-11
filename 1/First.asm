; My first assembly program
;
;
;Author: Yanni Li
;Student Number: 040914267
;Purpose: Add the following values: $25 + $37 - $1
        org     $1000     ;Set current loction to start of RAM (data startd)
p:      db      $25       ; First addend is at location p
q:      db      $37       ;Second addend is at location q
r:      ds      $1        ;Sum will be stored at location r
        org     $2000     ;Set current location to start in RAM(program strated)
        ldaa    p         ;load value at p into accumulator a
        adda    q         ;add value at q into accumulator a
        deca              ;decrement a
        staa    r         ;store accumulator a at location r
        end
        