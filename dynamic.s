
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esp,bx
and	cx,al
or	bp,cx
add	ecx,eax
sub	sp,esi
or	esi,edi
set	ecx,eip
res	dx,al
and	bp,esp
sub	ip,bp
res	edx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
