;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 5A
;Description: This program finds the largest element in an array

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	arr DWORD 1, 5, -3, -4, 0, 6, 11, -9, 18
	ListSize = ($ - arr)
	max DWORD ?
	arrSize DWORD ?

.code
main proc
	
	 

	mov esi, 0

	mov eax, arr+[esi]
	mov ecx, eax
	;mov max, ecx 
	mov ebx, ListSize
	div ebx
	mov arrSize, ecx
	mov ecx, eax
	mov max, ecx 
	
	While1:

		cmp esi, arrSize
		jge endWhile

		cmp eax, arr[esi]
		jge While1
		 
		mov eax, arr[esi]
		mov max, eax

		inc esi

	endWhile:


	invoke ExitProcess,0
main endp
end main