
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	di,si
set	edi,sp
mov	bx,di
set	bx,ip
and	bp,eip
aas	eax,dx
or	di,di
mov	eax,ebx
int	sp,di
and	ecx,bp
sub	dx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
