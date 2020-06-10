
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bp,ip
and	dx,edi
and	bx,ecx
and	edx,ebp
int	dx,ebx
sub	si,bp
int	eax,al
add	eax,esp
add	edx,sp
sub	ip,eax
aas	ebx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
