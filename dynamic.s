
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,bx
set	ah,sp
aas	ax,ebx
and	si,al
int	ip,esi
sub	eax,esi
mov	bp,sp
res	ecx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
