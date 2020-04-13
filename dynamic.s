
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bx,ah
or	eax,eip
res	cx,esp
set	bp,di
aas	ip,di
or	ebp,al
add	ebx,dx
res	edx,edx
and	eax,ebp
set	ecx,si
int	esp,eip
sub	ax,edi
aas	esi,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
