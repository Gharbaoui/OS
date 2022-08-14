[org 0x7c00]

start:
	mov bx, MSG
	call print

jmp $

%include "print.s"

MSG:
	db "hello, world", 0


times 510 - ($ - $$) db 0
dw 0xaa55
