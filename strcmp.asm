	GLOBAL strcmp
strcmp:
	xor eax, eax
loopa:
	mov al, BYTE [rdi]
	mov dl, BYTE [rsi]
	cmp al, dl
	je other_loop
	jmp subs
other_loop:
	cmp al, 0
	je return
	cmp dl, 0
	je return
	inc rdi
	inc rsi
	jmp loopa
subs:
	sub al, dl
	movsx eax, al
	jmp return
return:
	ret
