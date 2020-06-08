
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bx,bp
res	esi,sp
set	ebx,ebx
or	bp,esi
aas	ecx,ip
res	eax,bx
sub	ecx,ecx
res	ecx,edx
mov	ecx,ip
mov	eip,cx
and	di,ebp
set	edi,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
