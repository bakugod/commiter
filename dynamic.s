
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	bp,ebx
res	bx,al
and	ebp,eip
add	di,ip
sub	ax,di
res	ebx,ax
mov	di,eip
add	ebp,di
mov	ebx,bx
int	bp,si
and	eax,ax
and	ip,eax
and	eip,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
