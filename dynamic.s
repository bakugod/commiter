
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebx,al
add	eax,ebp
and	esi,edx
res	esp,edx
or	edi,dx
add	di,dx
set	esi,bp
res	ecx,edx
set	ebx,cx
aas	sp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
