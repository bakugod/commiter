
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ah,esp
sub	ah,ah
sub	ip,cx
int	edx,al
aas	ecx,si
res	dx,ah
mov	ax,eip
aas	bp,edi
or	esp,eip
and	edx,si
add	ebp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
