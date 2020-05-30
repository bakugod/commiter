
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esi,cx
mov	ebp,edx
or	bp,ebp
res	esi,di
and	eip,sp
aas	al,cx
aas	si,ecx
int	bp,bp
sub	di,ebx
mov	dx,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
