
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eax,ebx
mov	ah,esp
sub	ecx,bp
set	eax,al
or	eip,cx
sub	eax,dx
sub	edi,ah
set	ebp,cx
sub	ebp,eax
set	eax,ip
or	sp,esp
res	ebp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
