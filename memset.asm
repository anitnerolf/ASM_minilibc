	GLOBAL memset
memset:
	jmp loopa
loopa:
	cmp rdi, 0
	je return
	cmp rdx, 0
	je return
	jmp decs
decs:
	mov BYTE [rdi], sil
	inc rdi
	dec rdx
	jmp loopa
return:
	mov rax, rdi
	ret
