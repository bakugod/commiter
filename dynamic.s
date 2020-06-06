
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	dx,si
add	edi,di
aas	al,ax
and	eip,bx
aas	bx,esi
sub	bp,bp
and	dx,si
mov	dx,ebp
and	ebx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
