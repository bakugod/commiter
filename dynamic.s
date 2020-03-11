
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bp,ah
aas	bp,bx
mov	dx,esp
and	ax,dx
int	ebx,esp
set	ax,di
int	esp,ebx
mov	di,si
or	esp,bx
add	ip,cx
or	sp,esi
aas	esp,cx
and	sp,bx
aas	cx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
