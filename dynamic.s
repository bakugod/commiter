
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,cx
aas	eip,dx
int	ebx,si
aas	bp,edx
int	ebp,dx
set	si,sp
and	ah,di
or	di,sp
add	ecx,esp
aas	si,esp
aas	si,edi
mov	esi,sp
or	bx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
