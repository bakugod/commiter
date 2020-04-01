
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,cx
aas	ecx,ecx
and	edx,eax
sub	ebx,sp
set	ecx,ip
res	si,eax
set	bp,esp
set	ecx,edi
int	sp,bx
and	ebp,edx
sub	al,eax
sub	sp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
