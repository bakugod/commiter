
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ecx,edi
add	bp,bx
res	si,ebp
set	eax,esi
mov	esp,eip
aas	eax,eax
add	ah,ax
res	edi,esp
aas	ebp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
