
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eax,dx
or	esp,cx
and	ax,edi
sub	esi,bx
and	ebx,ip
res	eax,ebx
or	edx,ebp
mov	al,al
int	eax,edi
add	bx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
