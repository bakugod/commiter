
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eip,bp
aas	ax,dx
sub	dx,cx
int	eip,edx
and	edi,ebp
and	ebx,eax
set	esi,ax
sub	ecx,ebx
mov	dx,sp
or	edi,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
