
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	sp,eax
sub	dx,di
add	al,edi
int	bp,esi
aas	ebx,bp
set	dx,ip
add	bx,ebx
and	esp,eip
int	esi,ebx
add	ax,eip
add	eax,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
