
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bx,si
mov	ecx,al
sub	ax,eip
or	sp,ah
sub	ip,al
add	dx,ip
res	ebp,dx
and	al,dx
mov	ah,sp
int	ebx,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
