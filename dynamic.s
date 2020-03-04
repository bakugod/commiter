
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ax,si
or	cx,di
set	ip,ah
res	cx,esp
int	ebp,bx
sub	si,bx
and	esp,bx
set	di,ah
set	bp,cx
aas	edi,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
