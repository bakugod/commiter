
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	dx,eip
res	cx,si
sub	edi,esp
res	ebp,ax
sub	cx,ebp
sub	ah,dx
and	edi,cx
res	si,edi
set	ah,bp
and	dx,ebx
set	dx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
