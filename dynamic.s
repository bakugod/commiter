
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bx,eip
aas	bx,eip
int	esp,bp
sub	esp,ebx
sub	bp,cx
add	ah,si
aas	si,eip
add	di,ecx
add	sp,cx
int	sp,edx
res	bx,eip
add	ebp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
