
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	di,edx
or	esi,eax
add	ip,dx
aas	esi,ah
and	esp,eax
or	ip,si
res	dx,sp
sub	bp,si
mov	ebp,eip
sub	ah,ebx
set	ax,ecx
and	eax,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
