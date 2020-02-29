
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,ecx
mov	ip,ax
add	ah,ebp
sub	ebx,ebp
set	sp,bp
set	dx,ebx
aas	ip,sp
aas	cx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
