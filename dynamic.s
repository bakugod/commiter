
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ip,si
set	bp,ax
res	al,bx
sub	dx,eax
res	ebx,si
or	ah,edi
add	al,cx
or	esp,ecx
mov	cx,esi
or	ebx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
