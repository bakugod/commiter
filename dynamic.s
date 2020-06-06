
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebx,sp
mov	ecx,dx
and	sp,ip
add	ecx,edx
aas	eax,bx
add	eax,si
aas	ecx,ecx
int	ecx,ebp
int	esp,di
sub	bx,ip
or	ah,dx
int	eip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
