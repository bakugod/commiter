
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	al,al
or	eip,bp
res	ip,ebp
add	cx,di
sub	eip,ecx
and	ip,edi
mov	dx,dx
aas	ebx,bp
add	sp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
