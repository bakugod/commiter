
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	cx,dx
sub	bp,esp
and	ax,ebx
aas	ecx,eip
sub	ah,esp
and	dx,al
set	ip,edx
aas	ax,sp
int	esi,esp
set	esi,edx
or	si,edx
set	ax,edx
add	bx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
