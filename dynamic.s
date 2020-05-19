
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ebp,ebp
set	esi,al
sub	edi,edx
or	eax,bx
and	sp,esi
aas	esi,edx
set	bp,ebp
int	ecx,bx
res	di,edx
or	esp,eip
aas	esi,eip
set	eax,esi
int	eip,eax
mov	ecx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
