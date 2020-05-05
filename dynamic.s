
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,ecx
aas	ah,ah
int	ebp,ebx
and	ip,al
set	esp,ah
res	di,dx
add	ecx,eax
and	esp,al
set	eax,dx
add	al,esp
set	eip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
