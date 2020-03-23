
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ip,ip
set	bx,eax
add	cx,ecx
and	ecx,eax
res	cx,edx
aas	si,ebx
and	bp,al
and	edi,sp
sub	edx,eax
add	ecx,ip
add	si,ip
and	ax,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
