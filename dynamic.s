
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,ecx
res	ax,si
or	bp,ah
aas	edi,dx
aas	si,bx
set	bx,sp
sub	di,cx
or	ip,dx
sub	ecx,ah
or	ebx,esp
int	eip,cx
aas	esp,di
mov	dx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
