
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ax,esi
add	ax,ecx
int	eip,cx
set	ebp,eax
set	ah,ebx
aas	ecx,eax
mov	ax,eip
set	bx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
