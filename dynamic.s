
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	cx,di
int	eax,bx
add	al,esp
int	ebp,bp
and	esi,eax
mov	cx,si
and	edi,eip
or	bp,di
and	bx,di
aas	edx,bx
int	di,esp
add	bp,dx
set	dx,si
or	ebp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
