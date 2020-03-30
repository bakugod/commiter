
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	eax,bx
res	cx,ebx
set	ebp,di
mov	ebp,dx
add	ecx,di
set	al,eax
and	dx,ecx
res	ebp,si
res	esp,di
sub	ah,ecx
int	ip,ax
int	sp,ah
int	ah,cx
add	eax,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
