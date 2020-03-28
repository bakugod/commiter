
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ax,bx
and	eip,ebp
int	dx,dx
int	ecx,bp
sub	di,bp
sub	eax,esp
set	esi,cx
mov	si,esp
sub	edi,eip
sub	eip,bp
mov	edi,bx
set	edi,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
