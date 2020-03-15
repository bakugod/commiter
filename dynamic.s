
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ecx,edx
res	ah,ebp
sub	ebx,edi
set	cx,esp
add	ecx,ah
set	eip,edi
sub	bx,esp
and	si,ip
and	ah,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
