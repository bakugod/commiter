
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,esp
set	cx,ip
add	bx,ip
mov	di,ax
and	bx,ecx
mov	ah,ebx
aas	bx,bp
mov	ip,al
set	eax,cx
and	ah,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
