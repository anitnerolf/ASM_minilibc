	GLOBAL memcpy
memcpy:
	jmp loopa
loopa:
	cmp rdx, 0
	je return
	mov al, BYTE [rsi]
	mov BYTE [rdi], al
	inc rsi
	inc rdi
	dec rdx
	jmp loopa
return:
	mov rax, rdi
	ret
