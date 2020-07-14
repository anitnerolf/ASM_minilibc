	GLOBAL rindex
rindex:
	cmp rdi, 0
	je return
	cmp rsi, 0
	je return
loopa:
	mov dl, BYTE [rdi]
	cmp dl, 0
	jne check_same
	jmp return
check_same:
	cmp dl, sil
	je are_equal
	inc rdi
	jmp loopa
are_equal:
	mov rax, rdi
	inc rdi
	jmp loopa
go_end:
	ret
return:
	cmp dl, 0
	je go_end
	mov rax, rdi
	ret
