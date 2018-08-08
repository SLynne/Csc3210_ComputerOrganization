;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 3B
;Description: This program declares var1/2/3 of size WORD with given values. Program then moves val1 to register eax, adds 7 to eax, subtracts val2 and val3 from eax.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
val1 WORD 7
val2 WORD 14
val3 WORD 27

.code
main proc
	movzx eax,val1				
	add eax,7
	
	movzx ebx, val2
	sub eax,ebx
	movzx ecx,val3
	sub eax,ecx		

	invoke ExitProcess,0
main endp
end main