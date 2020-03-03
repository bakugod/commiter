
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ah,ebp
mov	eip,ah
int	ax,di
int	ecx,ax
sub	bx,dx
set	ax,di
and	cx,edx
or	ip,bx
mov	ebp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
