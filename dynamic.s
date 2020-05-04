
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,esp
int	eax,bx
sub	ax,edx
sub	ebp,sp
aas	bp,esi
or	esi,edi
set	eax,edi
set	di,di
int	dx,bp
and	ip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
