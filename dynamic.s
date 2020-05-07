
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esp,esp
set	eip,cx
int	di,si
set	eax,edx
int	eax,ebx
sub	bx,ip
and	bp,esp
add	bx,ah
and	ebx,eip
mov	ax,eax
aas	bx,ip
res	ah,dx
and	edi,esp
sub	esp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
