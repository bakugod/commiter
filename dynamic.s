
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eax,al
mov	eax,ah
set	edi,edx
int	ax,edx
add	sp,esp
res	bx,di
aas	esp,ax
res	ebx,bx
mov	al,sp
add	ebx,ip
res	bp,dx
and	esp,eax
set	eip,ax
res	ip,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
