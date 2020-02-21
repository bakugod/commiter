
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edx,di
aas	ip,esp
add	sp,si
set	eax,ah
or	al,bx
sub	eax,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
