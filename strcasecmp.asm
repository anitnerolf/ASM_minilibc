	GLOBAL strcasecmp
strcasecmp:
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
upper:
	jmp other_loop
subs:
	sub al, dl
	movsx eax, al
	cmp eax, 0
	je return
	cmp eax, 32
	je upper
	cmp eax, -32
	je upper
	jmp return
return:
	ret
