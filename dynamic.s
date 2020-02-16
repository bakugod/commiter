
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ip,ebp
or	al,ip
res	bp,ah
and	cx,ah
int	ecx,si
set	eip,edx
aas	bx,ecx
and	ebp,dx
mov	ebp,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
