
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bx,esi
mov	al,edi
or	cx,di
sub	eax,ax
and	ebp,edx
int	edx,ebx
int	ax,ebx
mov	ecx,ax
set	cx,dx
sub	eip,ecx
aas	ip,ah
int	cx,bp
add	ip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
