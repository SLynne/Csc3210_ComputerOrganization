;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 4D
;Description: This program runs nested for loops. the outer loop runs 6 times and the inner loop runs 3 times for each outer loop. each run of the inner loop adds
; the values of i and j and saves to y
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	i DWORD 6
	j DWORD 3
	y DWORD ?

.code
main proc

	mov ecx, 6 ;set counter to 6


	L1:
		mov i, ecx ;save L1 counter
		mov ecx, 3 ;set L2 counter
	L2:
		mov j, ecx ;set j equal to L2 counter
		mov eax, i ; set eax equal to L1 counter
		mov ebx, j ; set ebx equal to j
				
		add eax, ebx ; add L2 counter and L1 counter

		mov edx, eax ;move sum of L2+L1 counters to edx
	
		loop L2 ;repeat L2 loop
		mov ecx, i ;restore L1 counter
		loop L1 ;repeat L1 loop

	invoke ExitProcess,0
main endp
end main