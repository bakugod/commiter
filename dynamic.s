
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,ecx
add	bx,ebx
add	ah,ax
and	eip,esi
and	esp,si
or	al,ebx
mov	eax,bx
set	dx,sp
add	ebp,ax
int	esp,ax
mov	eax,esi
res	ax,bp
and	si,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
