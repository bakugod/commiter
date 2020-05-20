
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edx,ebp
and	eip,eip
set	ecx,bp
sub	edx,esi
sub	esp,ebx
or	esp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
