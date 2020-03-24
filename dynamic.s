
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ax,esp
int	bp,ebp
and	bx,cx
mov	edx,ecx
sub	al,ax
or	ecx,esp
mov	bx,ebp
mov	esp,si
add	cx,eip
add	sp,ebx
mov	sp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
