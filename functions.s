[org 0x7c00]

_start:
	mov al, 'X'
	call my_print
	mov al, 'K'
	call my_print
	jmp $

%include "print.s"


times 510 - ($ - $$) db 0
dw 0xaa55
