
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ip,edi
and	eax,di
mov	ax,eip
add	cx,edx
and	ecx,al
res	eax,sp
aas	sp,ip
set	esi,sp
mov	ax,al
sub	dx,ah
or	ecx,edx
and	ax,di
mov	di,ax
and	esi,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
