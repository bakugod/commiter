
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esi,ebp
set	ecx,al
sub	eax,edx
int	ecx,di
sub	eax,ax
int	al,si
sub	bp,dx
add	esi,dx
add	dx,esi
int	ebp,bx
aas	esp,ecx
set	edi,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
