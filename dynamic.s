
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	esp,dx
or	ax,sp
sub	esi,ebp
and	sp,ah
aas	esi,di
set	ecx,di
mov	eax,ax
add	edx,ip
int	cx,esp
aas	esp,edx
or	ebx,dx
int	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
