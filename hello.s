[org 0x7c00]

mov ah, 0x0e
mov bx, msg

print:
	mov al, [bx]
	cmp al, 0
	je .exit
	int 0x10
	add bx, 1
	jmp print

.exit:
	jmp .exit

msg:
	db "Intro to operating systems", 0


times 510 - ($ - $$) db 0
dw 0xaa55
