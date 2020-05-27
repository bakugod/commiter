
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebp,edi
aas	ip,si
add	ip,eax
aas	ebx,ax
and	esi,ah
aas	si,ebp
aas	ah,di
and	bp,dx
set	bp,sp
mov	ah,cx
set	al,dx
aas	ax,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
