
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eip,edi
sub	esp,ax
aas	ip,sp
int	bp,di
mov	ebx,edi
int	sp,eip
aas	ecx,dx
add	ebp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
