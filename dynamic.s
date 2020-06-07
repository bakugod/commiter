
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ah,bp
res	bx,dx
or	al,dx
aas	si,edi
or	bp,edi
aas	ip,di
mov	ebp,si
set	edx,ebx
or	di,esp
add	dx,esp
res	edx,eax
or	ebp,cx
or	dx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
