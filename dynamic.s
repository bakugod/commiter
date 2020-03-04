
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esp,ecx
sub	edi,ecx
add	ebx,ebp
aas	ax,bx
aas	edx,si
int	ebx,esp
mov	edx,si
sub	ax,ebp
mov	ip,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
