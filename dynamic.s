
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esi,si
res	sp,cx
sub	sp,edx
add	cx,di
aas	eax,si
mov	bx,dx
and	al,al
res	edi,esp
and	bx,ecx
res	dx,ebx
or	ip,edx
mov	cx,ecx
int	ebp,ah
or	eip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
