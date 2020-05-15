
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eip,sp
and	esp,eax
mov	ebx,ip
mov	bp,edx
set	di,edx
or	edi,ebp
set	si,al
or	cx,cx
add	bp,dx
res	sp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
