
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eax,esi
res	si,ip
aas	edi,si
add	ax,dx
mov	dx,esp
set	eip,al
sub	ecx,esp
set	ebx,bx
int	ebx,sp
int	bp,ah
set	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
