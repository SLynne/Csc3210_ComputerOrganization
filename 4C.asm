;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 4C
;Description: This program computes [z=-x+6-y+17] using a loop structure

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	x SWORD 1
	y WORD 10
	z SWORD 4 DUP (?)

.code
main proc

	mov ecx, 4 ;set counter to 4
	mov ax, x ;ax = 1
	mov esi, 0
	

	L1:
		neg ax ;-x
		add ax, 6 ;-x+6
		sub y, ax ;-x+6-y
		add ax, 17 ;-x+6-y+17

		mov [z+esi], ax ;fill array z with ax
		inc x ;x++
	loop L1

	invoke ExitProcess,0
main endp
end main