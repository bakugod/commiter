
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,ebx
int	dx,si
set	eax,di
set	eip,edx
int	cx,edi
mov	ax,ebp
add	ah,ecx
int	ecx,dx
aas	ebx,dx
add	ax,ecx
add	ecx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
