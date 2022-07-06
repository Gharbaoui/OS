
print:
	mov ah, 0x0e
	mov al,  'S'
	int 0x10
	mov al,  't'
	int 0x10
	mov al,  'a'
	int 0x10
	mov al,  'r'
	int 0x10
	mov al,  't'
	int 0x10

.exit:
	hlt


times  510 - ($ - $$) db 0
dw 0xaa55
