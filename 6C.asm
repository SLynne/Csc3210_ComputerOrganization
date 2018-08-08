;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 6C
;Description: val1 = (val2/val3) * (val4+val2) - (val4 *3)


.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	val1 SDWORD ?
	val2 SDWORD 4
	val3 SDWORD 2
	val4 SDWORD 6

.code
main PROC
		
	mov ebx, val2 ;ebx =4h
	cdq
	mov ecx, val3 ;ecx =2h
	cdq

	idiv val3 ;(val2/val3) = (4/2)=2, ecx = 2h

	mov edx, val4 ;edx =6h
	;

	mov eax, edx  ; eax = 6h
	add eax, ebx  ; (val4+val2) = (6+4)=10, eax=10=Ah
	imul edx, 3   ;(val4*3) =(6*3)=18, edx=18=12h

	imul ecx, eax ;(val2/val3) * (val4+val2) =(2*10)=20, ebx = 14h
	sub ecx, edx  ;(val2/val3) * (val4+val2) - (val4 *3) = (20-18)=2, ebx=2h

	mov eax, ecx
	mov val1, eax

	
	
main endp
end main