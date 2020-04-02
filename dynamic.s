
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebp,dx
int	di,esp
res	di,al
set	ax,bx
int	esi,ebx
or	ecx,edi
mov	si,ax
aas	ip,ip
or	eax,esp
set	bp,esp
sub	ax,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
