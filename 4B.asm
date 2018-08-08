;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 4B
;Description: This program uses a loop to reverse the elements of an aray

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	arr DWORD 1,2,3,4,5,6,7,8,9,10,11,12 ;array of 12, 64 bit integers


.code
main proc
	mov esi, 0 
	mov ecx, LENGTHOF arr/2 ;set counter at half the length of the array

	L1:
		mov eax, arr[esi] ;
		xchg eax, arr[esi+4] ; 2 becomes 1
		mov arr[esi], eax ; ; 1 becomes 2
		add esi, TYPE arr*2
	loop L1

	invoke ExitProcess,0
main endp
end main