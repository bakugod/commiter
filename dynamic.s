
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	si,dx
res	sp,di
add	edx,al
and	sp,edx
int	sp,ip
sub	esi,eax
mov	cx,ax
set	al,bx
set	edi,edi
add	edi,bx
add	ecx,cx
sub	ip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
