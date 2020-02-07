
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bx,bp
mov	di,ebp
and	di,ax
aas	esi,ax
aas	dx,esp
int	bp,ebx
int	ah,ebx
mov	bx,bp
set	edi,eip
and	ecx,bp
add	eip,ax
aas	eip,eip
res	al,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
