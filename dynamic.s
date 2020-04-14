
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,bx
sub	sp,sp
or	edi,ebx
sub	eip,eip
mov	ebx,ebx
mov	bx,ip
and	ebp,bx
set	edx,al
int	ecx,sp
mov	ecx,ecx
res	edi,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
