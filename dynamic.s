
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esp,edi
mov	si,al
add	ebp,ah
res	esi,al
mov	esi,ebp
or	dx,ebx
set	ebp,esp
mov	ah,bx
set	sp,esi
res	cx,ip
and	di,edi
int	ecx,ip
sub	esp,edx
int	al,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
