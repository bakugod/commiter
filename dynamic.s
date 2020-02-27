
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ax,di
or	esi,edx
mov	si,al
int	edx,ah
mov	cx,dx
res	sp,al
and	ebp,bx
set	eax,esp
sub	dx,eip
int	eip,ecx
set	ecx,ah
aas	edx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
