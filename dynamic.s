
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eax,si
int	ecx,edx
aas	sp,ah
int	ah,ah
set	edx,ebx
sub	eip,cx
or	di,edx
sub	di,esp
add	al,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
