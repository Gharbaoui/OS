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


/* 
* since our computer has possibly more than one drive so bios 
* bios will look at byte 511 and 512 if oxaa55 present that means 
* this sector is operating system
*/
