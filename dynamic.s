
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edi,di
sub	ah,eax
set	eax,edx
res	bx,ax
res	eip,bx
or	eip,di
int	esi,ecx
and	edx,esi
int	di,bx
aas	ah,al
res	ax,al
aas	eip,esp
add	edi,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
