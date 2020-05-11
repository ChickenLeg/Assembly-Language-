; CopyData_Unit3_Using_Pointers.asm
; Copy 6 values starting at memory location $1000 to a memory location starting at $020

STACK   equ     $2000

        org     $1000
SOURCE        db      $01,$22,$99,$102,$44,$32
EndData
        org     $1020
Dest    ds      EndData-Source          ;length of data that will be moved here

	org     $2000   ; Program area
	lds     #STACK  ; stack location
	ldx     #Source ; Point to starting address of Source
	ldy     #Dest   ; Point to starting address of Destination
	
        org     $2000   ; Program area
Start	lds     #STACK  ;
	ldx     #Source ; Point to starting address of Source
	ldy     #Dest   ; Point to starting address of Destination
Loop    ldaa    1,x+    ; readd in a byte and increment pointer by 1
        staa    1,y+    ; store byte and increment pointer by 1
        cpx     #EndData        ; Done?
        bne     Loop    ; No? Loop Again
        swi             ; Yes
        end
        