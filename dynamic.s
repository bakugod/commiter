
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bp,di
int	al,dx
and	ebp,ebx
res	eip,edi
int	edx,eax
and	eip,edx
sub	esi,ax
int	dx,ecx
and	cx,dx
int	edx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
