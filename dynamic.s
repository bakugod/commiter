
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esi,eax
int	eax,sp
res	esi,eip
mov	bp,ebx
add	eip,bx
or	cx,dx
res	bx,dx
mov	eip,dx
sub	bp,si
and	al,eax
sub	sp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
