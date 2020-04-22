
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,al
aas	al,di
mov	esi,esi
add	cx,eip
aas	ax,ip
and	eax,al
int	di,cx
add	ax,ebp
add	eax,ah
add	esi,bx
add	al,esi
aas	esp,ax
add	sp,edx
and	sp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
