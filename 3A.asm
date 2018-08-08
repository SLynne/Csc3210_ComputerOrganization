;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 3A
;Description: This program stores 2 different values in registers eax and edx.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.code
main proc
	mov	eax,3				
	mov	edx,8				

	invoke ExitProcess,0
main endp
end main