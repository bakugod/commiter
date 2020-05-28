
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,bp
add	al,ax
res	esi,ax
mov	dx,ebp
or	edi,eax
set	eax,ebx
add	esp,ebp
or	edx,edi
int	si,esp
mov	ah,dx
sub	eax,cx
res	ip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
