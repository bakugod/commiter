
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,cx
aas	dx,edx
aas	eax,ecx
int	ebp,eax
res	ip,edx
mov	al,cx
res	al,esp
sub	sp,ax
int	ecx,sp
sub	di,dx
mov	ecx,eip
or	sp,dx
add	bp,ax
add	cx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
