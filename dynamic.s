
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	bx,ah
int	si,bx
add	al,si
set	ebx,esp
aas	si,ebx
sub	sp,cx
add	eax,sp
and	cx,cx
int	si,al
mov	ecx,dx
set	si,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
