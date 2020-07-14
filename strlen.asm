	GLOBAL strlen
strlen:
	mov eax, 0
loop:
	cmp BYTE [rdi], 0
	je return
	inc eax
	inc rdi
	jmp loop
return:
	ret
