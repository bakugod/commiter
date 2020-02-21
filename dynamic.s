
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,cx
or	esp,si
and	bx,sp
aas	edi,ip
set	ebp,bp
res	edi,si
or	esp,al
add	eax,esi
mov	al,al
set	di,sp
aas	di,eax
aas	cx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
