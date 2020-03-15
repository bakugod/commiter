
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ip,ax
aas	dx,eax
int	sp,eip
set	ebp,eip
mov	cx,al
and	eax,esp
int	esp,bx
or	edx,esi
add	bx,eip
and	si,edx
add	esi,cx
mov	bx,dx
add	esp,edi
or	sp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
