
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,bx
mov	cx,si
and	ebp,ebp
sub	ecx,esp
int	esp,cx
set	esp,ebx
res	sp,bx
and	ecx,sp
or	sp,dx
set	ip,eip
sub	cx,al
add	eip,dx
int	sp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
