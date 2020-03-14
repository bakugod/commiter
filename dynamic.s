
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,ax
aas	ebx,edx
set	ah,si
mov	dx,sp
and	ah,bp
aas	bp,esi
set	di,bp
set	eip,eax
sub	ah,esi
int	edi,dx
sub	ebp,si
aas	eip,di
and	si,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
