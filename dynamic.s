
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,bx
set	ecx,dx
and	si,esp
mov	esi,di
or	esi,dx
aas	ebp,bp
int	ebx,di
add	eip,ah
or	eip,ax
or	dx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
