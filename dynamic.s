
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	sp,ip
res	al,ah
int	ax,al
and	cx,ebx
and	eax,dx
set	ip,si
sub	bx,eip
add	eip,ebx
mov	dx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
