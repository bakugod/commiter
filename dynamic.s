
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	si,ebx
int	al,ebp
sub	di,ax
and	cx,al
add	eax,esi
res	esp,eax
sub	esp,ah
mov	ebx,ebp
and	ip,esi
res	eip,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
