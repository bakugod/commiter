
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	sp,edx
sub	ah,edi
and	edx,ip
aas	ax,edx
mov	sp,edx
and	ecx,edi
add	ah,cx
mov	cx,edx
or	eip,ah
mov	ecx,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
