
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,edx
sub	ax,di
int	ah,sp
and	edx,eip
sub	al,ip
add	sp,ecx
aas	ebx,edi
sub	sp,al
add	ax,edx
or	bp,ebp
or	bp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
