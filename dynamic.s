
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	di,di
or	bx,eip
and	ip,ecx
add	dx,di
and	ip,ecx
mov	ebx,di
int	eax,ah
res	al,di
mov	cx,cx
mov	esp,eax
mov	bp,ecx
or	esp,al
aas	eip,di
set	sp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
