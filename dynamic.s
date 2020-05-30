
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,esi
mov	ebx,dx
and	esi,edx
or	di,bx
set	dx,ebp
aas	ebx,ecx
sub	ebp,ip
mov	bp,ip
mov	al,di
or	edx,edx
and	al,esi
aas	esp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
