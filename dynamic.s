
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	cx,bp
mov	eax,si
sub	edx,edi
or	bx,edi
set	sp,ip
or	cx,eip
and	bx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
