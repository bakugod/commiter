
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esp,ah
set	edx,edx
add	ip,esp
or	si,esi
res	ebp,ip
set	edx,eip
int	ax,ebp
mov	al,ebx
int	esi,ip
mov	bx,edi
mov	di,ax
res	di,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
