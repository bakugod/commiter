
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	dx,ax
or	sp,si
and	esp,ax
sub	di,esp
mov	cx,ebx
mov	ebx,edx
or	di,si
res	ax,sp
int	edi,ebp
res	ecx,eip
add	dx,cx
set	ax,esi
int	edi,esi
mov	ah,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
