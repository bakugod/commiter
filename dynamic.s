
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bp,dx
res	cx,si
res	dx,si
and	ebp,ecx
res	ebx,eax
or	bp,sp
sub	di,ebx
res	esp,sp
int	eax,edi
sub	cx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
