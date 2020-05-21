
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,ah
set	sp,eip
sub	di,eip
int	ebp,esp
sub	edi,al
and	edx,eip
sub	ebx,ebp
mov	eip,ebx
res	ax,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
