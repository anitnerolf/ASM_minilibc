	GLOBAL strncmp
strncmp:
	xor eax, eax
loopa:
	mov al, BYTE [rdi]
	cmp al, BYTE [rsi]
	je other_loop
	jmp subs
other_loop:
	cmp al, 0
	je return
	cmp BYTE [rsi], 0
	je return
	dec rdx
	cmp rdx, 0
	je subs
	inc rdi
	inc rsi
	jmp loopa
subs:
	sub al, BYTE [rsi]
	movsx eax, al
	jmp return
return:
	ret
