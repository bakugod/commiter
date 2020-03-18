
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esi,edx
add	esi,esp
res	ip,edx
aas	edx,sp
set	ebp,eip
add	ebp,di
and	esi,si
sub	bx,edi
res	si,esp
res	edi,ip
sub	ebx,dx
res	edi,bx
and	bp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
