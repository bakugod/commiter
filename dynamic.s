
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,al
res	sp,bx
sub	edx,ebx
aas	cx,dx
set	ip,edi
or	sp,ax
and	ax,di
aas	ax,cx
sub	ecx,ecx
sub	eip,cx
res	eip,edx
or	di,edi
add	eax,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
