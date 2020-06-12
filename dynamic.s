
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	al,ebp
or	bx,cx
or	al,edx
sub	bp,edi
res	ax,ebx
add	ax,cx
aas	ebp,ip
aas	bp,bp
res	ebx,bp
sub	edx,eip
sub	ecx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
