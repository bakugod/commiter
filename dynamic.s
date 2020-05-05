
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ip,di
int	ax,bx
mov	ax,ah
mov	bx,ah
add	di,dx
aas	eax,ah
sub	bp,si
and	ebx,edx
int	ecx,ah
set	esi,eax
add	cx,edi
and	si,si
sub	eax,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
