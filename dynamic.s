
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	dx,ah
add	eip,sp
mov	ip,ip
res	cx,dx
add	si,ebp
aas	ip,eip
and	esp,ecx
sub	edx,ebp
and	edx,edx
or	bx,ah
set	ip,edi
mov	bx,esi
and	ax,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
