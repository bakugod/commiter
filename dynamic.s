
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebp,edx
set	dx,al
and	edi,esi
sub	sp,si
int	ax,ip
aas	edi,sp
and	esi,si
or	bp,ebp
aas	ax,cx
aas	ecx,edi
int	sp,edi
add	esi,ip
aas	edi,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
