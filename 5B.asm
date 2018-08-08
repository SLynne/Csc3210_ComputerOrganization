;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 5B
;Description: This program computes executes an if loop nested in a while loop

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	A SDWORD 5
	B SDWORD 6
	x SDWORD 11

.code
main proc
	
	mov eax, A
	mov ebx, B

	While1:
		
		cmp x, 0
		jle endWhile

		cmp x, 3
		je else1

		cmp x, eax
		jl then1

		cmp x, ebx
		jg then1

		jmp else1

		else1: 
		
			sub x, 1
			jmp While1

		then1:
		
			sub x, 2
			jmp While1

	endWhile:


	invoke ExitProcess,0
main endp
end main