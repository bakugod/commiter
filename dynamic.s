
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebx,cx
sub	esp,ax
int	eip,ecx
set	bp,edi
sub	bp,bp
aas	dx,edi
sub	ip,sp
res	bx,ecx
int	bp,bx
mov	esi,ax
set	eip,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
