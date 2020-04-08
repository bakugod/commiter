
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edx,eip
mov	ecx,al
set	bx,al
sub	si,dx
int	ecx,di
or	cx,ip
add	ebp,dx
or	esi,eax
set	ip,dx
set	ebx,di
sub	dx,cx
set	sp,ah
res	edx,dx
or	ah,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
