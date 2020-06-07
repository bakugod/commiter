
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,esp
set	al,esi
and	edx,edx
aas	ah,bp
sub	sp,ebp
or	eip,ah
set	ebp,si
int	cx,ip
or	edx,sp
and	ecx,sp
add	dx,dx
add	esp,di
int	si,ah
sub	bx,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
