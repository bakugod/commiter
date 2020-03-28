
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ax,esp
set	sp,ip
and	bx,bx
sub	ax,eax
aas	edx,esp
int	si,sp
add	di,esi
sub	ax,al
and	sp,eip
and	sp,edi
int	bx,edx
aas	esp,esp
int	esp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
