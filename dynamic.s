
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edi,bp
add	edi,ebx
add	al,ip
aas	ebp,eax
res	eax,eip
aas	si,eip
mov	eip,eax
or	ebp,ip
add	edi,eax
aas	di,di
add	ebx,ah
mov	edx,ah
add	esi,edi
res	ip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
