
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ebx,edi
int	al,edi
add	eip,eax
res	ebx,bx
sub	dx,esi
mov	di,esi
mov	esi,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
