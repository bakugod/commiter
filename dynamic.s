
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,ecx
or	eip,esp
and	di,ecx
mov	ah,ecx
mov	ebx,esi
and	ah,cx
aas	di,edx
res	si,sp
set	di,bp
res	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
