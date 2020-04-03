
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eax,esi
int	di,edx
res	cx,eip
or	cx,eax
int	ebx,edi
and	esp,cx
aas	cx,ebp
res	bx,dx
set	ebx,cx
res	si,sp
res	al,dx
aas	sp,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
