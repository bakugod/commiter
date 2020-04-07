
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ah,al
int	si,esp
and	al,di
aas	eax,ax
aas	cx,bp
sub	di,edx
res	edx,esp
res	cx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
