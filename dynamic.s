
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ah,ah
add	dx,di
aas	dx,bp
set	bx,cx
aas	dx,bp
or	ip,di
mov	al,ebx
set	eax,bx
and	edx,sp
or	ebp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
