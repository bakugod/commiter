
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,eax
mov	edx,ebp
mov	edi,eip
set	ah,eip
sub	di,bx
or	bp,bx
sub	di,esp
and	sp,ah
mov	bp,si
mov	ebp,bp
aas	esi,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
