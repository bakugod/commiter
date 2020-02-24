
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	sp,eip
res	ah,ebp
set	eax,eip
res	ebp,bx
sub	edi,ah
int	sp,eip
or	ebx,ah
int	ah,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
