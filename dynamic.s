
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,esp
sub	eip,esp
aas	ecx,di
aas	bp,cx
aas	si,di
and	esi,si
mov	esp,ah
mov	edx,bx
mov	esp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
