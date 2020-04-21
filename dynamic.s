
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	sp,edi
and	dx,ax
int	eip,ecx
res	eip,cx
aas	si,esi
sub	eip,si
sub	dx,esi
res	cx,ecx
int	di,ebp
add	ip,cx
and	ip,cx
int	edi,sp
or	esi,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
