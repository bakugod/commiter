
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,di
set	cx,ah
int	si,ecx
sub	eip,ebp
and	al,edx
or	bp,ah
and	bp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
