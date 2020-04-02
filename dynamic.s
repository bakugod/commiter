
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edx,dx
set	eax,ebp
add	bp,si
add	si,eax
mov	sp,bx
set	si,ip
add	eax,edx
int	bp,esi
int	ebp,eax
set	ip,ip
add	ebx,sp
int	eax,ip
and	cx,eax
res	bp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
