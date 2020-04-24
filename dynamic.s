
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ecx,ip
add	esp,dx
add	ecx,ebp
or	di,cx
set	edx,ebx
mov	eax,di
or	esp,edx
sub	ebp,di
aas	esp,sp
mov	sp,eax
and	ip,eip
res	ax,bx
set	ah,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
