
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eax,edi
res	esp,ecx
set	esp,ebp
sub	dx,dx
int	bp,ebx
aas	ah,ax
mov	ecx,cx
or	ebx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
