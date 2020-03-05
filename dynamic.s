
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esi,ax
add	esp,esp
mov	ah,ax
set	bx,di
sub	edi,dx
aas	esi,cx
aas	ax,esi
mov	eax,di
int	edi,dx
or	cx,sp
sub	edx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
