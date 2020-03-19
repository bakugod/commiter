
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	esp,si
aas	ax,ecx
aas	dx,dx
sub	si,eip
and	si,bp
mov	esi,edx
int	sp,al
set	ebx,ecx
res	bp,esp
and	di,ax
mov	eip,bx
set	dx,esi
int	ax,ebp
mov	ebp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
