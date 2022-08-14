; bx will have a address of string

global_print:
	pusha
print:
	mov ah, 0x0e
	mov al, [bx]
	cmp al, 0
	je .exit
	add bx, 1
	int 0x10
	jmp print

.exit:
	popa
	ret
