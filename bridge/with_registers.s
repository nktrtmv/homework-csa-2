	.file	"main.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	getRandomNumber
	.type	getRandomNumber, @function
getRandomNumber:
	endbr64
	push	rbp
	mov	ebp, edi
	push	rbx
	mov	ebx, esi
	sub	rsp, 8
	call	rand@PLT
	lea	esi, 1[rbx]
	add	rsp, 8
	sub	esi, ebp
	cdq
	pop	rbx
	idiv	esi
	lea	eax, [rdx+rbp]
	pop	rbp
	ret
	.size	getRandomNumber, .-getRandomNumber
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"\320\222\321\213 \320\276\320\261\321\217\320\267\320\260\320\275\321\213 \320\262\320\262\320\265\321\201\321\202\320\270 1,2 \320\270\320\273\320\270 3 \320\260\321\200\320\263\321\203\320\274\320\265\320\275\321\202\320\260 \320\272\320\276\320\274\320\260\320\275\320\264\320\275\320\276\320\271 \321\201\321\202\321\200\320\276\320\272\320\270:\n\320\237\320\265\321\200\320\262\321\213\320\271 - -f/-r/-c.\n\320\222\321\202\320\276\321\200\320\276\320\271 \320\270 \321\202\321\200\320\265\321\202\320\270\320\271 \320\276\320\277\321\206\320\270\320\276\320\275\320\260\320\273\321\214\320\275\321\213, \321\215\321\202\320\276 \320\260\320\261\321\201\320\276\320\273\321\216\321\202\320\275\321\213\320\271 \320\277\321\203\321\202\321\214 \320\272 \321\204\320\260\320\271\320\273\320\260\320\274 \320\262\320\262\320\276\320\264\320\260 \320\270 \320\262\321\213\320\262\320\276\320\264\320\260."
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"r"
.LC2:
	.string	"string_in.txt"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"\320\236\321\210\320\270\320\261\320\272\320\260! \320\244\320\260\320\271\320\273 \320\262\320\262\320\276\320\264\320\260 \320\275\320\265 \320\274\320\276\320\266\320\265\321\202 \320\261\321\213\321\202\321\214 \320\276\321\202\320\272\321\200\321\213\321\202.\n\320\244\320\260\320\271\320\273 \320\264\320\276\320\273\320\266\320\265\320\275 \321\201\321\203\321\211\320\265\321\201\321\202\320\262\320\276\320\262\320\260\321\202\321\214 \320\270 \320\261\321\213\321\202\321\214 \321\204\320\276\321\200\320\274\320\260\321\202\320\260 txt."
	.section	.rodata.str1.1
.LC4:
	.string	"-f"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"\320\222\321\200\320\265\320\274\321\217 \320\262\321\213\320\277\320\276\320\273\320\275\320\265\320\275\320\270\321\217 \320\277\321\200\320\276\320\263\321\200\320\260\320\274\320\274\321\213: "
	.section	.rodata.str1.1
.LC6:
	.string	"%s"
.LC7:
	.string	"%d"
.LC8:
	.string	"\320\274\321\201"
.LC9:
	.string	"w"
.LC10:
	.string	"string_out.txt"
.LC11:
	.string	"-c"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	endbr64
	push	r15
	push	r14
	mov	r14d, edi
	push	r13
	push	r12
	mov	r12, rsi
	push	rbp
	push	rbx
	sub	rsp, 40
	mov	DWORD PTR 8[rsp], edi
	xor	edi, edi
	call	time@PLT
	mov	edi, eax
	call	srand@PLT
	lea	eax, -2[r14]
	cmp	eax, 2
	ja	.L62
	mov	rax, QWORD PTR 8[r12]
	cmp	BYTE PTR [rax], 45
	je	.L63
.L40:
	xor	r14d, r14d
.L8:
	mov	edi, 65536
	call	malloc@PLT
	mov	rdi, QWORD PTR 8[r12]
	mov	rbp, rax
	cmp	BYTE PTR [rdi], 45
	jne	.L12
	cmp	BYTE PTR 1[rdi], 114
	jne	.L12
	movzx	r9d, BYTE PTR 2[rdi]
	test	r9d, r9d
	mov	DWORD PTR [rsp], r9d
	jne	.L12
	call	rand@PLT
	mov	ecx, 10000
	mov	r9d, DWORD PTR [rsp]
	cdq
	idiv	ecx
	lea	r15d, 1[rdx]
	test	r15d, r15d
	jle	.L13
	mov	edx, edx
	mov	DWORD PTR [rsp], ebx
	mov	rbx, rbp
	lea	rax, 1[rbp+rdx]
	mov	r13, rax
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L14:
	mov	BYTE PTR [rbx], dl
	add	rbx, 1
	cmp	r13, rbx
	je	.L64
