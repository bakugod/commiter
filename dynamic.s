
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,ax
sub	cx,di
and	cx,si
or	bx,si
int	eax,dx
int	sp,esi
add	ax,sp
mov	ecx,sp
int	eax,ecx
aas	dx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
