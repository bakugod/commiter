
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	di,ecx
res	al,ip
set	bp,edx
sub	ecx,esp
or	bx,ip
aas	ebp,di
and	ah,edx
res	si,ah
mov	ebx,eax
set	esi,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
