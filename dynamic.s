
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	esi,ecx
set	dx,dx
sub	ecx,al
or	esp,esp
and	ebp,eip
sub	ecx,si
mov	eip,cx
sub	ecx,esp
aas	edx,ah
mov	al,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
