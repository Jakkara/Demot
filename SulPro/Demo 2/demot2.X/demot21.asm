MAIN_PROG CODE
 START
 list p=18f452
 include "p18f452.inc"
    foo equ 0x0b
    bar equ 0x0d
    baz equ 0x0e
    movf foo, w
    mullw 0x2
    movf PRODL, bar
    addwf 0x10
    movwf baz
 end