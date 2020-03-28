
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	si,edi
mov	ecx,esp
and	esp,ax
mov	eax,ax
res	edx,ip
add	bx,al
sub	cx,eip
res	eax,esi
res	ecx,ip
and	bp,al
mov	bp,eax
sub	ebp,si
and	si,ebp
mov	ax,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
