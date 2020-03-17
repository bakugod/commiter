
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esi,bp
res	ebp,edx
sub	ebp,ecx
mov	ip,si
mov	bp,esp
add	bx,edx
add	ecx,ebx
mov	si,ip
set	di,ebx
and	edx,bp
int	ecx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
