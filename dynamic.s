
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	eip,dx
aas	ebp,bp
int	ip,ebp
mov	edx,eax
and	bp,esp
and	cx,ecx
int	ecx,ecx
add	bp,edi
add	eip,bx
aas	ebx,ax
add	si,di
set	sp,bx
and	bx,al
or	sp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
