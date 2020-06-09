
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,bp
mov	esp,edi
int	ebp,bx
and	esp,si
mov	sp,al
add	ecx,si
or	dx,eip
set	edi,eip
or	ax,edx
set	ip,ah
or	sp,dx
res	ecx,esp
int	bx,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
