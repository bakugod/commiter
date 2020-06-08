
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,ebp
and	edx,ecx
mov	eip,al
aas	cx,eip
and	ebx,edx
sub	ecx,cx
or	esi,eax
set	eax,ip
add	si,esi
or	al,ebx
or	eax,esi
int	bx,esi
int	di,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
