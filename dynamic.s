
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	cx,cx
mov	ip,eax
set	ecx,al
set	al,cx
add	ecx,eax
int	al,eip
res	sp,sp
aas	ip,bp
sub	cx,bx
and	bp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
