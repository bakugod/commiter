
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esi,ebp
set	ecx,edx
res	ebx,dx
aas	bp,esi
mov	si,ebx
or	ecx,ah
int	sp,al
mov	esp,si
set	ax,bx
add	ax,ip
mov	bp,ebp
sub	si,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
