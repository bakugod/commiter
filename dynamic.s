
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esp,di
sub	ebp,dx
sub	dx,ax
add	edi,di
and	esi,si
mov	di,esp
res	sp,bp
add	sp,dx
int	eip,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
