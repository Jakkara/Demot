counter equ 0x0b

org 0x0
Start
0x20

Start
movlw 0x0A
incf counter    ;inkrementoi
cpfseq counter  ;vertaa työrekisterin 0x0A ja counter
goto Start      ;jos erisuuret, takaisin Start
movlf 0x1 counter   ;aseta counter 0x01
