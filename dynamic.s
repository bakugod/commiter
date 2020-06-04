
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	cx,ip
set	ebx,ebp
or	cx,dx
and	al,ebp
sub	esi,bp
set	ip,sp
sub	al,sp
int	ecx,edx
int	di,bx
mov	ecx,sp
add	ebx,eip
or	esi,bx
int	ecx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