.L15:
	call	rand@PLT
	movsx	rdx, eax
	mov	esi, eax
	imul	rdx, rdx, 2021161081
	sar	esi, 31
	sar	rdx, 35
	sub	edx, esi
	mov	esi, edx
	sal	esi, 4
	add	edx, esi
	sub	eax, edx
	mov	edx, 32
	cmp	eax, 13
	jg	.L14
	call	rand@PLT
	add	rbx, 1
	movsx	rdx, eax
	mov	esi, eax
	imul	rdx, rdx, 1321528399
	sar	esi, 31
	sar	rdx, 35
	sub	edx, esi
	imul	edx, edx, 26
	sub	eax, edx
	lea	edx, 97[rax]
	mov	BYTE PTR -1[rbx], dl
	cmp	r13, rbx
	jne	.L15
.L64:
	mov	ebx, DWORD PTR [rsp]
	jmp	.L16
.L63:
	cmp	BYTE PTR 1[rax], 102
	jne	.L40
	cmp	BYTE PTR 2[rax], 0
	jne	.L40
	cmp	DWORD PTR 8[rsp], 2
	je	.L9
	mov	rdi, QWORD PTR 16[r12]
	lea	rsi, .LC1[rip]
	call	fopen@PLT
	mov	r14, rax
.L10:
	test	r14, r14
	jne	.L8
	lea	rdi, .LC3[rip]
	call	puts@PLT
	jmp	.L48
.L12:
	lea	rsi, .LC4[rip]
	mov	r13, rbp
	call	strcmp@PLT
	test	eax, eax
	mov	eax, 1
	jne	.L17
	sub	eax, ebp
	mov	r15d, eax
	.p2align 4,,10
	.p2align 3
.L18:
	mov	rdi, r14
	call	fgetc@PLT
	lea	edx, [r15+r13]
	mov	rcx, r13
	add	r13, 1
	mov	BYTE PTR -1[r13], al
	cmp	eax, -1
	jne	.L18
.L61:
	mov	BYTE PTR [rcx], 0
	mov	r15d, edx
.L16:
	call	clock@PLT
	movsx	rdi, r15d
	mov	DWORD PTR 12[rsp], eax
	call	malloc@PLT
	xor	ecx, ecx
	xor	r9d, r9d
	mov	QWORD PTR 16[rsp], r14
	mov	r13, rax
	mov	rax, rcx
	mov	QWORD PTR 24[rsp], r12
	lea	r11d, -1[r15]
	mov	ecx, r15d
	mov	r12, r13
	mov	r15d, ebx
	mov	edx, -1
	mov	r14d, r9d
	mov	r13, rbp
	mov	rbx, rax
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L22:
	add	rbx, 1
	cmp	ecx, ebx
	jle	.L65
.L26:
	movzx	eax, BYTE PTR 0[r13+rbx]
	lea	ebp, 1[rbx]
	sub	eax, 97
	cmp	al, 25
	ja	.L42
	lea	eax, 1[rdx]
	cmp	eax, ebx
	cmove	r15d, ebx
	cmp	r11d, ebx
	jg	.L22
.L20:
	mov	eax, ebp
	sub	eax, r15d
	mov	edi, eax
	shr	edi, 31
	add	edi, eax
	sar	edi
	cmp	eax, 1
	jle	.L23
	movsx	rax, ebp
	movsx	rsi, r15d
	lea	rdx, -1[r13+rax]
	add	rsi, r13
	xor	eax, eax
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L66:
	add	rax, 1
	sub	rdx, 1
	cmp	edi, eax
	jle	.L23
.L24:
	movzx	r8d, BYTE PTR [rdx]
	cmp	BYTE PTR [rsi+rax], r8b
	je	.L66
	add	rbx, 1
	mov	edx, ebp
	cmp	ecx, ebx
	jg	.L26
.L65:
	movsx	r9, r14d
	mov	rbp, r13
	mov	r14, QWORD PTR 16[rsp]
	mov	r13, r12
	mov	r12, QWORD PTR 24[rsp]
