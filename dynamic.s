
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	cx,edx
res	cx,ebx
aas	ebx,bp
and	edx,ebx
or	di,cx
or	bp,ecx
set	bx,ebx
res	al,eax
res	si,si
aas	edx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
