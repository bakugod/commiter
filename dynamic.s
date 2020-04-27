
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,ah
add	ebx,cx
mov	esp,edi
or	ebx,bp
set	bx,ax
and	al,eax
set	si,sp
set	ax,bx
add	esi,ah
and	eax,edx
aas	edx,ebx
set	al,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
