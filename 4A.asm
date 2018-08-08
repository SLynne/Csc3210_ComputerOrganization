;Student: Stephanie Wyckoff
;Class: CSC3210
;Assignment: 4A
;Description: This program adds the sum of of the bytes of a 64 bit number using PTR
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myNum QWORD 0102030405060708h ;8 byte hexadecimal


.code
main proc
	mov al, BYTE PTR myNum+7 ;al = 08
	add al, BYTE PTR myNum+6 ;al = 08+07
	add al, BYTE PTR myNum+5 ;al = 08+07+06
	add al, BYTE PTR myNum+4 ;al = 08+07+06+05
	add al, BYTE PTR myNum+3 ;al = 08+07+06+05+04
	add al, BYTE PTR myNum+2 ;al = 08+07+06+05+04+03
	add al, BYTE PTR myNum+1 ;al = 08+07+06+05+04+03+02
	add al, BYTE PTR myNum   ;al = 08+07+06+05+04+03+02+01

	invoke ExitProcess,0
main endp
end main