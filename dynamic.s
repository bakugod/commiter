
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	al,ebx
set	ebx,si
and	bp,ip
add	di,dx
mov	al,edx
int	si,ecx
mov	cx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
