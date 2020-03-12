
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ecx,bp
set	edx,dx
sub	eax,sp
int	ip,ah
aas	ebx,sp
or	di,esp
mov	ecx,edi
set	bx,di
or	bx,eax
int	eip,ah
mov	eax,bx
and	eax,ip
and	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
