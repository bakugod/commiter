
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	di,di
sub	sp,bx
int	cx,edx
mov	si,ebp
or	esp,ebx
set	ip,ax
res	ah,esi
or	di,cx
res	ip,al
set	dx,esi
and	di,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
