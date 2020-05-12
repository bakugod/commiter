
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ax,ax
add	ecx,edi
add	bx,esi
int	di,ebx
add	di,ip
int	cx,eax
sub	ebx,sp
sub	esp,ax
aas	ebp,eip
mov	si,di
and	al,esi
and	eax,dx
set	bx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
