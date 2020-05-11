; Switch_It_Up.asm

; Author: Yanni Li
; Section: TUE. 8:00-10:00
; Date: 30/03/2020

; Purpose:      This lab uses iteration and pointers to swap the first element with
;		the last element of an array, the second element with the
;		second-to-last element, and so on.

; Operation:    Once the SW number has been determined, the pattern unique to it
;               is output on Port B (PORTB) by calling the internal subprocess
;               Display_Value, which also delays the output by 1/8 sec in order
;               to avoid flicker between values. The program then Loops back to
;               the beginning to get another SW value and the process
;               loops forever.
;
        org     $1000   ; where program starts
Elements        db      115,110,065,045,032,115,105,032,101,103,097
                db      117,103,110,097,076,033,121,109,098,107,102
                db      116,116,067

        end