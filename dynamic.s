
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	dx,ecx
add	esp,esi
sub	sp,dx
or	sp,al
and	edx,eip
add	eax,ebp
set	ax,di
mov	esp,eip
and	ecx,bx
int	sp,ecx
sub	bx,dx
sub	eip,al
res	al,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
