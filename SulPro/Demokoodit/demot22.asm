list p=18f452
include "P18F452.INC"

foo equ 0x0b
bar equ 0x0d

org 0x0
goto Start
org 0x20

Start
movf bar, w
cpfseq foo      ;verrataan, ovatko yhtä suuret
goto Next       ;jos eivät, siirrytään Nextiin
call if_equal
Next
cpfsgt foo      ;onko foo > bar
call if_lesser  ;jos ei, sen on oltava pienempi
call if_greater



if_greater:
if_lesser:
if_equal:
