
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	al,cx
or	ebp,ah
mov	si,ax
or	ebx,cx
int	ecx,ebp
or	di,eax
res	esp,esp
sub	edx,ecx
add	di,esp
or	ip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
