;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 3B
;Description: This program declares an array of size BYTE with 4 elements. Program sets eax,ebx,ecx and edx registers to zero to clear out any random values assigned by the 
;processor. Then program reverses given order of array via XCHG, and places the 4 elements in Little Endian order, with the right most value 

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array BYTE 10h,11h,3Ah,1Ch


.code
main proc
	mov eax,0			;set eax to zero, clears out random garbage values assigned by processor
	mov ebx,0			;set ebx to zero, clears out random garbage values assigned by processor
	mov ecx,0			;set ecx to zero, clears out random garbage values assigned by processor
	mov edx,0			;set edx to zero, clears out random garbage values assigned by processor

	mov al,array+3		;al = 1Ch
	mov bl,array+2		;bl = 3Ah
	mov cl,array+1		;cl = 11h
	mov dl,array		;dl = 10h

	invoke ExitProcess,0
main endp
end main