
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esi,dx
res	dx,bp
set	esp,edx
and	ecx,bp
mov	edi,bx
or	eip,bp
and	dx,ebx
and	eip,al
or	ebx,eip
set	ecx,cx
add	esp,eip
add	cx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
