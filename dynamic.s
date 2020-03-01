
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ah,esp
aas	esi,ebp
int	ip,edx
set	sp,ax
set	eax,ip
res	ah,esp
int	esp,ebp
res	di,cx
or	ecx,ip
aas	si,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
