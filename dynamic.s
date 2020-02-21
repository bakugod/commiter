
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,ebp
int	eip,eip
mov	ebx,al
and	ip,ecx
and	bp,ah
int	di,sp
set	dx,ebx
int	ebx,ecx
set	esi,ax
int	di,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
