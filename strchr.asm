	GLOBAL strchr
strchr:
	cmp rdi, 0
	je return
	jmp loopa
loopa:
	mov al, BYTE [rdi]
	cmp al, 0
	je return
	cmp al, sil
	je return
	inc rdi
	jmp loopa
return:
	mov rax, rdi
	ret
