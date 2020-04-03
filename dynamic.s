
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	di,bx
sub	si,ip
sub	cx,esi
add	ebp,sp
and	bp,bp
and	ecx,al
add	dx,eip
mov	ip,esp
int	ebx,eax
sub	ebp,dx
sub	sp,eax
or	bp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
