[org 0x7c00]

;dx will hold the value that we wish to display

_start:
	mov dx, 0xc80d
	call print_hex
jmp $


print_hex:
	; manipulate HEX_OUT using dx register
	mov bx, HEX_OUT + 5
	mov ax, dx
	and ax, 0x000f
	call convert_to_char

	mov bx, HEX_OUT + 4
	mov ax, dx
	and ax, 0x00f0
	shr ax, 4
	call convert_to_char

	mov bx, HEX_OUT + 3
	mov ax, dx
	and ax, 0x0f00
	shr ax, 8
	call convert_to_char

	mov bx, HEX_OUT + 2
	mov ax, dx
	and ax, 0xf000
	shr ax, 12
	call convert_to_char



	mov bx, HEX_OUT
	call print
	ret

convert_to_char:
	; checking is number  <= 9
	cmp al, 9
	jle decimal
	jmp non_dec

decimal:
	add al, 48
	mov [bx], al
	ret


non_dec:
	push bx
	mov bx, ax
	mov al, [HEX_VALS + bx]
	pop bx
	mov [bx], al
	ret
	

%include "print.s"


HEX_OUT:
	db "0x0000", 0
HEX_VALS:
	db "0000000000abcdef"

times 510 - ($ - $$) db 0
dw 0xaa55
