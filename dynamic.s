
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	cx,ebx
mov	esp,di
mov	ip,dx
set	esp,si
int	esi,ebx
sub	ecx,ah
mov	sp,ecx
and	bx,dx
int	ebp,ax
add	al,dx
set	bp,esp
and	dx,esi
mov	di,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
