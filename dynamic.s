
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	di,esp
sub	ip,edi
and	ebx,al
add	sp,esp
int	ebp,esp
and	si,eax
and	cx,eax
and	sp,eax
set	ip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
