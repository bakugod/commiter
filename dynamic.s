
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	cx,edx
set	ah,edi
sub	ebp,bx
res	bx,edx
mov	cx,sp
or	ecx,edx
aas	ebx,esp
add	cx,ecx
int	bx,al
and	esp,bp
set	ah,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
