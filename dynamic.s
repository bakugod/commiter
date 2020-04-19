
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,eip
sub	esp,esp
int	ah,ip
res	esp,ip
and	di,eip
add	edx,esp
sub	ah,cx
mov	al,eax
res	cx,esi
and	ebp,esp
sub	bx,ah
res	ah,dx
int	bp,si
int	si,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
