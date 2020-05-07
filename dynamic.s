
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,esp
int	ah,bx
sub	sp,edi
aas	bx,ecx
res	dx,di
res	ebx,bp
sub	eip,eax
res	sp,esi
set	eip,esi
aas	edx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
