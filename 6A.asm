;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 6A
;Description: This program checks if the MSB of a number is set (1) or not set (0). If set, divide number by 4, else multiply by 8 using arithmatic shift and store in al.

INCLUDE Irvine32.inc
.data
	p1 BYTE "Enter the multiplicand: ",0
	p2 BYTE "Enter the multiplier: ",0
	p3 BYTE "The product is ",0

.code
main PROC
	call Clrscr
	
	; Input the multiplicand
	mov edx,OFFSET p1
	call WriteString
	call ReadDec ;ReadDec stores the first input (multiplicand) in eax
	mov ebx,eax ;save eax in ebx so the next ReadDec will not overwrite it
	
	; Input the multiplier
	mov edx,OFFSET p2
	call WriteString
	call ReadDec ;ReadDec stores the second input (multiplier) in eax
	call Crlf
	
	; multiply EBX by EAX, producing EAX
	call shiftMultiplication
	
	; Display the product in EAX
	mov edx,OFFSET p3
	call WriteString
	call WriteDec
	call Crlf

	
	shiftMultiplication PROC
		mov edx, eax ; save parameter multiplier
		mov eax, 0
		mov cl, 0

		L1:
			shr edx, 1 ;divide edx
			jnc L2     ;jump if no carry

			mov esi, ebx  
			shl esi, cl  
			add eax, esi
		
			
		L2:
			inc cl
			cmp cl, 32
			jb L1 ;jump if cl is below 32
		
		
		ret
	shiftMultiplication ENDP
	
	exit
main endp
end main