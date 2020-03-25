
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,ip
sub	dx,bp
sub	al,dx
res	eax,dx
set	sp,ax
mov	dx,cx
sub	ebx,dx
and	ecx,ah
set	sp,ecx
add	bp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
