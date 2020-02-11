
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,bx
mov	si,ax
aas	eax,ah
add	sp,al
res	edx,bx
mov	esp,bx
set	dx,esp
and	ip,al
int	al,sp
aas	bp,dx
int	eax,edi
add	eip,al
add	ax,eip
add	ax,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
