
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edi,ebp
add	edx,ip
add	ip,ebx
or	sp,ebp
sub	ebx,ebp
aas	cx,sp
or	ax,esi
and	esp,ah
res	ecx,di
res	si,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
