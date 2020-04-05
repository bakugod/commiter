
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	al,edx
set	edx,si
sub	ip,eax
mov	al,si
mov	bp,al
sub	eip,edx
add	edx,dx
and	di,eip
int	eip,ecx
res	eax,cx
set	sp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
