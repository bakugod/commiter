
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bx,esi
mov	cx,edx
sub	ecx,ebx
sub	bx,eip
or	eax,sp
add	si,ebx
sub	edx,ecx
res	eip,esi
and	eax,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
