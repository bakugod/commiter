
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	cx,bp
set	ebp,ax
or	ebp,esp
and	esi,cx
int	si,eax
and	ax,ip
and	cx,esp
add	edx,di
and	edi,ax
and	esi,ax
mov	dx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