.L39:
	mov	BYTE PTR 0[r13+r9], 0
	call	clock@PLT
	lea	rdx, .LC5[rip]
	mov	edi, 1
	lea	rsi, .LC6[rip]
	mov	rbx, rax
	xor	eax, eax
	call	__printf_chk@PLT
	lea	rsi, .LC7[rip]
	xor	eax, eax
	mov	edx, ebx
	mov	edi, 1
	sub	edx, DWORD PTR 12[rsp]
	call	__printf_chk@PLT
	lea	rdi, .LC8[rip]
	call	puts@PLT
	mov	rax, QWORD PTR 8[r12]
	cmp	BYTE PTR [rax], 45
	jne	.L28
	cmp	BYTE PTR 1[rax], 102
	je	.L67
.L28:
	cmp	BYTE PTR [rax], 45
	jne	.L44
	cmp	BYTE PTR 1[rax], 99
	je	.L68
.L44:
	cmp	DWORD PTR 8[rsp], 4
	je	.L69
	lea	rsi, .LC9[rip]
	lea	rdi, .LC10[rip]
	call	fopen@PLT
	mov	r14, rax
.L32:
	mov	rdi, QWORD PTR 8[r12]
	lea	rsi, .LC11[rip]
	call	strcmp@PLT
	test	eax, eax
	je	.L30
	mov	rsi, r14
	mov	rdi, r13
	call	fputs@PLT
.L34:
	mov	rax, QWORD PTR 8[r12]
	cmp	BYTE PTR [rax], 45
	je	.L70
.L37:
	mov	rdi, r14
	call	fclose@PLT
	test	r13, r13
	je	.L35
.L38:
	mov	rdi, r13
	call	free@PLT
.L35:
	test	rbp, rbp
	je	.L48
	mov	rdi, rbp
	call	free@PLT
.L48:
	add	rsp, 40
	xor	eax, eax
	pop	rbx
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	cmp	r15d, ebp
	jge	.L25
	lea	edx, -1[rbp]
	movsx	rdi, r14d
	movsx	rsi, r15d
	mov	DWORD PTR 4[rsp], r11d
	sub	edx, r15d
	add	rdi, r12
	add	rsi, r13
	mov	DWORD PTR [rsp], ecx
	add	rdx, 1
	call	memcpy@PLT
	lea	r9d, [r14+rbp]
	mov	r11d, DWORD PTR 4[rsp]
	mov	ecx, DWORD PTR [rsp]
	sub	r9d, r15d
	mov	r14d, r9d
.L25:
	movsx	rax, r14d
	mov	edx, ebp
	add	r14d, 1
	mov	BYTE PTR [r12+rax], 32
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L42:
	mov	ebp, ebx
	jmp	.L20
.L70:
	cmp	BYTE PTR 1[rax], 99
	jne	.L37
	cmp	BYTE PTR 2[rax], 0
	je	.L38
	jmp	.L37
.L68:
	cmp	BYTE PTR 2[rax], 0
	jne	.L44
.L30:
	mov	rdi, r13
	call	puts@PLT
	jmp	.L34
.L17:
	sub	eax, ebp
	mov	r15d, eax
	.p2align 4,,10
	.p2align 3
.L19:
	mov	rdi, QWORD PTR stdin[rip]
	call	fgetc@PLT
	lea	edx, [r15+r13]
	mov	rcx, r13
	add	r13, 1
	mov	BYTE PTR -1[r13], al
	cmp	eax, -1
	jne	.L19
	jmp	.L61
.L62:
	lea	rdi, .LC0[rip]
	call	puts@PLT
	jmp	.L48
.L67:
	cmp	BYTE PTR 2[rax], 0
	jne	.L28
	mov	rdi, r14
	xor	r14d, r14d
	call	fclose@PLT
	mov	rax, QWORD PTR 8[r12]
	jmp	.L28
.L9:
	lea	rsi, .LC1[rip]
	lea	rdi, .LC2[rip]
	call	fopen@PLT
	mov	r14, rax
	jmp	.L10
.L69:
	mov	rdi, QWORD PTR 24[r12]
	lea	rsi, .LC9[rip]
	call	fopen@PLT
	mov	r14, rax
	jmp	.L32
.L13:
	mov	DWORD PTR [rsp], r9d
	call	clock@PLT
	movsx	rdi, r15d
	mov	DWORD PTR 12[rsp], eax
	call	malloc@PLT
	movsx	r9, DWORD PTR [rsp]
	mov	r13, rax
	jmp	.L39
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
