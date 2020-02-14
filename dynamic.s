
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edi,cx
res	bp,al
aas	ecx,al
aas	di,eip
and	edx,bx
and	di,bx
aas	edi,bx
set	di,ebx
mov	ax,bp
sub	esi,al
set	bx,di
set	ip,eax
aas	ebp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
