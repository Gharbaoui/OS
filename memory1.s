[org 0x7c00]
mov ah, 0x0e
mov al, [char_loc]
int 0x10

jmp $

char_loc:
	db  "X"

times 510 - ($ - $$) db 0
dw 0xaa55
