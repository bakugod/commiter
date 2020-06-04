
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	cx,cx
and	ebx,eax
or	ebp,dx
or	al,bp
mov	edx,bx
aas	di,al
or	bx,di
add	ip,ebp
res	eax,ip
add	si,al
and	dx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
