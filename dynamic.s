
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edi,ebx
aas	sp,dx
int	ecx,sp
sub	sp,dx
mov	ax,di
or	ebp,bp
or	eip,cx
set	bx,ecx
aas	dx,di
set	eip,eax
res	bp,edx
sub	eax,al
sub	ip,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
