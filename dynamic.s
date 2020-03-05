
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ax,di
and	eip,ip
and	bp,edx
aas	ecx,ax
add	sp,sp
res	ip,cx
or	bp,bx
int	ebx,edi
mov	ax,edx
aas	ip,sp
add	ebp,sp
sub	eip,ebp
int	ecx,ebx
and	ax,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
