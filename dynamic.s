
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esp,dx
and	di,bx
set	ip,cx
or	esp,bp
add	di,ecx
sub	ebx,bp
int	ah,ip
aas	al,bp
aas	edi,dx
add	ebx,ecx
add	ebp,cx
set	di,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
