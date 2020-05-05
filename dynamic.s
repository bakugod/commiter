
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ax,ecx
set	ebx,ebp
sub	ax,esp
res	ip,esp
mov	bx,esp
int	ip,edx
or	ip,ah
and	esi,ip
int	eax,edx
add	ax,edx
mov	bx,esp
aas	si,ax
aas	dx,edx
res	al,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
