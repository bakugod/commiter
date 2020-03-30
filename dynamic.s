
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	si,ax
set	edx,edx
and	bx,edi
mov	bx,ax
sub	si,si
res	al,di
mov	eip,edi
aas	ebx,edi
mov	eip,ebx
and	dx,di
res	ax,eip
res	eip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
