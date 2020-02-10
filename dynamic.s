
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,ah
mov	esp,ip
mov	si,si
or	ip,edi
sub	dx,ebp
set	cx,ip
or	esi,ebp
and	cx,si
set	bp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
