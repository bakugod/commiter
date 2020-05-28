
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,esi
set	ecx,bx
res	eax,eip
sub	ip,ebp
res	edx,dx
aas	ecx,al
int	ip,edi
sub	sp,ecx
and	al,ebx
add	ax,ip
sub	ip,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
