counter equ 0x0a
sum equ 0x0b
data equ 0x0c

org 0x0
Loop
0x20

Loop
movf data, w    ;data -> wreg
addwf sum, 1    ;lisää sum + wreg, tulos -> sum
decfsz counter  ;dekrementoi laskuria
goto Loop
end
